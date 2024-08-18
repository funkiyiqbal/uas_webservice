<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\MahasiswaModel;

use App\Helpers\ApiFormatter;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

use Tymon\JWTAuth\Facades\JWTAuth;
use Carbon\Carbon;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        try {
            $params = $request->all();

            $validator = Validator::make($params, 
                [
                    'nim'       => 'required|integer|digits:10',
                    'password'  => 'required|min:6',
                ],
                [
                    'nim.required'      => 'NIM is required',
                    'nim.integer'       => 'NIM must be an integer',
                    'nim.digits'        => 'NIM must be exactly :digits characters',
                    'password.required' => 'Password is required',
                    'password.min'      => 'Password must be at least :min characters',
                ]
            );

            if ($validator->fails())
                return response()->json(ApiFormatter::createJson(400, 'Bad Request', $validator->errors()->all()), 400);

            $akun = MahasiswaModel::where('mahasiswa_nim', $params['nim'])->first();
            if (!$akun)
                return response()->json(ApiFormatter::createJson(404, 'Account not found'), 404);

            if (!Hash::check($params['password'], $akun->mahasiswa_password))
                return response()->json(ApiFormatter::createJson(401, 'Password does not match'), 401);

            if (!$token = JWTAuth::fromUser($akun))
                return response()->json(ApiFormatter::createJson(500, 'Failed to generate token'), 500);

            $currentDateTime = Carbon::now();
            $expirationDateTime = $currentDateTime->addSeconds(auth()->guard('api')->factory()->getTTL() * 60);

            $info = [
                'type'      => 'Bearer',
                'token'     => $token,
                'expires'   => $expirationDateTime->format('Y-m-d H:i:s')
            ];

            return response()->json(ApiFormatter::createJson(200, 'Login successful', $info), 200);
        } catch (Exception $e) {
            return response()->json(ApiFormatter::createJson(500, 'Internal Server Error', $e->getMessage()), 500);
        }
    }

    public function me()
    {
        $user       = JWTAuth::parseToken()->authenticate();
        $token      = JWTAuth::getToken();
        $payload    = JWTAuth::getPayload($token);

        $expiration         = $payload->get('exp');
        $expiration_time    = date('Y-m-d H:i:s', $expiration);

        $data['nim']    = $user['mahasiswa_nim'];
        $data['nama']   = $user['mahasiswa_nama'];
        $data['exp']    = $expiration_time;

        return response()->json(ApiFormatter::createJson(200, 'Owalah malah Login', $data), 200);
    }

    public function refresh()
    {
        $currentDateTime = Carbon::now();
        $expirationDateTime = $currentDateTime->addSeconds(auth()->guard('api')->factory()->getTTL() * 60);

        $info = [
            'type'      => 'Bearer',
            'token'     => auth()->guard('api')->refresh(),
            'expires'   => $expirationDateTime->format('Y-m-d H:i:s')
        ];

        return response()->json(ApiFormatter::createJson(200, 'Successfully refreshed', $info), 200);
    }

    public function logout()
    {
        auth()->guard('api')->logout();
        return response()->json(ApiFormatter::createJson(200, 'Successfully logged out'), 200);
    }
}
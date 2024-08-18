<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

use App\Models\LogModel;

class Log
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        LogModel::create([
            'log_level' => 'info',
            'log_message' => 'Request URL: ' . $request->fullUrl() . ', Method: ' . $request->method() . ', IP: ' . $request->ip()
        ]);

        return $next($request);
    }
}
<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;

use Tymon\JWTAuth\Contracts\JWTSubject;
use Illuminate\Support\Facades\Hash;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class MahasiswaModel extends Authenticatable implements JWTSubject
{
    use HasFactory;
    use SoftDeletes;
    
    protected $table        = 'mahasiswa';
    protected $primaryKey   = 'mahasiswa_id';

    protected $fillable     = [
        'mahasiswa_nim',
        'mahasiswa_nama',
        'mahasiswa_password',
    ];

    protected $hidden       = [
        'mahasiswa_password',
        'created_at',
        'updated_at',
        'deleted_at'
    ];

    protected function serializeDate($date)
    {
        return $date->format('Y-m-d H:i:s');
    }

    public function setMahasiswaPasswordAttribute($value)
    {
        $this->attributes['mahasiswa_password'] = Hash::make($value);
    }

    public function getAuthPassword()
    {
        return $this->mahasiswa_password;
    }

    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    public function getJWTCustomClaims()
    {
        return [];
    }
}

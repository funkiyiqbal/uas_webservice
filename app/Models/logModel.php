<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class LogModel extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $table        = 'log';
    protected $primaryKey   = 'log_id';

    protected $fillable     = [
        'log_level',
        'log_message',
    ];

    protected $hidden       = [
        'created_at',
        'updated_at',
        'deleted_at'
    ];

    protected function serializeDate($date)
    {
        return $date->format('Y-m-d H:i:s');
    }
}
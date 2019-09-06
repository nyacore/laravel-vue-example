<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TokenUser extends Model
{
    protected $fillable = [
        'login',
        'password',
    ];
}

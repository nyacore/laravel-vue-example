<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\TokenUser;

class UserController extends Controller
{
    public function get($login) {
        return TokenUser::where('login', $login)->get(); 
    }
}

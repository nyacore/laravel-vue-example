<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;

use App\TokenUser;

class AuthController extends Controller
{
    public function index(Request $request) {
        $login = $request->post('login');
        $password = $request->post('password');

        $token_user = TokenUser::where('login', $login)->first();
        
        if (isset($token_user))  {
            if (!strcmp($token_user->password, $password)) {
                $token = Str::random(60);
    
                $token_user->current_token = $token;
                $token_user->save();
    
                return response()->json([
                    'status' => true,
                    'token' => $token,
                ], 200);
            }
        }

        return response()->json([
            'message' => 'Invalid username or password',
            'status' => false,
        ], 401);
    }

    public function testAuth() {
        return response()->json([
            'message'  => 'Hello, world!',
        ]);
    }
}

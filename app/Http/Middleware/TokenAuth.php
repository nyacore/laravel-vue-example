<?php

namespace App\Http\Middleware;

use Closure;

use App\TokenUser;

class TokenAuth
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // If there is a user with such token, proceed
        if (TokenUser::where('current_token', $request->bearerToken())->count() != 0) {
            return $next($request);
        } else {
            // Otherwise, throw an error
            return response()->json([
                'status' => false,
                'message' => 'Bad Auth',
            ], 401);
        };

    }
}

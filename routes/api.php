<?php

use Illuminate\Http\Request;

use App\Http\Middleware\TokenAuth;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

// Route::middleware(TokenAuth::class)->get('/auth', function (Request $request) {
//     echo 'Hello, world!';
// });

Route::post('/auth', 'AuthController@index');

// Set route for search for tags
Route::get('posts/tag/{tag}', 'BlogPostController@tag');

// Set REST routes
Route::apiResource('posts', 'BlogPostController');

// Implement authorization for all routes except showing all posts and showing one post
Route::apiResource('posts', 'BlogPostController')->except(['index', 'show'])->middleware(TokenAuth::class);

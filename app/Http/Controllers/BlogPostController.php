<?php

namespace App\Http\Controllers;

use App\BlogPost;
use Illuminate\Http\Request;

class BlogPostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return BlogPost::all();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validate request
        $request->validate([
            'title' => 'required|unique:blog_posts',
            'text' => 'required',
            'image' => 'required|image',
            'tags' => 'nullable',
        ]);

        // Upload image
        $path = $request->image->store('images');

        // Create new post
        $post = new BlogPost();
        $post->title = $request->post('title');
        $post->text = $request->post('text');
        $post->image = $path;
        $post->save();

        return $post;
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return BlogPost::findOrFail($id);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // Validate request
        $request->validate([
            'title' => 'required|unique:blog_posts',
            'text' => 'required',
            'image' => 'required',
            'tags' => 'nullable',
        ]);
        
        // Find post with provided id
        $post = BlogPost::findOrFail($id);

        // Perform post update
        $post->update($request->only(['title', 'text', 'image']));

        return $post;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = BlogPost::findOrFail($id);
        $post->delete();
        return $post;
    }

    public function tag($tag) {
        return BlogPost::where('tags', $tag);
    }
}

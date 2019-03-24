<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Post;
use App\Category;
use App\Tag;
use Session;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.post.index')->with('posts', Post::all());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();
        $tags = Tag::all();
         if($categories->count() == 0 || $tags->count() ==0)
         {
             Session::flash('info','You must have some categories or tags before attempting to create a post ');
             return redirect()->back();
         }
      
        return view('admin.post.create')->with('categories', $categories)
                                        ->with('tags', $tags);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $this->validate($request,[
            'title'       => 'required|max:255',
            'content'     => 'required',
            'featured'    => 'required|image',
            'category_id' => 'required',
            'tags'        => 'required'
        ]);

        $featured           = $request->featured;
        $featured_new_name  = time().$featured->getClientOriginalName();
        $featured->move('uploads/posts', $featured_new_name);

        $post = Post::create([
             'title'        => $request->title,
             'content'      => $request->content,
             'featured'     => 'uploads/posts/' . $featured_new_name,
             'category_id'  => $request->category_id,
             'slug'         => str_slug($request->title),
             'user_id'      => Auth::id()
        ]);

        $post->tags()->attach($request->tags);

        Session::flash('success','You successfully created a Post');
        return redirect()->route('posts');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = Post::find($id);
        return view('admin.post.edit')->with('posts' ,$post)
                                      ->with('categories', Category::all())
                                      ->with('tags', Tag::all());
                                    
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,[
             'title'  => 'required',
             'content'  => 'required',
             'category_id'  => 'required'
        ]);

        $post = Post::Find($id);
        if($request->hasFile('featured')){
            $featured = $request->featured;
            $featured_new_name = time().$featured->getClientOriginalName();
            $featured->move('uploads/posts',$featured_new_name);

            $post->featured = 'uploads/posts/'.$featured_new_name;
            $post->save();
        }

        $post->title = $request->title;
        $post->content = $request->content;
        $post->category_id = $request->category_id;

        $post->save();

        $post->tags()->sync($request->tags);

        Session::flash('success','Your Post updated successfully');
        return redirect()->route('posts');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Post::find($id);

        $post->delete();

        Session::flash('success','This post was just trashed successfully');
        return redirect()->back();

    }

    public function trashed(){
        $posts = Post::onlyTrashed()->get();

        return view('admin.post.trashed')->with('posts', $posts);
    }

    public function kill($id){
        $posts = Post::withTrashed()->where('id', $id)->first();
        $posts->forceDelete();
        Session::flash('success','Post deleted Successfully');
        return redirect()->back();
    }

    public function restore($id){
        $posts = Post::withTrashed()->where('id', $id)->first();
        $posts->restore();
        Session::flash('success','Post restored successfully');
        return redirect()->route('posts');
    }
}

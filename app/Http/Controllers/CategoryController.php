<?php

namespace App\Http\Controllers;

use Excel;
use Illuminate\Http\Request;
use App\Category;
use Session;
class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.category.index')->with('categories', Category::all());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.category.create');
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
             'name' => 'required|max:255'
        ]);

        $category = new Category();
        $category->name = $request->name;
        $category->save();
        
        Session::flash('success','You created a category successfully');
        return redirect()->route('categories');
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
        $category = Category::find($id);

        return view('admin.category.edit')->with('category',$category);
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
            'name'  => 'required|max:255'
        ]);
        $category = Category::find($id);

        $category->name = $request->name;

        $category->save();
        Session::flash('success','You updated category successfully');
        return redirect()->route('categories');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $category = Category::find($id);

        foreach($category->posts as $post){
            $post->forceDelete();
        }


        $category->delete();

        Session::flash('success','You deleted the category successfully');

        return redirect()->back();
    }

    public function importExcel(Request $request)
    {
 
        $path = $request->file('import_file')->getRealPath();
        $data = Excel::load($path)->get();

 
        if($data->count()){
            foreach ($data as $key => $value) {
                $arr[] = ['name' => $value->name];
            }
 
            if(!empty($arr)){
                Category::insert($arr);
            }
        }

        dd("hello");
 
        return back()->with('success', 'Insert Record successfully.');
    }
}

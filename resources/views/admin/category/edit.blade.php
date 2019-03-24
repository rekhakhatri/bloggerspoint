@extends('layouts.app')
@section('content')
    @include('admin.includes.errors')
     <div class="panel panel-default">
         <div class="panel-heading">
             Edit Post
         </div>
         <div class="panel-body">
            <form action="{{ route('category.update', ['id' => $category->id ]) }}" method="post" enctype="multipart/form-data">
                  {{ csrf_field() }}

                <div class="form-group">
                    <label for="title">Name</label>
                    <input type="text" class="form-control" name="name" value="{{ $category->name }}" id="name">
                </div>  
                <div class="form-group">
                    <button type="submit" class="btn btn-success">Store Category</button>
                </div>
               
            </form>
         </div>
     </div>
@endsection
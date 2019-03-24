@extends('layouts.app')
@section('content')
    @include('admin.includes.errors')
     <div class="panel panel-default">
         <div class="panel-heading">
             Create New Tag
         </div>
         <div class="panel-body">
            <form action="{{ route('tag.store') }}" method="post" enctype="multipart/form-data">
                  {{ csrf_field() }}

                <div class="form-group">
                    <label for="tag">Tag</label>
                    <input type="text" class="form-control" name="tag" id="tag">
                </div>  
                <div class="text-center">
                    <button type="submit" class="btn btn-success">Store Tag</button>
                </div>
               
            </form>
         </div>
     </div>
@endsection
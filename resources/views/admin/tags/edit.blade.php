@extends('layouts.app')
@section('content')
    @include('admin.includes.errors')
     <div class="panel panel-default">
         <div class="panel-heading">
             Edit Tags : {{ $tags->tag }}
         </div>
         <div class="panel-body">
            <form action="{{ route('tag.update', ['id' => $tags->id ]) }}" method="post" enctype="multipart/form-data">
                  {{ csrf_field() }}

                <div class="form-group">
                    <label for="tag">Tag </label>
                    <input type="text" class="form-control" name="tag" value="{{ $tags->tag }}" id="tag">
                </div>  
                <div class="form-group">
                    <button type="submit" class="btn btn-success">Update Tag</button>
                </div>
               
            </form>
         </div>
     </div>
@endsection
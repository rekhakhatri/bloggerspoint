@extends('layouts.app')
@section('content')
    @include('admin.includes.errors')
     <div class="panel panel-default">
         <div class="panel-heading">
             Create Users
         </div>
         <div class="panel-body">
            <form action="{{ route('user.store') }}" method="post" enctype="multipart/form-data">
                  {{ csrf_field() }}

                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" name="name" id="name">
                </div>  
                
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" name="email" id="email">
                </div>  

                <div class="text-center">
                    <button type="submit" class="btn btn-success">Add User</button>
                </div>
               
            </form>
         </div>
     </div>
@endsection
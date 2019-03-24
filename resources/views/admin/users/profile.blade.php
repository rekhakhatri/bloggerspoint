@extends('layouts.app')
@section('content')
    @include('admin.includes.errors')
     <div class="panel panel-default">
         <div class="panel-heading">
             Create Profile
         </div>
         <div class="panel-body">
            <form action="{{ route('user.profile.update') }}" method="post" enctype="multipart/form-data">
                  {{ csrf_field() }}

                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" name="name" value="{{ $user->name }}" id="name">
                </div>  
                
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" name="email" value="{{ $user->email }}" id="email">
                </div>  

                <div class="form-group">
                    <label for="password">New Password</label>
                    <input type="password" class="form-control" name="password" id="password">
                </div>  

                <div class="form-group">
                    <label for="avatar">Upload New Avatar</label>
                    <input type="file" class="form-control" name="avatar" id="avatar">
                </div>  

                <div class="form-group">
                    <label for="facebook">Facebook Profile</label>
                    <input type="text" class="form-control" name="facebook" value="{{ $user->profile->facebook}}" id="facebook">
                </div>  

                <div class="form-group">
                    <label for="youtube">Youtube Profile</label>
                    <input type="text" class="form-control" name="youtube" value="{{ $user->profile->youtube }}" id="youtube">
                </div>  

                <div class="form-group">
                    <label for="about">About You</label>
                    <textarea class="form-control" name="about" id="about" cols="6" rows="6">
                        {{ $user->profile->about }}
                    </textarea>
                </div>


                <div class="text-center">
                    <button type="submit" class="btn btn-success">Update Profile</button>
                </div>
               
            </form>
         </div>
     </div>
@endsection
@extends('layouts.app')
@section('content')
    @include('admin.includes.errors')
     <div class="panel panel-default">
         <div class="panel-heading">
             Edit Blog Settings
         </div>
         <div class="panel-body">
            <form action="{{ route('settings.update') }}" method="post" enctype="multipart/form-data">
                  {{ csrf_field() }}

                <div class="form-group">
                    <label for="site_name">Site Name</label>
                    <input type="text" class="form-control" name="site_name" value="{{ $settings->site_name }}" id="site_name">
                </div>  
 
                <div class="form-group">
                        <label for="about">About Us</label>
                       <textarea name="about" id="about" cols="5" rows="5" class="form-control"> {{ $settings->about }}</textarea>
                </div>

                
                <div class="form-group">
                    <label for="address">Address</label>
                    <input type="text" class="form-control" name="address" value="{{ $settings->address }}" id="address">
                </div> 
                
                <div class="form-group">
                        <label for="street_address">Street Address</label>
                        <input type="text" class="form-control" name="street_address" value="{{ $settings->street_address }}" id="street_address">
                </div> 

                <div class="form-group">
                        <label for="contact_number">Contact Phone</label>
                        <input type="text" class="form-control" name="contact_number" value="{{ $settings->contact_number }}" id="contact_number">
                </div>

                <div class="form-group">
                        <label for="working_hour">Working Hours</label>
                        <input type="text" class="form-control" name="working_hour" value="{{ $settings->working_hour }}" id="working_hour">
                </div>
       
                <div class="form-group">
                        <label for="support">Define Support</label>
                        <input type="text" class="form-control" name="support" value="{{ $settings->support }}" id="support">
                </div>

                <div class="form-group">
                        <label for="contact_email">Contact Email</label>
                        <input type="email" class="form-control" name="contact_email" value="{{ $settings->contact_email }}" id="contact_email">
                </div>  

                <div class="text-center">
                    <button type="submit" class="btn btn-success">Update Site settings</button>
                </div>
               
            </form>
         </div>
     </div>
@endsection

@section('styles')
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote.css" rel="stylesheet">
@endsection

@section('scripts')
 <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote.js"></script>
 <script>
     $(document).ready(function() {
        $('#about').summernote();
     });
 </script>
@endsection
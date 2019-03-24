@extends('layouts.app')

@section('content')
     <div class="panel panel-default">
         <div class="panel-heading">
             Published Category
         </div>
         <div class="panel-body">
                <table class="table table-hover">
                        <thead>
                            <th>
                                   Category Name
                            </th>
                            <th>
                                    Editing
                            </th>
                            <th>
                                   Deleting
                            </th>
                        </thead>
                        <tbody>
                              @if($categories->count() > 0)
                                 @foreach($categories as $category)
                                    <tr>
                                         <td>
                                             {{ $category->name }}
                                         </td>
                                         <td>
                                            <a href="{{ route('category.edit', ['id' => $category->id ])}}" class="btn btn-xs btn-info">Edit</a>
                                         </td>
                                         <td>
                                            <a href="{{ route('category.delete', ['id' => $category->id])}}" class="btn btn-xs btn-danger">Delete</a>
                                         </td>
                                    </tr>
                                 @endforeach
                                 @else
                                      <tr colspan="5" class="text-centre">
                                          <td>No Category available</td>
                                      </tr>
                              @endif
                        </tbody>
                    </table>
         </div>
     </div>
@endsection
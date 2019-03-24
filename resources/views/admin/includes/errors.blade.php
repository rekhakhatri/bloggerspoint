@if(count($errors) > 0)
<ul class="list-group">
    <li class="list-group-item text-danger">
        @foreach($errors->all() as $error)
           {{ $error }}
        @endforeach
    </li>
</ul>
@endif
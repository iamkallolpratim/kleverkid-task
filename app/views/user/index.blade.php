@extends('layouts.user') @section('content')
<div class="row">
	<div class="col-md-12">
		<h1>Hello <?php echo Session::get("name"); ?></h1>
	</div>
</div>
@stop
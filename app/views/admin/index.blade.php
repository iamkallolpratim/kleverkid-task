@extends('layouts.admin') @section('content')
<div class="row">
	<div class="col-md-6 col-sm-6 col-xs-6">
		<h1>User List</h1>
	</div>
</div>
<div class="row user-raw">
	<div class="col-md-12">
		<table class="table table-bordered table-hover">
			<thead>
				<th>#</th>
				<th>Name</th>
				<th>Email</th>
				<th>Mobile No.</th>
				<th>View</th>
			</thead>
			<tbody id="user-list"></tbody>
		</table>
	</div>
</div>
{{HTML::script('packages/script/userlist.js');}}
@stop

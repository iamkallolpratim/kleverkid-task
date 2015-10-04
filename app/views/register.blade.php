<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<!-- css -->
{{HTML::style('packages/css/bootstrap.css')}}
{{HTML::style('packages/css/font-awesome.css')}}
{{HTML::style('packages/css/app.css')}}
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<h2 class="text-muted text-center">Register</h2>
				<div class="jumbotron">

					<div class="alert alert-success" id="success">
						<button type="button" class="close" data-dismiss="alert"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						You are successfully registered!! Please login with your mobile or email and password
					</div>
					{{Form::open(array('class'=>'form','id'=>'register-form'))}}
					<div class="form-group">
						<label>Name</label> <input type="text"
							class="form-control input-lg" name="name" required="required">
					</div>
					<div class="form-group">
						<label>Email</label> <input type="email"
							class="form-control input-lg" name="email" required="required">
					</div>
					<div class="form-group">
						<label>Mobile no</label> <input type="tel"
							class="form-control input-lg" name="mobile" required="required">
					</div>
					<div class="form-group">
						<label>Role</label>
						<select class="form-control input-lg" name="role">
							<option value="admin">Admin</option>
							<option value="user">User</option>
						</select>
					</div>
					<div class="form-group">
						<label>Password</label> <input type="password"
							class="form-control input-lg" id="password"  name="password"
							required="required">
					</div>
					<div class="form-group">
						<label></label>
						<button type="button" id="saveBtn" onclick="registerUser();" class="btn btn-primary btn-lg btn-block">Register</button>
					</div>
					{{Form::close() }}
				</div>
			</div>
		</div>
	</div>


	<!-- script js -->
	{{HTML::script('packages/js/jquery.min.js');}}
	{{HTML::script('packages/js/bootstrap.js');}}
	{{HTML::script('packages/js/bootstrap-show-password.min.js');}}
	{{HTML::script('packages/script/register.js');}}
</body>
</html>
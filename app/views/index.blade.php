<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Kleverkid tASK</title>
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
		<div class="col-md-12 ">
			<h1 class="text-center">Login Panel</h1>
			
		</div>
	</div>
	<div class="row login-row">
		<div class="col-md-4 col-md-offset-4">
			<div class="jumbotron">
				{{ Form::open(array('url'=>'users/login', 'class'=>'form'))}}
					<div class="form-group">
						<input type="text" class="form-control input-lg"  name="username" placeholder="email or mobile" required>
					</div>
					<div class="form-group">
						<input type="password" class="form-control input-lg"  name="password" placeholder="password" required>
					</div>
					<div class="form-group">
						<button class="btn btn-primary btn-block btn-lg" type="submit">Login</button>
					</div>
				{{ Form::close() }}
				<h5 class="reg-text text-center">New Here? <a href="register">Create an account</a></h5>
			</div>
		</div>
	</div>
</div>	


<!-- script js -->
{{HTML::script('packages/js/jquery.min.js');}}
{{HTML::script('packages/js/bootstrap.js');}}
</body>
</html>
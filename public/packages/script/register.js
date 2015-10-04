$('#password').password();

function registerUser(){
	var formData = $('form#register-form').serializeArray(); 
	$('#saveBtn').attr('disabled', true).html('PLEASE WAIT..');
	$.ajax({
		url : '/users/register',
		type : 'POST',
		dataType : 'JSON',
		data : formData,
		success : function(data) {
			$('#saveBtn').attr('disabled', false).html('Register');
			if(data!=0){
				$('form#register-form').each(function() {
					this.reset();
				});
			
				$('#success').show();
			}
			else{
				alert('something went wrong!!');
			}
		}
	});
}
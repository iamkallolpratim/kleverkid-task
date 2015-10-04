window.onload = function(){
	allContacts();
}

function saveContact(){
	var formData = $('form#contact-form').serializeArray(); 
	$('#saveBtn').attr('disabled', true).html('PLEASE WAIT..');
	
	$.ajax({
		url : '/contact/save',
		type : 'POST',
		dataType : 'JSON',
		data : formData,
		success : function(data) {
			$('#saveBtn').attr('disabled', false).html('Save');
			if(data!=0){
				$('form#contact-form').each(function() {
					this.reset();
				});
			
				alert('contact saved');
			}
			else{
				alert('something went wrong!!');
			}
		}
	
	});
}

function allContacts(){
	$.ajax({
		url : '/contact/allcontacts',
		type : 'GET',
		datatype : 'JSON',
		success : function(data) {
			$('#contact-list').empty();
			
			if(data.length != 0){
				
				for(var i in data){
					var userRow = '<tr>'
								+'<td class="id hidden">'+data[i].id+'</td>'
								+'<td class="id name">'+data[i].name+'</td>'
								+'<td class="id email">'+data[i].email+'</td>'
								+'<td class="id mobile">'+data[i].mobile+'</td>'
								+'<td class="id region">'+data[i].region+'</td>'
								+'<td class="id address">'+data[i].address+'</td>'
								+'<td><button class="edit btn btn-info btn-xs pull-left" tile="edit"><i class="fa fa-edit"></i></button><button class="del btn btn-danger btn-xs pull-right" tile="delete"><i class="fa fa-trash"></i></button> </td>'
								+'</tr>';
					
					$('#contact-list').append(userRow);
				}
			}
			else{
				$('#contact-list').html('<tr class="danger"><td colspan="6" style="text-align: center;">No data Found</td></tr>');
			}
		}
	
	});
}
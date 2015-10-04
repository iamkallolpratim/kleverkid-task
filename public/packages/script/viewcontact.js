var user_id, user_name;
var token = $("input[name=_token]").val();

window.onload = function() {
	getUrlVars();
	user_id = getUrlVars()["user_id"];
	user_name = getUrlVars()["name"];
	$('#username,#u_name').append(user_name);
	$('#user_id').val(user_id);
	contactByUser();

}
//get contacts by user
function contactByUser(){
	$('#contact-list').html('<tr><td colspan="6" style="text-align: center;margin-top: 20px;"><h4 class="text-mute">Loading....</h4></i></td></tr>');
	$.ajax({
		url : '/adminservice/contactsbyuser',
		type : 'POST',
		datatype : 'JSON',
		data : {'id':user_id},
		success : function(data) {
			$('#contact-list').empty();
			
			if(data.length != 0){
				for(var i in data){
					var userRow = '<tr>'
								+'<td class="id hidden">'+data[i].id+'</td>'
								+'<td class="name">'+data[i].name+'</td>'
								+'<td class="email">'+data[i].email+'</td>'
								+'<td class="mobile">'+data[i].mobile+'</td>'
								+'<td class="region">'+data[i].region+'</td>'
								+'<td class="address">'+data[i].address+'</td>'
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


//add contact
function saveContact(){
	var formData = $('form#contact-form').serializeArray(); 
	$('#saveBtn').attr('disabled', true).html('PLEASE WAIT..');
	
	$.ajax({
		url : '/adminservice/saveforuser',
		type : 'POST',
		dataType : 'JSON',
		data : formData,
		success : function(data) {
			$('#saveBtn').attr('disabled', false).html('Save');
			if(data!=0){
				$('form#contact-form').each(function() {
					this.reset();
				});
				contactByUser();
				alert('contact saved');
			}
			else{
				alert('something went wrong!!');
			}
		}
	
	});
}

//delete contact
$('#contact-list').on("click", ".del", function(){
	$del = $(this);
	var id = $del.closest("tr").find(".id").text();
	deleteContact($del, id);
});
function deleteContact($del,id){
	$.ajax({
		url : '/contact/delete',
		type : 'POST',
		dataType : 'JSON',
		data : {'id' : id,'_token':token},
		success : function(data) {
			$del.closest("tr").remove();
			alert('contact removed');
		}
	});
}

//edit data
$('#contact-list').on("click", ".edit", function(){
	$edit = $(this);
	var id = $edit.closest("tr").find(".id").text();
	var name = $edit.closest("tr").find(".name").text();
	var email = $edit.closest("tr").find(".email").text();
	var mobile = $edit.closest("tr").find(".mobile").text();
	var region = $edit.closest("tr").find(".region").text();
	var address = $edit.closest("tr").find(".address").text();
	
	$('#editID').val(id);
	$('#name').val(name);
	$('#email').val(email);
	$('#mobile').val(mobile);
	$('#address').val(address);
	$('#region').val(region);
	$('#saveBtn').hide();
	$('#canBtn, #upBtn').show();
});

function updateData(){
	var formData = $('form#contact-form').serializeArray(); 
	$('#upBtn').attr('disabled', true).html('Updating...');
	
	$.ajax({
		url : '/contact/update',
		type : 'POST',
		dataType : 'JSON',
		data : formData,
		success : function(data) {
			$('#upBtn').attr('disabled', false).html('Update');
				$('form#contact-form').each(function() {
					this.reset();
				});
				contactByUser();
				alert('contact updated');
				$('#saveBtn').show();
				$('#canBtn, #upBtn').hide();
				
		}
	
	});
}

//cancel
function cancel(){
	$('form#contact-form').each(function() {
		this.reset();
	});
	$('#saveBtn').show();
	$('#canBtn, #upBtn').hide();
	
}

// read data from url
function getUrlVars() {
	var url = window.location.href, vars = {};
	url.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(m, key, value) {
		key = decodeURIComponent(key);
		value = decodeURIComponent(value);
		vars[key] = value;
	});
	return vars;
}


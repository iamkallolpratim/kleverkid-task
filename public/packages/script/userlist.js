window.onload = function(){
	allUser();
}

function allUser(){
	$.ajax({
		url : '/adminservice/alluser',
		type : 'GET',
		datatype : 'JSON',
		success : function(data) {
			$('#user-list').empty();
			var count = 0;
			
			if(data.length != 0){
				for(var i in data){
					count = count+1;
					
					var userRow = '<tr>'
								+'<td class="id hidden">'+data[i].id+'</td>'
								+'<td class="count">'+count+'</td>'
								+'<td class="id name">'+data[i].name+'</td>'
								+'<td class="id email">'+data[i].email+'</td>'
								+'<td class="id mobile">'+data[i].mobile+'</td>'
								+'<td><a class="edit btn btn-info   btn-xs" target="_blank" href="admin/view?user_id='+data[i].id+'&name='+data[i].name+'"><i class="fa fa-eye"></i> view contacts</button></td>'
								+'</tr>';
					
					$('#user-list').append(userRow);
				}
			}
			else{
				$('#user-list').html('<tr class="danger"><td colspan="6" style="text-align: center;">No data Found</td></tr>');
			}
		}
	
	});

}
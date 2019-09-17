$('#contents').summernote({
	height : 600,
	callbacks:{
		onImageUpload: function(files){
			var formData = new FormData();
			formData.append('file', files[0]);
			$.ajax({
				type:"POST",
				url:"../ajax/summerFileUpload",
				data:formData,
				enctype:"multipart/form-data",
				cache:false,
				contentType:false,
				processData:false,
				success:function(data){
					$('#contents').summernote('editor.insertImage', data);
				}
			});
		},
		//OnImageUpload End
		onMediaDelete:function(files){
			var fileName = $(files[0]).attr('src');
			$.ajax({
				type:"POST",
				url:"../ajax/summerFileDelete",
				data:{fileName:fileName},
				success:function(data){
				}
			});
		}
	}
});

$('.write').click(function() {
	var c = true;
	$('.check').each(function() {
		if($(this).val()==''){
			c = false;
		}
	});
	
	if(c){
		$('#frm').submit();
	}else{
		alert('내용을 모두 채워주세요.');
	}
});
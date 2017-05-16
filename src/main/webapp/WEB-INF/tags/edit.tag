<%@tag description="Tag Edit" pageEncoding="UTF-8"%>
<%@tag import="java.sql.ResultSet"%>
<html>
<body>
	<script src="ckeditor/ckeditor.js"></script>
	<td>
		<form action="" method="post">
			<!-- (2): textarea sẽ được thay thế bởi CKEditor -->
			<textarea id="editor1" name="editor1" cols="80" rows="10">
			
       		</textarea>
			<!-- (3): Code Javascript thay thế textarea có id='editor1' bởi CKEditor -->
			<script>
				CKEDITOR.replace('editor1');
				var editor = CKEDITOR.instances['editor1']
				editor.setData('${noidung}');
				function myFunction(){
					var noidung = editor.document.getBody().getText();
					$.ajax({
		        	    type : "POST",
		        	    url : "/save",
		        	    data : {
		        	        noidung:noidung
		        	    },
		        	    success : function(response){
		        	    	window.alert(response);
		        	    }
		        	});
				}
			</script>
			
			<button style="height: 50px; width: 100px;" onclick="myFunction()">Submit</button>
		</form>
	<td>
</body>
</html>
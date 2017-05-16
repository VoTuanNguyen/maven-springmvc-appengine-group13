<%@tag description="Tag Edit" pageEncoding="UTF-8"%>
<%@tag import="java.sql.ResultSet"%>
<html>
<body>
	<td>
		<form action="" method="post">
			<!-- (2): textarea sẽ được thay thế bởi CKEditor -->
			<textarea id="editor1" name="editor1" cols="80" rows="10">
			
       		</textarea>
	       <button id = "1" name = "1" onclick = "myFunction()" style="height: 50px; width: 100px;">Submit</button>
			<!-- (3): Code Javascript thay thế textarea có id='editor1' bởi CKEditor -->
			<script>
				CKEDITOR.replace('editor1');
				var editor = CKEDITOR.instances['editor1'];
				if('${noidung}' === ''){
				}else
					editor.setData('${noidung}');
				function myFunction() {
		       		var editor = CKEDITOR.instances['editor1'];
		       	 	var noidung = editor.document.getBody().getText();
		       	 	console.log(noidung);
		          $.ajax({
		        	    type : "POST",
		        	    url : "save",
		        	    data : {
		        	        noidung:noidung
		        	    },
		        	    success : function(response){
		        	    	window.alert(response);
		        	    	window.location.href("ckeditor")
		        	    }
					});
				}
			</script>
		</form>
	</td>
</body>
</html>
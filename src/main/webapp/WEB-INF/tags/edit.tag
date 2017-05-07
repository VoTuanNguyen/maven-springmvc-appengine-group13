<%@tag description="Tag Edit" pageEncoding="UTF-8"%>
<%@tag import="java.sql.ResultSet"%>
<%@tag import="com.hellokoding.springboot.WebApplication"%>
<html>
<body>
	<script src="ckeditor/ckeditor.js"></script>
	<td>
		<form action="" method="post">
			<!-- (2): textarea sẽ được thay thế bởi CKEditor -->
			<textarea id="editor1" name="editor1" cols="80" rows="10">
			<%
			ResultSet rs = null;
	    	WebApplication DB = new WebApplication();
			String strSQL = "select * from edit";
			try {
				 rs = DB.openConnect().createStatement().executeQuery(strSQL);
				while (rs.next()) {
					%>
						<p><%=rs.getString("id")%> - <strong><%=rs.getString("ten")%></strong></p>
					<%
				}
			} catch (Exception e) {
				throw new Exception(e.getMessage() + " Error at : " + strSQL);
			}
			%> 
			<p>${id1} - <strong>${ten1}</strong></p>
			<p>${id2} - <strong>${ten2}</strong></p>
			<p>${id3} - <strong>${ten3}</strong></p>
       		</textarea>
			<!-- (3): Code Javascript thay thế textarea có id='editor1' bởi CKEditor -->
			<script>
				CKEDITOR.replace('editor1');
			</script>
		</form>
	<td>
</body>
</html>
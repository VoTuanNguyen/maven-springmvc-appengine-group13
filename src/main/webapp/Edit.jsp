<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<html>
<head>
	<t:head></t:head>
</head>
<body class="body" onload="popunder();">
		<t:beforehead></t:beforehead>
		<div class="gray">
			<div class="wrapper">
				<table cellspacing="0" cellpadding="0" border="0"
					style="border-collapse: collapse;">
					<tbody>
						<t:genericpage>
							<jsp:attribute name="header">
      							<t:header></t:header>
    						</jsp:attribute>
							<jsp:attribute name="footer">
      							<t:footer></t:footer>
    						</jsp:attribute>
							<jsp:body>
        						<t:edit></t:edit>
    						</jsp:body>
						</t:genericpage>
					</tbody>
				</table>
			</div>
		</div>
	</form>
</body>
</html>
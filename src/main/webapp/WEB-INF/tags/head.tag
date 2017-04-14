<%@tag description="Head Tag" pageEncoding="UTF-8"%>
<html>
<body>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>WELCOME TO ICSSE 2017</title>
	<link href="./css/show_img.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="./js/jquery-1.7.2.min.js"></script>
	<script src="./js/Common.js" type="text/javascript"></script>
	<script src="./js/PagingContent.js" type="text/javascript"></script>
	<link rel="shortcut icon" type="image/png"
		href="http://icsse2017.hcmute.edu.vn/Resources/Imagephoto/logo.png">
	<link href="./css/lightbox.css" rel="stylesheet" type="text/css">
	<script src="./js/lightbox.min.js" type="text/javascript"></script>
	<link href="./css/search_Article.css" rel="stylesheet">
	<script language="javascript" type="text/javascript">
		function SearchProcess(event) {
			if (event.keyCode == 13) {
				OnSearch(document.getElementById('txtSearchArticle').value);
				return false;
			}
			return true;
		}
		function OnSearch(query) {
			PSCPortal.Services.CMS.SearchAndPaging(query, currentPage,
					OnSearchSuccess, OnSearchFailed);
		}

		function OnSearchSuccess(results, context, methodName) {
			var position = results.indexOf('_');
			totalRecords = results.substring(0, position);
			LoadContentAndPaging(results);
		}
		function OnSearchFailed(results, context, methodName) {
		}

		function retitleUrl(str) {
			str = str.replace(/^\s+|\s+$/g, ''); // trim
			str = str.toLowerCase();
			// remove accents, swap Ã± for n, etc
			var from = "Ã Ã¡áº£Ã£áº¡Äáº±áº¯áº³áºµáº·Ã¢áº§áº¥áº©áº«áº­ÄÃ¨Ã©áº»áº½áº¹Ãªá»áº¿á»á»á»Ã¬Ã­á»Ä©á»Ã²Ã³á»Ãµá»Ã´á»á»á»á»á»Æ¡á»á»á»á»¡á»£Ã¹Ãºá»§Å©á»¥Æ°á»«á»©á»­á»¯á»±á»³Ã½á»·á»¹á»µÂ·/_,:;";
			var to = "aaaaaaaaaaaaaaaaadeeeeeeeeeeeiiiiiooooooooooooooooouuuuuuuuuuuyyyyy------";
			for (var i = 0, l = from.length; i < l; i++) {
				str = str
						.replace(new RegExp(from.charAt(i), 'g'), to.charAt(i));
			}
			str = str.replace(/[^a-z0-9 -]/g, '') // remove invalid chars
			.replace(/\s+/g, '-') // collapse whitespace and replace by -
			.replace(/-+/g, '-'); // collapse dashes
			return str;
		};

		function popunder() {
			$('a')
					.not(
							'[href^="http"],[href^="https"],[href^="mailto:"],[href^="#"]')
					.each(
							function() {
								$(this)
										.attr(
												'href',
												function(index, value) {
													if (value != undefined) {
														var index = value
																.indexOf("Default.aspx");
														if (index >= 0)
															return value = "/"
																	+ value
																			.substring(
																					index,
																					value.length);
													}
												});
							});
			var articleId = '' != '' ? '' : '';
			var topicId = '' != '' ? '' : '';
			var moduleId = '' != '' ? '' : '';
			if (articleId != '') {
				if (window.history.state == null) {
					if (articleId.indexOf("/") > -1)
						articleId = articleId.substr(0, articleId.indexOf("/"));
					window.history.replaceState({
						ArticleId : articleId
					}, "ArticleId", "/ArticleId/" + articleId + "/"
							+ retitleUrl(''));
				}
			}
			if (topicId != '') {
				if (window.history.state == null) {
					if (topicId.indexOf("/") > -1)
						topicId = topicId.substr(0, topicId.indexOf("/"));
					window.history.replaceState({
						TopicId : topicId
					}, "TopicId", "/TopicId/" + topicId + "/" + retitleUrl(''));
				}
			}

		}
	</script>
	<link href="./css/WebResource.axd.css" type="text/css" rel="stylesheet"
		class="Telerik_stylesheet">
	<link href="./css/WebResource.axd(1).css" type="text/css"
		rel="stylesheet" class="Telerik_stylesheet">
	<link href="./css/WebResource.axd(2).css" type="text/css"
		rel="stylesheet" class="Telerik_stylesheet">
</body>
</html>

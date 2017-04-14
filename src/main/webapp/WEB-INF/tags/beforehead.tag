<%@tag description="Before Tag" pageEncoding="UTF-8"%>
<html>
<body>
	<div>
		<input type="hidden" name="RadScriptManager1_TSM"
			id="RadScriptManager1_TSM"
			value=";;System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35:vi-VN:509f92a1-e5fd-464f-a450-13846a6c973b:ea597d4b:b25378d2;Telerik.Web.UI, Version=2011.1.315.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4:vi-VN:e4ca4719-c559-4761-8501-9be20bbda1fe:16e4e7cd:874f8ea2:f7645509:24ee1bba:f46195d3:19620875:490a9d4e:bd8f85e4:e330518b:1e771326:c8618e41">
		<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="">
		<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT"
			value=""> <input type="hidden" name="__VIEWSTATE"
			id="__VIEWSTATE"
			value="/wEPaA8FDzhkNDcyYzNiYTI5ODcxNxgBBR5fX0NvbnRyb2xzUmVxdWlyZVBvc3RCYWNrS2V5X18WAgURUmFkV2luZG93TWFuYWdlcjEFOmN0bDA2JHBvcnRsZXRfODAwODg2YTgtY2NiNS00MGRkLTgxM2EtMmMwMmFjMGQyZTkyJFJhZE1lbnUp5CG+B8cG4JdluIxopWVtT01E9w==">
	</div>
	<script type="text/javascript">
			var theForm = document.forms['form1'];
			if (!theForm) {
			    theForm = document.form1;
			}
			function __doPostBack(eventTarget, eventArgument) {
			    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
			        theForm.__EVENTTARGET.value = eventTarget;
			        theForm.__EVENTARGUMENT.value = eventArgument;
			        theForm.submit();
			    }
			}
		</script>
	<script src="./js/WebResource.axd(3).js" type="text/javascript"></script>
	<script src="./js/Telerik.Web.UI.WebResource.axd.js"
		type="text/javascript"></script>
	<script type="text/javascript">
			if (typeof(Sys) === 'undefined') throw new Error('ASP.NET Ajax client-side framework failed to load.');
		</script>
	<script src="./js/jsdebug.js" type="text/javascript"></script>
	<script src="./js/jsdebug(1).js" type="text/javascript"></script>
	<script src="./js/jsdebug(2).js" type="text/javascript"></script>
	<script src="./js/jsdebug(3).js" type="text/javascript"></script>
	<div>
		<input type="hidden" name="__VIEWSTATEGENERATOR"
			id="__VIEWSTATEGENERATOR" value="CA0B0334">
	</div>
	<div id="RadWindowManager1" style="display: none;">
		<!-- 2011.1.315.35 -->
		<div id="RadWindowManager1_alerttemplate" style="display: none;">
			<div class="rwDialogPopup radalert">
				<div class="rwDialogText">{1}</div>
				<div>
					<a onclick="$find(&#39;{0}&#39;).close(true);"
						class="rwPopupButton" href="javascript:void(0);"> <span
						class="rwOuterSpan"> <span class="rwInnerSpan">##LOC[OK]##</span>
					</span>
					</a>
				</div>
			</div>
		</div>
		<div id="RadWindowManager1_prompttemplate" style="display: none;">
			<div class="rwDialogPopup radprompt">
				<div class="rwDialogText">{1}</div>
				<div>
					<script type="text/javascript">
				    function RadWindowprompt_detectenter(id, ev, input)
				    {							
					    if (!ev) ev = window.event;                
					    if (ev.keyCode == 13)
					    {															        
					        var but = input.parentNode.parentNode.getElementsByTagName("A")[0];					        
					        if (but)
						    {							
							    if (but.click) but.click();
							    else if (but.onclick)
							    {
							        but.focus(); var click = but.onclick; but.onclick = null; if (click) click.call(but);							 
							    }
						    }
					       return false;
					    } 
					    else return true;
				    }	 
				    </script>
					<input title="Eneter Value"
						onkeydown="return RadWindowprompt_detectenter(&#39;{0}&#39;, event, this);"
						type="text" class="rwDialogInput" value="{2}">
				</div>
				<div>
					<a
						onclick="$find(&#39;{0}&#39;).close(this.parentNode.parentNode.getElementsByTagName(&#39;input&#39;)[0].value);"
						class="rwPopupButton" href="javascript:void(0);"><span
						class="rwOuterSpan"><span class="rwInnerSpan">##LOC[OK]##</span></span></a>
					<a onclick="$find(&#39;{0}&#39;).close(null);"
						class="rwPopupButton" href="javascript:void(0);"><span
						class="rwOuterSpan"><span class="rwInnerSpan">##LOC[Cancel]##</span></span></a>
				</div>
			</div>
		</div>
		<div id="RadWindowManager1_confirmtemplate" style="display: none;">
			<div class="rwDialogPopup radconfirm">
				<div class="rwDialogText">{1}</div>
				<div>
					<a onclick="$find(&#39;{0}&#39;).close(true);"
						class="rwPopupButton" href="javascript:void(0);"><span
						class="rwOuterSpan"><span class="rwInnerSpan">##LOC[OK]##</span></span></a>
					<a onclick="$find(&#39;{0}&#39;).close(false);"
						class="rwPopupButton" href="javascript:void(0);"><span
						class="rwOuterSpan"><span class="rwInnerSpan">##LOC[Cancel]##</span></span></a>
				</div>
			</div>
		</div>
		<input id="RadWindowManager1_ClientState"
			name="RadWindowManager1_ClientState" type="hidden">
	</div>
	<script type="text/javascript">
Sys.WebForms.PageRequestManager._initialize('RadScriptManager1', 'form1', [], [], [], 90, '');

</script>
	<link href="./css/main.css" rel="stylesheet">
	<link href="./css/mainPortlets.css" rel="stylesheet">
	<script language="javascript" type="text/javascript">
    function SearchProcess(event) {
        if (event.keyCode == 13) {
            OnSearch(document.getElementById('txtSearchArticle').value);
            return false;
        }
        return true;
    }
    function OnSearch(query) {
        PSCPortal.Services.CMS.SearchAndPaging(query, currentPage, OnSearchSuccess, OnSearchFailed);
    }
    function OnSearchSuccess(results, context, methodName) {
        var position = results.indexOf('_');
        totalRecords = results.substring(0, position);
        results = results.substring(position + 1);
        LoadContentAndPaging(results);
    }
    function OnSearchFailed(results, context, methodName) {
    }
</script>
	<script type="text/javascript">
		Sys.Application.add_init(function() {
		    $create(Telerik.Web.UI.RadWindowManager, {"clientStateFieldID":
		    	"RadWindowManager1_ClientState","formID":
		    		"form1","iconUrl":"","minimizeIconUrl":
		    			"","name":"RadWindowManager1","skin":
		    				"Default","windowControls":"[]"}, null, null, $get("RadWindowManager1"));
		});
		Sys.Application.add_init(function() {
		    $create(Telerik.Web.UI.RadMenu, {"_childListElementCssClass":
		    	null,"_skin":"Green","attributes":
		    	{},"clientStateFieldID":"ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu_ClientState",
		    	"collapseAnimation":"{\"duration\":450}","expandAnimation":"{\"duration\":450}",
		    	"itemData":[{"navigateUrl":"~/Default.aspx?PageId=8cb7e0c5-10f3-438b-8881-a74c24b373e3"},
		    	            {"items":[{"navigateUrl":"~/Default.aspx?ArticleId=f9111384-c9ad-46ac-ba10-037bf3d691a4"},
		    	                      {"navigateUrl":"~/Default.aspx?ArticleId=c8018710-9562-44c6-bef0-2a0f22e73f6b"},
		    	                      {"navigateUrl":"~/Default.aspx?ArticleId=dd21088d-cb55-4f9d-ac9c-73553c715cae"}],
		    	                      "navigateUrl":"#"},{"navigateUrl":"~/Default.aspx?ArticleId=fc8c1223-a9d2-46b5-9db3-665c778f0ac9"},
		    	                      {"navigateUrl":"~/Default.aspx?ArticleId=945864b5-165f-45a3-8e75-a9ba5ac1f9ef"},
		    	                      {"navigateUrl":"~/Default.aspx?ArticleId=707e0e24-5220-4821-a40f-4041eb76cc1a"},
		    	                      {"navigateUrl":"~/Default.aspx?ArticleId=be204435-0615-4fc3-aa86-392d871decc8"},
		    	                      {"navigateUrl":"#"},{"navigateUrl":"~/Default.aspx?ArticleId=242b6486-aeb4-472f-b74f-779069bbd957"},
		    	                      {"navigateUrl":"~/Default.aspx?ArticleId=b4031ebe-e802-4402-a49a-5769943872a5"}]},
		    	                      null, null, $get("ctl06_portlet_800886a8-ccb5-40dd-813a-2c02ac0d2e92_RadMenu"));
		});
		</script>
</body>
</html>
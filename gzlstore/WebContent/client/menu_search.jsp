<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<script type="text/javascript">
/**
 * my_click和my_blur均是用于前台页面搜索框的函数
 */
//鼠标点击搜索框时执行
function my_click(obj, myid){
	//点击时，如果取得的值和搜索框默认value值相同，则将搜索框清空
	if (document.getElementById(myid).value == document.getElementById(myid).defaultValue){
	  document.getElementById(myid).value = '';
	  obj.style.color='#000';
	}
}
//鼠标不聚焦在搜索框时执行
function my_blur(obj, myid){
	//鼠标失焦时，如果搜索框没有输入值，则用搜索框的默认value值填充
	if (document.getElementById(myid).value == ''){
	 document.getElementById(myid).value = document.getElementById(myid).defaultValue;
	 obj.style.color='#999';
 }
}

/**
 * 点击搜索按钮执行的函数
 */
function search(){
	document.getElementById("searchform").submit();
}
</script>
<div id="divmenu">
		<a href="${pageContext.request.contextPath}/showProductByPage?category=安踏">安踏</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=李宁">李宁</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=特步">特步</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=耐克">耐克</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=阿迪达斯">阿迪达斯</a>
		<a href="${pageContext.request.contextPath}/showProductByPage?category=卡帕">卡帕</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=匹克">匹克</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=鸿星尔克">鸿星尔克</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=361度">361度</a>
		<a href="${pageContext.request.contextPath}/showProductByPage?category=乔丹">乔丹</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=贵人鸟">贵人鸟</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=沃特">沃特</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage?category=锐步">锐步</a>
		<a href="${pageContext.request.contextPath}/showProductByPage?category=双星">双星</a> 
		<a href="${pageContext.request.contextPath}/showProductByPage" style="color:#b4d76d">全部商品目录</a>		
</div>
<div id="divsearch">
<form action="${pageContext.request.contextPath }/MenuSearchServlet" id="searchform">
	<table width="100%" border="0" cellspacing="0">
		<tr>
			<td style="text-align:right; padding-right:220px">
				Search 
				<input type="text" name="textfield" class="inputtable" id="textfield" value="请输入鞋名"
				onmouseover="this.focus();"
				onclick="my_click(this, 'textfield');"
				onBlur="my_blur(this, 'textfield');"/> 
				<a href="#">
					<img src="${pageContext.request.contextPath}/client/images/serchbutton.gif" border="0" style="margin-bottom:-4px" onclick="search()"/> 
				</a>
			</td>
		</tr>
	</table>
</form>
</div>
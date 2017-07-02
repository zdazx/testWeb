<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://www.mldn.cn/jst/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>无标题文档</title>
<style type="text/css">

    a:hover{color:#000000;}
	a:link{color:#000000;}
	a:visited{color:#000000;}
</style>
</head>

<body>
<form  method="post" name="myform">
 <table align="center" id="">
    <tr>
        <td>
		    <p style="font-size:150%"><b>未处理故障物品信息</b></p>
			</td>		
	</tr>
</table>

<table align="center" border="1"  width="940" bgcolor="#FFFFCC">
<tr align="center">
<th colspan="12" height="30">未处理故障物品查询表单
</th>
   <tr>
    <td align="center" width="60">故障编号</td>	
    <td align="center" width="60">客户编号</td>
    <td align="center" width="60">客户姓名</td>
	<td align="center" width="60">联系电话</td>
	<td align="center" width="100">故障描述</td>
	<td align="center" width="70">故障发生时间</td>
    <td align="center" width="60">处理状态</td>
    <td align="center" width="70">申报时间</td>
    <td align="center" width="100">故障原因</td>
    <td align="center" width="50">维修工姓名</td>
    <td align="center" width="70">解决时间</td>
    <td align="center" width="50">处理</td>
   </tr>
<c:forEach var="UgoodsSearch" items="${goods}">
  	<tr>
  		<td align="center">${UgoodsSearch.gid}</td>
        <td align="center">${UgoodsSearch.gcltid}</td>
		<td align="center">${UgoodsSearch.gcltname}</td>
  		<td align="center">${UgoodsSearch.gcltphone}</td>
		<td align="center">${UgoodsSearch.gdescrip}</td>
		<td align="center">${UgoodsSearch.gtime}</td>
  		<td align="center">${UgoodsSearch.gstate}</td>
		<td align="center">${UgoodsSearch.grtime}</td>
        <td align="center">${UgoodsSearch.greason}</td>
  		<td align="center">${UgoodsSearch.grep}</td>
		<td align="center">${UgoodsSearch.gdotime}</td>
        <td align="center"><a href="NewArrServlet?agid=${UgoodsSearch.gid}&acltid=${UgoodsSearch.gcltid}&aresp=${username}" target="zhong">去处理</a></td>
  	</tr>
  </c:forEach>
  

</table>
</form>
<br />

<p align="center" width="600">
     <input type="button" size="20" value="上一页" />
	 <input type="button" size="10" value="&gt;&gt;"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 <input type="button" size="10" value="&gt;&gt;"  />
	 <input type="button" size="20" value="下一页" />&nbsp;&nbsp;
     <input type="text" size="1" name="page"  />
	 <input type="button" size="10" value="跳转"  />
</p>
</form>
</body>
</html>


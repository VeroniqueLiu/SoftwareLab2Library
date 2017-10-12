<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid" %>   
<%@ taglib prefix="s" uri="/struts-tags" %>


<rapid:override name="head">  
    <title>Author Info</title>
   
</rapid:override>
<rapid:override name="content">
<body >
   <div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
<img src="../image/back2.jpg" height="100%" width="100%"/>    
</div> 
</body>


<div class="col-md-9 col-sm-11 table-center table-responsive">
	<table class="table table-bordered table-hover ">
	
	<caption><font color=white ><h1>Author List</h1></font></caption>
		<thead>
			<tr>
				<th><font color=white >AuthorID</font></th>
				<th><font color=white >AuthorName</font></th>
				<th><font color=white >Country</font></th>
				<th><font color=white >Age</font></th>
				
			</tr>
		</thead>
		<tbody>
			<s:iterator  value="authors" var="a">
				<tr>
					<td><font color=white >${a.authorID}</font></td>
					<td><font color=white >${a.name}</font></td>
					<td><font color=white >${a.country}</font></td>
					<td><font color=white >${a.age}</font></td>
					
				</tr>
		</s:iterator>
		</tbody>
	</table>
</div>
</rapid:override>

<%@include file="../../../base.jsp"%>  
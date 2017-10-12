<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid" %>   
<%@ taglib prefix="s" uri="/struts-tags" %>


<rapid:override name="head">  
    <title>Show All Books Written By Author</title>
</rapid:override>
<body >
   <div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
<img src="../image/back2.jpg" height="100%" width="100%"/>    
</div> 
</body>

<rapid:override name="content">
	<%
		String authorname;
		if (session.getAttribute("authorname")!=null){
			authorname = session.getAttribute("authorname").toString();
		}else{
			authorname = "";
		}
	%>
<div class="col-md-9 col-sm-11 table-center table-responsive">
	<h1><font color=white ><%=authorname %>All Books：</font></h1><br>
	<table class="table table-bordered table-hover ">
		<thead>
			<tr>
				<th><font color=white >ISBN</font></th>
				<th><font color=white >BookName</font></th>
				<th><font color=white >AuthorID</font></th>
				<th><font color=white >Publisher</font></th>
				<th><font color=white >PublishDate</font></th>
				<th><font color=white >Price</font></th>
			</tr>
		</thead>
		<tbody>
			<s:iterator  value="books" var="b">
				<tr>
					<td><font color=white >${b.ISBN}</font></td>
					<td><font color=white >${b.title}</font></td>
					<td><font color=white >${b.authorID}</font></td>
					<td><font color=white >${b.publisher}</font></td>
					<td><font color=white >${b.publishDate}</font></td>
					<td><font color=white >${b.price}</font></td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
</div>
</rapid:override>

<%@include file="../../../base.jsp"%>  
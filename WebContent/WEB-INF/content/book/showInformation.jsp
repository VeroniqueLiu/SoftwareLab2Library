<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid" %>  

<rapid:override name="head">  
    <title>Detail Info</title>
</rapid:override>  
<rapid:override name="content">  
<body >
   <div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
<img src="../image/back2.jpg" height="100%" width="100%"/>    
</div> 
</body>
<div class="col-md-4 col-sm-10 vertical-center table-responsive">
	<h1><font color=white >The Detail Of Book ${ book.title }</font></h1>
	
	<table class="table table-bordered table-hover">
		<caption><h2><font color=white >Book Info</font></h2></caption>
		<thead>		
			<tr>
				<th><font color=white >ISBN</font></th>
				<th><font color=white >Publisher</font></th>
				<th><font color=white >PublishDate</font></th>
				<th><font color=white >Price</font></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><font color=white >${book.ISBN}</font></td>
				<td><font color=white >${book.publisher}</font></td>
				<td><font color=white >${book.publishDate}</font></td>
				<td><font color=white >${book.price}</font></td>
			</tr>
		</tbody>
	</table>
	<br>
	<br>
	<table class="table table-bordered table-hover">
		<caption><h2><font color=white >Author Info</font></h2></caption>
		<thead>
			<tr>
				<th><font color=white >AuthorName</font></th>
				<th><font color=white >AuthorID</font></th>
				<th><font color=white >Country</font></th>
				<th><font color=white >Age</font></th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><font color=white >${author.name}</font></td>
				<td><font color=white >${author.authorID}</font></td>
				<td><font color=white >${author.country}</font></td>
				<td><font color=white >${author.age}</font></td>
			</tr>
		</tbody>
	</table>
</div>
</rapid:override>  
   
<%@ include file="../../../base.jsp" %>  
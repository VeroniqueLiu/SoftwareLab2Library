<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid" %>   
<%@ taglib prefix="s" uri="/struts-tags" %>


<rapid:override name="head">  
    <title>View All Books</title>
</rapid:override>
<rapid:override name="content">
<body >
   <div id="Layer1" style="position:absolute; width:100%; height:200%; z-index:-1">    
<img src="../image/back2.jpg" height="100%" width="100% "/>  

</div> 
</body>
<div class="col-md-9 col-sm-11 table-center table-responsive">
	<table class="table table-bordered table-hover ">
	
		<caption><h1><font color=white >.</font></h1></caption>
		<caption><h1><font color=white >.</font></h1></caption>
		<caption><h1><font color=white >.</font></h1></caption>
		<caption><h1><font color=white >.</font></h1></caption>
		<caption><h1><font color=white >Book List</font></h1></caption>
		
		
		
		
		<thead>
			<tr>
				<th><font color=white >ISBN</font></th>
				<th><font color=white >BookName</font></th>
				<th><font color=white >AuthorID</font></th>
				<th><font color=white >Publisher</font></th>
				<th><font color=white >PublishDate</font></th>
				<th><font color=white >Price</font></th>
				<th><font color=white >Operation</font></th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="books" var="b">
				<tr>
					<td><font color=white >${b.ISBN}</font></td>				
					 
					<td><a href='<s:url action="showInformation"><s:param name="ISBN" value="#b.ISBN"/></s:url>'><font color=white >${b.title}</font></a></td>
					
					<td><font color=white >${b.authorID}</font></td>
					<td><font color=white >${b.publisher}</font></td>
					<td><font color=white >${b.publishDate}</font></td>
					<td><font color=white >${b.price}</font></td>
					 
					<td>
						<a href='<s:url action="delBook"><s:param name="ISBN" value="#b.ISBN"/></s:url>'><input type="button" style="background:black"  value="删除"/></a>
						<a href='<s:url action="updateBookForm"><s:param name="ISBN" value="#b.ISBN"/></s:url>'><input type="button" style="background:black" value="更新"/></a>
					</td>
				</tr>			
			</s:iterator>
		</tbody>
	</table>
</div>

</rapid:override>

<%@include file="../../../base.jsp"%>  
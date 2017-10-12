<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid" %>  

<rapid:override name="head">  
    <title>Update Book Info</title>
</rapid:override>  
<body >
   <div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
<img src="../image/back2.jpg" height="100%" width="100%"/>    
</div> 
</body>
<rapid:override name="content"> 
	<%String isbn = request.getParameter("ISBN");%>
<div class="col-md-5 col-sm-9 vertical-center">
	<h2><font color=white >Update Info Where ISBN=<%=isbn%>:</font></h2>
	<br/>
	<form role="form" action="updateBook" method="post">		
		<div class="form-gruop">
			<label for="title" class="col-sm-2 control-label"><font color=white >BookName</font></label>
			<div class="col-sm-10">
				<input type="text" class="form-control"  placeholder="请输入标题" name="book.title"/><br/>
			</div>
		</div>
		<div class="form-gruop">
			<label for="authorname" class="col-sm-2 control-label"><font color=white >AuthorID</font></label>
			<div class="col-sm-10">
				<input type="text" class="form-control"  placeholder="请输入作者ID" name="authorID"/><br/>
			</div>
		</div>
		<div class="form-gruop">
			<label for="publisher" class="col-sm-2 control-label"><font color=white >Publisher</font></label>
			<div class="col-sm-10">
				<input type="text" class="form-control"  placeholder="请输入出版商" name="book.publisher"/><br/>
			</div>
		</div>
		<div class="form-gruop">
			<label for="publishDate" class="col-sm-2 control-label"><font color=white >PublishDate</font></label>
			<div class="col-sm-10">
				<input type="text" class="form-control"  placeholder="请输入出版日期" name="book.Inidata"/><br/>
			</div>
		</div>
		<div class="form-gruop">
			<label for="publishDate" class="col-sm-2 control-label"><font color=white >Price</font></label>
			<div class="col-sm-10">
				<input type="text" class="form-control"  placeholder="请输入价格" name="book.price"/><br/>
			</div>
		</div>
		<button class="btn btn-lg btn-primary btn-block" style="background:black" type="submit"><font color=white >Confirm</font></button>	
		<input type="hidden" name="ISBN" value="<%=isbn%>" />
	</form>
</div>
</rapid:override>
<%@include file="../../../base.jsp"%> 
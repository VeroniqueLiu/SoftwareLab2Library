<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid" %>   
    
<rapid:override name="head">  
    <title>Search Books By Author</title>
</rapid:override>
<rapid:override name="content">
<body >
   <div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
<img src="../image/back2.jpg" height="100%" width="100%"/>    
</div> 
</body>
<div class="col-md-4 col-sm-10 vertical-center">  
<caption><h1><font color=white >Search Books</font></h1></caption>
	<form role="form" action="searchBooksOfAuthor" method="post">
	
		<div class="form-gruop">
			<label for="authorname" class="col-sm-4 control-label"><font color=white >Author Name</font></label>
			<div class="col-sm-8">
				<input type="text" class="form-control"  placeholder="请输入作者姓名" name="authorname"/>
			</div>
		</div>		
		<button type="submit" style="background:black" class="btn btn-default btn-primary button-center"><font color=white >Search</font></button>
	</form>
</div>
</rapid:override>

<%@ include file="../../../base.jsp" %>  
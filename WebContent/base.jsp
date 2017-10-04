<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid" %>  
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/base.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap-theme.min.css">
<html>  
   <rapid:block name="head">base_head</rapid:block>  
<body>  
	<br/>  
	<rapid:block name="content">base_content</rapid:block>  
	<br/>
	
	<%
		String username;
		if (session.getAttribute("username")!=null){
			username = session.getAttribute("username").toString();
		}else{
			username = "";
		}
	%>
	
	<nav class="navbar navbar-default navbar-fixed-top" role="navigetion">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Library 1.1</a>
			</div>
			<div class="collapse navbar-collapse" id="navbar-collapse-basepage">
            <ul class="nav navbar-nav">
                <li id=""><a href="<%=request.getContextPath()%>/index">主页</a></li>
                <li id="view_books"><a href="<%=request.getContextPath()%>/book/viewAllBooks">查看图书</a></li>
                <li id="add_book"><a href="<%=request.getContextPath()%>/book/addBook">添加图书</a></li>
                <li id="view_authors"><a href="<%=request.getContextPath()%>/book/viewAllAuthors">查看作者</a></li>
                <li id="add_author"><a href="<%=request.getContextPath()%>/author/addAuthor">添加作者</a></li>    
                <li id="search_author"><a href="<%=request.getContextPath()%>/author/searchAuthor">查找作者</a></li>            
            </ul>
            
        </div>
		</div>
	</nav>
</body>  
</html>  
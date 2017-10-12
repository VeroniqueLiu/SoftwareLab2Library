<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid" %>  

<rapid:override name="head">  
    <title>ERROR</title>
</rapid:override>  
<body >
   <div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
<img src="../image/back2.jpg" height="100%" width="100%"/>    
</div> 
</body>
<rapid:override name="content"> 
	<div class="table-center">
		<h2><font color=white >Oh! Something Wrong!</font></h2>
	</div>
</rapid:override>

<%@ include file="../../base.jsp" %>  
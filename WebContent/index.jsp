<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.rapid-framework.org.cn/rapid" prefix="rapid" %>  

<rapid:override name="head">  
    <title>HomePage</title>
</rapid:override>  
<rapid:override name="content">  

<body >
   <div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
<img src="image/back2.jpg" height="100%" width="100%"/>    
</div> 
</body>
	
    <div class="container table-center">
		<ul class="row">
		    <h1 class="text-center"> <font color=white >思凡的图书馆</font></h1><br/>
		    <h4 class="text-center"> <font color=white >ViewBooks：展示所有图书，可以实现更新图书，查询详细信息，删除功能</font></h4><br/>
		    <h4 class="text-center"> <font color=white >ViewAuthors：展示所有作者</font></h4><br/>
		    <h4 class="text-center"> <font color=white >Search：搜索作者姓名查询相关书目信息</font></h4><br/> 
		     <h6 class="text-center"> <font color=white >Contact me https://github.com/VeroniqueLiu , email 564788455@qq.com</font></h6><br/> 
		    
		                 
		</ul>
    </div>
    

          
</rapid:override>  
   
<%@ include file="base.jsp" %>  
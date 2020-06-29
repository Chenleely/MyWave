<%@ page import="com.wave.po.Blog" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.wave.controller.BlogController" %>
<%@ page import="com.wave.mapper.BlogMapper" %><%--
  Created by IntelliJ IDEA.
  User: Luozhihua
  Date: 2020/6/28
  Time: 22:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改博客</title>
</head>
<body>
<%
    Blog blog= (Blog) session.getAttribute("updateblog");
    String context=blog.getContext();
    Date date=blog.getDate();
    Integer userid=blog.getUser_id();
    int id=blog.getId();
%>
<form action="${pageContext.request.contextPath}/index/updateBlog" method="get">
    id:<%=id%>
    userid:<%=userid%><br>
    date:<%=date%><br>
    <textarea cols="20" rows="20" name="updatecontext"><%=context%></textarea>
    <br><input type="submit" value="提交">
</form>
</body>
</html>

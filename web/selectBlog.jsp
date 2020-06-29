<%@ page import="java.util.List" %>
<%@ page import="com.wave.po.Blog" %>
<%@ page import="java.util.Iterator" %><%--
  Created by IntelliJ IDEA.
  User: Luozhihua
  Date: 2020/6/29
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查找博客</title>
</head>
<body>
<%
    List<Blog> list= (List<Blog>) session.getAttribute("userbloglist");
    Iterator iterator=list.iterator();
    while (iterator.hasNext()){
%>
    <%=iterator.next()%>
    <br>
<%
    }
%>
</body>
</html>

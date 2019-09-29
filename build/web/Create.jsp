<%-- 
    Document   : Create
    Created on : Apr 26, 2019, 6:56:27 PM
    Author     : MshzidanPC
--%>

<%@page import="pages.ddl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Refresh" content="5;url=index.jsp">
        <title>redirect</title>
    </head>
    <body>
        <h1>your Account has created successfully</h1>
    </body>
</html>
<jsp:scriptlet>
String name =request.getParameter("name");
String password =request.getParameter("password");
String sql = ("insert into users values (users_seq.nextval,'"+name+"','"+password+"')");
ddl ddl = new ddl();
ddl.connect(sql);





</jsp:scriptlet>

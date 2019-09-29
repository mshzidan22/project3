<%-- 
    Document   : takeAnswer
    Created on : Apr 27, 2019, 2:02:32 PM
    Author     : MshzidanPC
--%>
<%@page import="pages.ddl"%>
<jsp:scriptlet>
String question_id = request.getParameter("question_id");
String answer = request.getParameter("answer");

String url = "insert into answers values (answers_seq.nextval,'"+answer+"',sysdate,0,"+session.getAttribute("user_id")+","+question_id+")" ;
ddl ddl = new ddl();
ddl.connect(url);
</jsp:scriptlet>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>redirect</title>
    </head>
    <body>
        <h1>your answer has been inserted successfully </h1>
    </body>
</html>
<jsp:forward page="question.jsp" />

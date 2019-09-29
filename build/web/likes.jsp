<%-- 
    Document   : likes
    Created on : Apr 27, 2019, 3:18:14 PM
    Author     : MshzidanPC
--%>
<%@page import="pages.ddl"%>
<jsp:scriptlet>
String ans_id =request.getParameter("ans_id");
String question_id = request.getParameter("question_id");
ddl ddl = new ddl();
ddl.connect("update answers set likes = likes +1 where ans_id="+ans_id);
response.sendRedirect("question.jsp?question_id="+question_id);
</jsp:scriptlet>
<jsp:forward page="question.jsp" />
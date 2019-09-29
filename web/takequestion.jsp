
<%@page import="java.sql.ResultSet"%>
<%@page import="pages.select"%>
<%@page import="pages.ddl"%>

<jsp:scriptlet>
String title =request.getParameter("title");
String question =request.getParameter("question");

ddl ddl = new ddl();
String sql="insert into questions values(questions_seq.nextval,'"+title+"','"+question+"',sysdate,1,'"+session.getAttribute("user_id") +"')";
ddl.connect(sql);
select select = new select();
ResultSet qu =select.connect("select question_id from questions where title='"+title+"'");
qu.next();
String question_id = qu.getString(1);

response.sendRedirect("question.jsp?question_id="+question_id);


</jsp:scriptlet>
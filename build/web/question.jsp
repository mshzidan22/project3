<%-- 
    Document   : question
    Created on : Apr 26, 2019, 8:43:39 PM
    Author     : MshzidanPC
--%>

<%@page import="pages.ddl"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="pages.select"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:scriptlet>    
    String question_id = request.getParameter("question_id");
    select select = new select();
    ResultSet rsq = select.connect("select * from questions where question_id = '" + question_id + "'");
    rsq.next();
    ResultSet rs1 = select.connect("select user_name from users where user_id ='" + rsq.getString("user_id") + "'");
    rs1.next();
    ddl ddl = new ddl();
    ddl.connect("update questions set views = views+1 where question_id = " + question_id);
    ResultSet rsans = select.connect("select * from answers where question_id="+question_id);
    
    
    
    
    
</jsp:scriptlet>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Questions</title>
        <style>
            body {
                background: #456;
                font-family: sans-serif;
            }

            .login {
                width: 1000px;
                margin: 16px auto;
                font-size: 16px;
            }

            /* Reset top and bottom margins from certain elements */
            .login-header,
            .login p {
                margin-top: 0;
                margin-bottom: 0;
            }



            .login-header {
                background: #28d;
                padding: 20px;
                font-size: 1.4em;
                font-weight: normal;
                text-align: center;
                text-transform: uppercase;
                color: #fff;
            }

            .top {
                background: #28d;
                padding: 6px;
                font-size: 1.4em;
                font-weight: normal;
                text-align: left;
                text-transform: uppercase;
                color: #fff;
                float: left;
            }

            .login-container {
                background: #ebebeb;
                padding: 23px;
            }

            .Ask {
                background: #ebebeb;
                padding: 12px;
            }
            /* Every row inside .login-container is defined with p tags */
            .login p {
                padding: 12px;
            }

            .ss {
                padding: 30px;
            }
            .button input {

                display: block;
                width: 20%;
                border-width: 1px;
                border-style: solid;
                padding: 10px;
                outline: 0;
                font-family: inherit;
                font-size: 0.95em;
                float: right;

            }
            .login input {
                box-sizing: border-box;
                display: block;
                width: 100%;
                border-width: 1px;
                border-style: solid;
                padding: 16px;
                outline: 0;
                font-family: inherit;
                font-size: 0.95em;

            }



            .button input[type="submit"] {
                background: #28d;
                border-color: transparent;
                color: #fff;
                cursor: pointer;
            }
.top_Right {
                background: #28d;
                padding: 6px;
                font-size: 1.4em;
                font-weight: normal;
                text-align: left;
                text-transform: uppercase;
                color: #fff;
                float: right;
            }

            .button input[type="submit"]:hover {
                background: #17c;
            }

            /* Buttons' focus effect */
            .button input[type="submit"]:focus {
                border-color: #05a;
            } 
            .right{
                float: right;

            }
            .left{
                float: left;
            }
            .button2 input {

                display: block;
                width: 49%;
                border-width: 1px;
                border-style: solid;
                padding: 10px;
                outline: 0;
                font-family: inherit;
                font-size: 0.95em;
                float: left ;

            }
            .button2 input[type="submit"] {
                background: #28d;
                border-color: transparent;
                color: #fff;
                cursor: pointer;
            }

            .button2 input[type="submit"]:hover {
                background: #17c;
            }

            /* Buttons' focus effect */
            .button2 input[type="submit"]:focus {
                border-color: #05a;
            } 
            .question{

                background: #ffffc9;
                font-family:cursive;
                font-size: 20px ;

            }

            .like input {

                display: block;
                width: 100%;
                border-width: 1px;
                border-style: solid;
                padding: 10px;
                outline: 0;
                font-family: inherit;
                font-size: 0.95em;

            }
            .like input[type="button"] {
                background: #28d;
                border-color: transparent;
                color: #fff;
                cursor: pointer;
            }

            .like input[type="button"]:hover {
                background: #17c;
            }

            /* Buttons' focus effect */
            .like input[type="button"]:focus {
                border-color: #05a;
            } 
            .down{

                float: bottom;
            }

            .ans {
                width: 800px;
                margin: 16px auto;
                font-size: 16px;
                background: #28d;
                padding: 20px;
            }


        </style>
    </head>
    <body>
        <div>
            <div class="top">

                ${sessionScope.name}                

            </div>
            <div   class="top_Right">
                <submit class="login"  >
                    <a href="Ask.jsp" style="text-decoration:none;color: #fff"  >
                        Ask a question
                    </a>
                </submit>  
                
            </div>
                <div style="float: right;padding: 10px;" ></div>
                <div   class="top_Right">
                <submit class="login"  >
                    <a href="Home.jsp?name=${sessionScope.name}" style="text-decoration:none;color: #fff"  >
                        Home
                    </a>
                </submit>  

            </div>
        </div>
        <div class="ss">

        </div>
        <div class="login">


            <h1 class="login-header"> <%=rsq.getString("title")%> </h1>
            <div class="question">

                <%=rsq.getString("question")%>

            </div>
            <div class="login-container">
                <div class="left"> Asked by  <%=rs1.getString(1)%> </div>
                <div class="right"> <%=rsq.getString("time")%> </div>
                <br>
                <span class="left" >question_id= <%=rsq.getString(1)%> </span>
                <span class="right"><%=rsq.getString("views")%> views </span>
            </div>


        </div>

        <br>

        <%--answers--%>
        <%while (rsans.next()) {%>
            <% ResultSet rsname = select.connect("select user_name from users where user_id =" + rsans.getString("user_id"));%>
            <%rsname.next();%>
        <div class="ans">
            <div class="left">
                  <%=rsname.getString(1)%>
            </div>

            <br>
            <br>

            <div class="question">

                <%=rsans.getString("answer")%>
            </div>
            <div class="login-container">

                <div class="right"> <%=rsans.getString("time")%> </div>

                <span class="left" ><%=rsans.getString("likes")%> likes</span>

            </div>
            <span   class="like">
                <form action="likes.jsp" method="get" >
                    <input type="hidden" name="ans_id" value="<%=rsans.getString("ans_id")%>"  > 
                    <input type="hidden" name="question_id" value="<%=question_id%>" >
                           <input  type="submit" value="like" >

                </form>
            </span>
        </div>
        <br>
        <%}%>


        <%-- elbeta3a elbyjawib fihaa  --%>

        <div class="login">

            <h2 class="login-header">put your answer</h2>
            <div class="login-container">
                <form action="takeAnswer.jsp" method="get">
                    <input type="hidden" name="question_id" value="${param.question_id}">
                    <p><TEXTAREA name="answer" cols="116" rows="18" placeholder="Put your answer "></textarea></p>
                <div class="button">
                <input  type="submit" value="Answer">
    <br><br>
  </div>
</form>
</div>
</div>


    </body>
</html>

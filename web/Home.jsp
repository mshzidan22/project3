<%-- 
    Document   : Home
    Created on : Apr 26, 2019, 6:36:08 PM
    Author     : MshzidanPC
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="pages.select"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<jsp:scriptlet>
    String name = request.getParameter("name");
    application.setAttribute("name", name);

    select select = new select();
    ResultSet rs_id = select.connect("select user_id from users where user_name = '" + name + "'");
    rs_id.next();
    String user_id = rs_id.getString(1);
    application.setAttribute("user_id", user_id);
    session.setAttribute("name", name);
    session.setAttribute("user_id",application.getAttribute("user_id") );

    ResultSet rs = select.connect("select * from questions order by time desc");





</jsp:scriptlet>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
        <style>
            body {
                background: #456;
                font-family:sans-serif ;
            }

            .login {
                width: 800px;
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
                width: 100%;
                border-width: 1px;
                border-style: solid;
                padding: 10px;
                outline: 0;
                font-family: inherit;
                font-size: 0.95em;


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
        </div>
        <div class="ss">

        </div>
        <div class="login">
            <%while (rs.next()) {%>
            <% ResultSet rs1 = select.connect("select user_name from users where user_id =" + rs.getString("user_id"));%>
            <%rs1.next();%>



            <h1 class="login-header"><%=rs.getString("title")%> </h1>
            <div class="login-container">
                <div class="left"> Asked BY <%=rs1.getString("user_name")%> </div>
                <div class="right"> <%=rs.getString("time")%> </div>
                <br>
                <span class="left" > Question ID =<%=rs.getString(1)%> </span>
                <span class="right"><%=rs.getString("views")%> views</span>
                <br>


                <div   class="button2">
                    <form action="question.jsp" method="get">
                        <input type="hidden" name="question_id" value="<%=rs.getString(1)%>">
                        <input  type="submit" value="View Question">

                    </form>

                </div>

            </div>
            <br>
            <br>
            <%}%>
        </div>

    </body>
</html>

<%-- 
    Document   : Ask
    Created on : Apr 26, 2019, 8:32:59 PM
    Author     : MshzidanPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ask your question here</title>
        <style>
            body {
                background: #456;
                font-family:sans-serif;
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

            /* The triangle form is achieved by a CSS hack */
            .login-triangle {
                width: 0;
                margin-right: auto;
                margin-left: auto;
                border: 12px solid transparent;
                border-bottom-color: #28d;
            }

            .login-header {
                background: #28d;
                padding: 40px;
                font-size: 1.4em;
                font-weight: normal;
                text-align: center;
                text-transform: uppercase;
                color: #fff;
            }

            .login-container {
                background: #ebebeb;
                padding: 12px;
            }

            /* Every row inside .login-container is defined with p tags */
            .login p {
                padding: 12px;
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

            .login input[type="email"],
            .login input[type="password"] {
                background: #fff;
                border-color: #bbb;
                color: #555;
            }

            /* Text fields' focus effect */
            .login input[type="email"]:focus,
            .login input[type="password"]:focus {
                border-color: #888;
            }

            .login input[type="submit"] {
                background: #28d;
                border-color: transparent;
                color: #fff;
                cursor: pointer;
            }

            .login input[type="submit"]:hover {
                background: #17c;
            }

            /* Buttons' focus effect */
            .login input[type="submit"]:focus {
                border-color: #05a;
            } 
        </style>
    </head>
    <body>
        <div class="login">


            <h2 class="login-header">
                Ask your Question
            </h2>
            <div  class="login-container ">
                <form action="takequestion.jsp" method="get" >
                    <p><input type="text" placeholder="Title" name="title"> </p>
                    <p><TEXTAREA name="question" cols="116" rows="18" placeholder="Ask your question here "></textarea></p>
   
                <p><input type="submit" value="Ask"></p>
  </form>
</div>
</div>

        
    </body>
</html>

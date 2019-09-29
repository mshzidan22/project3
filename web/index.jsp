<%-- 
    Document   : index
    Created on : Apr 26, 2019, 6:25:17 PM
    Author     : MshzidanPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Elproject3</title>
        <style>
            body {
                background: #456;
                font-family:sans-serif;
            }

            .login {
                width: 400px;
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
                padding: 20px;
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
            <div class="login-triangle"></div>

            <h2 class="login-header">Log in</h2>
            <div class="login-container">
                <form  action="Home.jsp" method="post" >
                    <p><input type="text" name="name" placeholder="name"></p>
                    <p><input type="password" name="password" placeholder="password"></p>
                    <p><input type="submit" value="Log in"></p>
                </form>
                <div class="login-header">
                 
                <a href="CreateAccount.jsp" style="text-decoration:none" >
                      Create Account 
                </a>
            
             </div>
            </div>
            
        </div>

    </body>
</html>

<%-- 
    Document   : index
    Created on : 24 Apr, 2024, 10:50:03 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRM for Marc Lab.</title>
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <script src="js/bootstrap.bundle.js" type="text/javascript"></script>
        <script>
            function validate()
            {
                var userid=document.getElementById("userid");
                var password=document.getElementById("password");
                if(userid.value=="" || userid.value==null)
                {
                    alert("Please enter userid");
                    userid.focus();
                }
                else if(password.value=="" || password.value==null)
                {
                    alert("Please enter password");
                    password.focus();
                }
                else 
                {
                    document.getElementById("frmlogin").submit();
                }
            }
            </script>
    </head>
    <body>
        <div class="container">
            <%@include file="header.jsp"%>
            <div class="row mt-2">
                <div class="col-sm-4" style="min-height: 600px; background-color: aqua;"></div> 
                <div class="col-sm-8" style="min-height: 600px; background-color: orangered">
           <h2 style="text-align: center;">Login Form</h2>
           <form id="frmlogin" onsubmit="event.preventDefault();validate();" class="form-group" action="logcode.jsp" method="post">
                        <table class="table" style="margin: auto;">
                            <tr>
                                <td>Enter UserId :</td>
                                <td><input type="text" name="userid" placeholder="Enter ID" id="userid" class="form-control"></td>
                            </tr>
                                <td>Enter Password :</td>
                                <td><input type="password" name="password" placeholder="Enter Password" class="form-control" id="password"></td>
                            </tr>
                            <tr>
                                <td>Select User Type :</td>
                                <td>
                                    <select name="usertype" class="form-control">
                                        <option value=""></option>
                                    <option value="admin">Admin</option>
                                    <option value="user">Customer</option>
                                </select>
                                </td>
                            </tr>
                            <tr><td></td>
                                <td><button type="sumbit" class="btn btn-primary">Login</button></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            <%@include file="footer.jsp"%>
        </div>
            </div>
            
    </body>
</html>

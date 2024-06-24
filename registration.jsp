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
                    document.getElementById("frmregistration").submit();
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
           <h2 style="text-align: center;">User Registration Form</h2>
                    <form id="frmregistration" onsubmit="event.preventDefault();validate();" class="form-group" action="regcode.jsp" method="post">
                        <table class="table" style="margin: auto;">
                            <tr>
                                <td>Enter Name :</td>
                                <td><input type="text" name="name" placeholder="Enter name" id="name" class="form-control"></td>
                            </tr>
                            <tr><td>Select Gender:</td>
                                <td><input type="radio" name="gender" value="male" class="form-check-input">Male
                                    <input type="radio" name="gender" value="female" class="form-check-input">Female
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Address : </td>
                                <td><textarea name="address" class="form-control"></textarea></td>
                            </tr>
                            <tr><td>Contact No:</td>
                                <td><input type="number" name="contactno" placeholder="Enter Contact no." class="form-control" required></td>
                            </tr>
                            <tr><td>Email Address :</td>
                                <td><input type="email" name="emailaddress" placeholder="Enter email" class="form-control" required></td>
                            </tr>
                            <tr>
                                <td>Enter Password :</td>
                                <td><input type="password" name="password" placeholder="Enter Password" class="form-control" required></td>
                            </tr>
                            <tr>
                                <td>Confirm Password :</td>
                                <td><input type="password" name="confirmpassword" placeholder="Confirm Password" class="form-control" required></td>
                            </tr>
                            <tr><td></td>
                                <td><button type="sumbit" class="btn btn-primary">Register</button></td>
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

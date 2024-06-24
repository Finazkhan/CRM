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
                var userid=document.getElementById("name");
                var password=document.getElementById("contactno");
                if(userid.value=="" || userid.value==null)
                {
                    alert("Please enter name");
                    name.focus();
                }
                else if(password.value=="" || password.value==null)
                {
                    alert("Please enter contact no.");
                    contactno.focus();
                }
                else 
                {
                    document.getElementById("frmenquiry").submit();
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
                    <h2 style="text-align: center;">Enquiry Form</h2>
                    <form id="frmenquiry" onsubmit="event.preventDefault(); validate();" class="form-group" action="enqcode.jsp" method="post">
                        <table>
                            <tr>
                                <td>Enter Name :</td>
                                <td><input type="text" id="name" name="name" class="form-control"></td>
                            </tr>
                            <tr><td>Contact No:</td>
                                <td><input type="text" id="contactno" name="contactno" class="form-control"></td>
                            </tr>
                            <tr><td>Email Address :</td>
                                <td><input type="email" id="email" name="emailaddress" class="form-control"></td>
                            </tr>
                            <tr><td>Enter Subject :</td>
                                <td><input type="text" id="subject" name="subject" class="form-control"></td>
                            </tr>
                            <tr><td>Enter Message :</td>
                                <td><textarea name="message" id="message" class="form-control"></textarea></td>
                            </tr>
                            <tr><td></td>
                                <td><button type="sumbit" class="btn btn-primary">Submit</button></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            <%@include file="footer.jsp"%>
        </div>
    </body>
</html>

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
    </head>
    <body>
        <div class="container">
            <%@include file="header.jsp"%>
            <div class="row mt-2">
                <div class="col-sm-4" style="min-height: 600px; background-color: aqua;"></div> 
                <div class="col-sm-8" style="min-height: 600px; background-color: orangered"></div>
            </div>
            <%@include file="footer.jsp"%>
        </div>
    </body>
</html>

<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
String userid=request.getParameter("userid");
String password=request.getParameter("password");
String query="select usertype from login where userid='"+userid+"' and password='"+password+"'";
DbManager db=new DbManager();
ResultSet rs=db.select(query);
if(rs.next())
{
   // valid user
    String usertype=rs.getString("usertype");
    if(usertype.equals("user"))
    {
   // out.print("<script>alert('welcome to user zone');window.location.href='login.jsp';</script>");
        session.setAttribute("userid", userid);
        response.sendRedirect("customerzone/customerhome.jsp");
    }
    else if(usertype.equals("admin"))
    {
    //out.print("<script>alert('welcome to admin zone');window.location.href='login.jsp';</script>");
    session.setAttribute("adminid", userid);
    response.sendRedirect("adminzone/adminhome.jsp");
    }
}
else
{
    //invalid user
    out.print("<script>alert('invlaid user');window.location.href='login.jsp';</script>");
}
%> 
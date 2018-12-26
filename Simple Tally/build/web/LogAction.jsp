<%-- 
    Document   : LogAction
    Created on : 21 Jan, 2017, 9:32:09 AM
    Author     : Vishnu Shaji
--%>

<jsp:useBean class="tally.Tallyclass" id="con"/>
<%@page import="java.sql.*" %>
<%
    String uname=request.getParameter("uname");
    String pwd=request.getParameter("pwd");
    String sel="select * from tbl_admin where tphone='"+uname+"' or temail='"+uname+"' and tpwd='"+pwd+"'";
    ResultSet rs=con.getData(sel);
    if(rs.next())
    {
        session.setAttribute("id", rs.getString("id"));
        response.sendRedirect("ADMIN/Group.jsp");
    }
    else
    {
        out.print("invalid login <a href='Group.jsp'>Go Home</a>");
    }
    %>
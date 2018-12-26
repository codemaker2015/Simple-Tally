<%-- 
    Document   : PrflUpdt
    Created on : 21 Jan, 2017, 9:53:16 AM
    Author     : Vishnu Shaji
--%>

<jsp:useBean class="tally.Tallyclass" id="con"/>
<%@page import="java.sql.*" %>
<%
    String tname=request.getParameter("tname");
    String tphone=request.getParameter("tphone");
    String temail=request.getParameter("temail");
    String tpwd=request.getParameter("tpwd");
    String uid=session.getAttribute("id").toString();
    String upd="update tbl_admin set tname='"+tname+"', tphone='"+tphone+"', temail='"+temail+"', tpwd='"+tpwd+"' where id='"+uid+"'";
    if(con.executeCommand(upd)){
        response.sendRedirect("Group.jsp");
    }
    else
    {
        response.sendRedirect("Group.jsp?Sorry");
    }
    %>
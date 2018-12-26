<%-- 
    Document   : logOut
    Created on : 21 Jan, 2017, 12:50:24 PM
    Author     : Vishnu Shaji
--%>

<%
    session.invalidate();
    response.sendRedirect("../Group.jsp");
    
    
    %>
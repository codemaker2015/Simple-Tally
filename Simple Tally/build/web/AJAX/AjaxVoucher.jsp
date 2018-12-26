<%-- 
    Document   : Group
    Created on : 11 Dec, 2016, 12:29:04 PM
    Author     : Vishnu Shaji
--%>

<jsp:useBean class="tally.Tallyclass" id="con"/> 
<%@page  import="java.sql.*" %>
<%
     String auth=request.getParameter("q");
     String condition="";
     if(!auth.equalsIgnoreCase("type")){
         }
     if(auth.equals(""))
     {
  %> 
  <div id="cndnt">
      <%
         String sel="select * from tbl_voucher where grp='"+auth+"' and max(id)";
         ResultSet rs=con.getData(sel);
         while(rs.next())
         {
         %>
         <p class="text-center text-black" style="font-size: 18px"><%=rs.getString("txt")%></p>
         <%}%>
  </div>
         <%
     }
     if(auth.equals("Pre Defined Voucher in Tally"))
     {
         %>
         <div id="cndnt">
      
         <p class="text-center text-black" style="font-size: 18px">Please select one</p>
       
  </div>
         <%
         
     }
     if(auth.equalsIgnoreCase("select one"))
     {
         %>
         
         <div id="cndnt">
      
         <p class="text-center text-black" style="font-size: 18px">Please select one</p>
       
  </div>
         <%
     }
     else
     {
     %>
     <div id="cndnt">
      <%
         String sel1="select * from tbl_voucher where grp='"+auth+"' order by id desc limit 1";
         ResultSet rs1=con.getData(sel1);
         while(rs1.next())
         {
         %>
         <p class="text-justify text-black" style="font-size: 18px"><%=rs1.getString("txt")%></p>
         <%
         }
         %>
  </div>
  <div id="cndnt2">
      <%
         String sel12="select * from tbl_voucher where grp='"+auth+"' order by id desc limit 1";
         ResultSet rs12=con.getData(sel12);
         while(rs12.next())
         {
         %>
         <div class="col-lg-6">
                    <video src="FILES/<%=rs12.getString("vid")%>" alt="Loading..." controls="" class="img img-responsive img-bordered"/>
                </div>
                <div class="col-lg-6">
                    <img src="FILES/<%=rs12.getString("img")%>" class="img img-responsive img-bordered" alt="Loading..."/>
                </div>
      <%
         }
         %>
      
  </div>
  
<%
     }
     %>
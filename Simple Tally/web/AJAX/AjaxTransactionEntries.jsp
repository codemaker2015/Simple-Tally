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
         String sel="select * from tbl_tran where grp='"+auth+"' and max(id)";
         ResultSet rs=con.getData(sel);
         while(rs.next())
         {
         %>
         <p class="text-center text-black" style="font-size: 18px"><%=rs.getString("txt")%></p>
         <%}%>
  </div>
         <%
     }
     if(auth.equals("Pre Defined Transaction Entries in Tally"))
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
         String sel1="select * from tbl_tran where grp='"+auth+"' order by id desc limit 1";
         ResultSet rs1=con.getData(sel1);
         while(rs1.next())
         {
         %>
         <div class="col-lg-12">
             <h4 class="text-left"><%=rs1.getString("head1")%></h4><br>
         </div>
          <div class="col-lg-12">
             <p class="text-justify"><%=rs1.getString("cont1")%></p>
         </div>
         <div class="col-lg-12"><hr>
             <h4 class="text-left"><%=rs1.getString("head2")%></h4><br>
         </div>
          <div class="col-lg-12">
             <p class="text-justify"><%=rs1.getString("cont2")%></p>
         </div>
         <div class="col-lg-12"><hr>
             <h4 class="text-left"><%=rs1.getString("head3")%></h4><br>
         </div>
          <div class="col-lg-12">
             <p class="text-justify"><%=rs1.getString("cont3")%></p><br>
         </div>
         <%
         }
         %>
  </div>
  <div id="cndnt2">
      <%
         String sel12="select * from tbl_tran where grp='"+auth+"' order by id desc limit 1";
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
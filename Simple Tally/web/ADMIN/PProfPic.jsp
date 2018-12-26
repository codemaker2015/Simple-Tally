<%-- 
    Document   : Voucher
    Created on : 7 Dec, 2016, 6:27:41 PM
    Author     : Vishnu Shaji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="HEADER.jsp" %>
<form action="ACTION/ProfilePic.jsp" method="POST" enctype="multipart/form-data">
<div class="divider"></div><br>
<div class="col-lg-6 col-lg-offset-3">
<div class="box box-primary">
    <div class="box-header" style="background-color: #339e4a">
        <i class=""></i>
        <h2 class="box-title" style="color: #ffffff">Edit Profile Pic</h2>
    </div>
    <div class="box-body" style="background-color: #ccffcc">
      <%--  <div class="col-lg-12">
            <label>Voucher</label>
            <textarea name="txtldgr" disabled="" rows="8" class="form-control info" spellcheck=""></textarea>
        </div>  --%>
      <%
          
          String id=session.getAttribute("id").toString();
          String pSel="select * from tbl_admin where id='"+id+"'";
          ResultSet prs=con.getData(pSel);
          while(prs.next()){
          %>
      <div class="col-lg-12 center">
          <img src="uPrfl/<%=prs.getString("tphoto")%>" alt="Loading..." class="image img-responsive center img-circle"/>

      </div>
          <%
          }
              
              
              %>
       <div class="col-lg-12"><br>
           <input type="file" accept="image/*" required="" name="photo" value="" class="form-control"/>
       </div>
      
        <div class="col-lg-12">
            <br>
            <input type="submit" value="UPDATE" class="btn pull-right bg-blue-gradient btn-lg "/>
        </div>
    </div>
</div>
</div>
</form>
      
      
        <i class="divider"></i>
      
<%@include file="FOOTER.jsp" %>




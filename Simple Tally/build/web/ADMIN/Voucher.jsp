<%-- 
    Document   : Voucher
    Created on : 7 Dec, 2016, 6:27:41 PM
    Author     : Vishnu Shaji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="HEADER.jsp" %><br>
<form action="ACTION/VoucherAction.jsp" method="POST" enctype="multipart/form-data">
<div class="divider"></div>
<div class="box box-primary">
    <div class="box-header" style="background-color: #339e4a">
        <i class=""></i>
        <h2 class="box-title" style="color: #ffffff">Voucher</h2>
    </div>
    <div class="box-body" style="background-color: #ccffcc">
      <%--  <div class="col-lg-12">
            <label>Voucher</label>
            <textarea name="txtldgr" disabled="" rows="8" class="form-control info" spellcheck=""></textarea>
        </div>  --%>
        <div class="col-lg-6 col-lg-offset-3">
        
            <select name="txtsel" style="background-color: #ffffcc" class="form-control dropdown-toggle animated-dropdown-menu bg-green-gradient text-uppercase text-black" autofocus="" data-toggle="dropdown">
                <option>Pre Defined Voucher in Tally</option>
                <option>Contry</option>
                <option>Payment</option>
                <option>Receipt</option>
                <option>Journal</option>
                <option>Purchase</option>
                <option>Sales</option>
                <option>Memmorandam Voucher</option>
            </select>
        </div>
        <div class="col-lg-12">
        <br>
        <textarea name="tt" style="font-size: 18px" rows="12" cols="20" class="form-control" required="" title="Enter text" placeholder="Enter text..." style=""></textarea>
        </div>
        <div class="col-lg-6 col-lg-offset-3">
            <label>Video</label>
            <input type="file" name="vid" value="" autocomplete="off" class="form-control" accept="video/mp4"/>
        </div>
        <div class="col-lg-6 col-lg-offset-3">
            <label>Image</label>
            <input type="file" name="img" value="" autocomplete="off" class="form-control" accept="image/*"/>
        </div>
        <div class="col-lg-12">
            <br>
            <input type="submit" value="SAVE" class="btn btn-block bg-blue-gradient btn-lg "/>
        </div>
    </div>
</div>
</form>
      
      
        <i class="divider"></i>
      
<%@include file="FOOTER.jsp" %>




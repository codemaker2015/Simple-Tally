<%-- 
    Document   : Transaction Entries
    Created on : 7 Dec, 2016, 6:27:41 PM
    Author     : Vishnu Shaji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="HEADER.jsp" %>
<form action="ACTION/TransactionEntryAction.jsp" method="POST" enctype="multipart/form-data">
<div class="divider"></div><br>
<div class="box box-primary">
    <div class="box-header" style="background-color: #339e4a">
        <i class=""></i>
        <h2 class="box-title" style="color: #ffffff">Transaction Entries</h2>
    </div>
    <div class="box-body" style="background-color: #ccffcc">
      <%--  <div class="col-lg-12">
            <label>Transaction Entries</label>
            <textarea name="txtldgr" disabled="" rows="8" class="form-control info" spellcheck=""></textarea>
        </div>  --%>
        <div class="col-lg-6 col-lg-offset-3">
        
            <select name="txtsel" style="background-color: #ffffcc" class="form-control dropdown-toggle animated-dropdown-menu bg-green-gradient text-uppercase text-black" autofocus="" data-toggle="dropdown">
                <option>Transaction Entries in Tally</option>
                <option>Bank Reconciliation</option>
                <option>Capital A/c</option>
                <option>Cash Entries</option>
                <option>Cash Purchase </option>
                <option>Credit Purchase</option>
                <option>Cash Sales</option>
                <option>Credit Sales</option>
                <option>Audit fees</option>
                <option>Travelling Expenses</option>
                <option>Stationary</option>
                <option>Bank Charges</option>
                <option>salary</option>
                <option>salary advance</option>
                <option>salary payable</option>
                <option>other Income</option>
                <option>office expenses</option>
                <option>service charges</option>
                <option>electricity Charges</option>
                <option>Telephone and Internet</option>
                <option>Petty Cash</option>
                <option>Miscellenious Expenses</option>
                <option>Rent Paid</option>
                <option>Rent Received</option>
                <option>Staff welfare Expenses</option>
                <option>Food Allowances</option>
                <option>Water Charges</option>
                <option>Printing Expenses</option>
                <option>Bonus</option>
               <option>Wages</option>
               <option>Fuel Charges</option>
               <option>Over Time Wages</option>
               <option>Mobile Recharge Expenses</option>
               <option>Journal Entries</option>
               <option>Bank Receipts</option>
               <option>Other Expenses</option>
               <option>Insurance</option>
               <option>Drawings</option>
               <option>Depreciation</option>
               <option>Repair and Maintenance</option>
               <option>Commission Received</option>
               <option>Commission Allowed</option>
               <option>Meeting Expenses</option>
               
                
              
           
                
            </select>
        </div>
        <div class="col-lg-12"><br>
            <input type="text" name="head1" value="" class="form-control"/>
        </div>
        <div class="col-lg-12">
        <br>
        <textarea name="cont1" style="font-size: 18px" rows="5" cols="20" class="form-control" required="" title="Enter text" placeholder="Enter text..." style=""></textarea>
        </div>
        <div class="col-lg-12"><br>
            <input type="text" name="head2" value="" class="form-control"/>
        </div>
        <div class="col-lg-12">
        <br>
        <textarea name="cont2" style="font-size: 18px" rows="5" cols="20" class="form-control" required="" title="Enter text" placeholder="Enter text..." style=""></textarea>
        </div>
        <div class="col-lg-12"><br>
            <input type="text" name="head3" value="" class="form-control"/>
        </div>
        <div class="col-lg-12">
        <br>
        <textarea name="cont3" style="font-size: 18px" rows="5" cols="20" class="form-control" required="" title="Enter text" placeholder="Enter text..." style=""></textarea>
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




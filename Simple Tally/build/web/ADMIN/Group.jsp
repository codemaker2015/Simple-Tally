<%-- 
    Document   : Ledger
    Created on : 7 Dec, 2016, 6:27:41 PM
    Author     : Vishnu Shaji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="HEADER.jsp" %>
<form action="ACTION/GroupAction.jsp" method="POST" enctype="multipart/form-data">
<div class="divider"></div><br>
<div class="box box-primary">
    <div class="box-header" style="background-color: #339e4a">
        <i class=""></i>
        <h2 class="box-title" style="color: #ffffff">Group</h2>
    </div>
    <div class="box-body" style="background-color: #ccffcc">
      <%--  <div class="col-lg-12">
            <label>Ledger</label>
            <textarea name="txtldgr" disabled="" rows="8" class="form-control info" spellcheck=""></textarea>
        </div>  --%>
        <div class="col-lg-6 col-lg-offset-3">
        
            <select name="txtsel" style="background-color: #ffffcc" class="form-control dropdown-toggle animated-dropdown-menu bg-green-gradient text-uppercase text-black" autofocus="" data-toggle="dropdown">
                <option>Pre Defined Groups in Tally</option>
                <option>Capital</option>
                <option>Current Assets</option>
                <option>Bank Accounts</option>
                <option>Cash- in Hand</option>
                <option>Deposit</option>
                <option>Loans & Advances(Assets)</option>
                <option>Stock-in-hand</option>
                <option>integrated Accounts-cum-Inventory</option>
                <option>Non-integrated Accounts-cum-Inventory</option>
                <option>Sundry Debtors</option>
                <option>Duties and Taxes</option>
                <option>Provisions</option>
                <option>Sundry Creditors</option>
                <option>Investments</option>
                <option>Bank OD Accounts</option>
                <option>Bank OCC A/c</option>
                <option>Secured Loans</option>
                <option>Secured Loans</option>
                <option>UnSecured Loans</option>
                <option>Loans and Advances (Asset) group</option>
                <option>Branch/Divisions</option>
                <option>sales Accounts</option>
                <option>Purchase Accounts</option>
                <option>Direct Income[Income Direct]</option>
                <option>Indirect Income[Income Indirect]</option>
                <option>Direct Expenses[Expense Direct]</option>
                <option>Indirect Expenses[Expenses Indirect]</option>
                <option>Sundry Creditors</option>
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




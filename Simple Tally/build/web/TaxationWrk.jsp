<%-- 
    Document   : Group
    Created on : 11 Dec, 2016, 11:54:12 AM
    Author     : Vishnu Shaji
--%>
<jsp:useBean class="tally.Tallyclass" id="con"/>
<%@page import="java.sql.*" %>
<%@include file="HEADER.jsp" %>

<form name="groupq">

<div class="divider"></div><br>
<div class="box box-info">
    <div class="box-header" style="background-color: #339e4a">
        <i class=""></i>
        <h2 class="box-title" style="color: #ffffff">Taxation Work</h2>
    </div>
    <div class="box-body" style="background-color: #ccffcc">
        <div class="col-lg-12">
            <p class="text-justify" style="font-size: 18px">Ledger common.....</p>
        </div>
         <div class="col-lg-8 col-lg-offset-2 "><br>
                <iframe height="480" width="640" align="center" src="https://www.youtube.com/embed/NbEmxPCjKMY" frameborder="0" allowfullscreen></iframe>
            </div>
    </div>
        
           
            
            
            
            
    
            <div class="box-footer bg-green">
               <a class="btn btn-warning pull-right btn-xs" style="background-color: #ffffcc; color: #000" onclick="window.print();"> <i class="fa fa-print"></i> PRINT</a>
            </div>
</div>
                </form>
                
<%@include file="FOOTER.jsp" %>
<%-- 
    Document   : Group
    Created on : 11 Dec, 2016, 11:54:12 AM
    Author     : Vishnu Shaji
--%>
<jsp:useBean class="tally.Tallyclass" id="con"/>
<%@page import="java.sql.*" %>
<%@include file="HEADER.jsp" %>
<script type="text/javascript">
    var request1;
    function getRequest()
    {
        if (window.XMLHttpRequest)
            return new XMLHttpRequest();
        else if (winodw.ActiveXObject)
            return new ActiveXObject("Microsoft.XMLHTTP");
        else
            return null;
    }
    function doProcessing1()
    {
        request1 = getRequest();
        var url1="AJAX/AjaxTransactionEntries.jsp?q=" + document.groupq.txtsel.value;
         
            request1.open("GET", url1, true);
           
            request1.onreadystatechange = function()
            {
                if (request1.readyState == 4 || request1.status == 200)
                {
                    document.getElementById("cndnt").innerHTML = request1.responseText;
                }
            }
            request1.send(null);
    }
</script>
<form name="groupq">

<div class="divider"></div><br>
<div class="box box-info">
    <div class="box-header" style="background-color: #339e4a">
        <i class=""></i>
        <h2 class="box-title" style="color: #ffffff">Transaction Entries</h2>
    </div>
    <div class="box-body" style="background-color: #ccffcc">
        <div class="col-lg-12">
            <p class="text-justify" style="font-size: 18px">Transaction Entries</p>
        </div>
        <%
            String s="select distinct(grp) from tbl_tran order by id";
            ResultSet rs=con.getData(s);
            
            %>
        <div class="col-lg-8 col-md-8 col-lg-offset-2 col-md-offset-2">
            <select name="txtsel" style="background-color: #ffffcc" onclick="doProcessing1()" class="form-control animated-dropdown-menu dropdown-toggle text-uppercase text-black" >
                <option>Select one</option>
                <%
                while(rs.next()){
            %>
            <option><%=rs.getString("grp")%></option>
                <%}%>
            </select><br>
        </div>
        <div class="col-lg-12" id="cndnt">
            <p class="text-center" style="font-size: 18px">Select One</p>
        </div>
            <div class="col-lg-12" id="cndnt2">
                
            </div>
            
            <div class="col-lg-8 col-lg-offset-2 "><br>
                <iframe height="480" width="640" align="center" src="https://www.youtube.com/embed/NbEmxPCjKMY" frameborder="0" allowfullscreen></iframe>
            </div>
    </div>
            <div class="box-footer bg-green">
               <a class="btn btn-warning pull-right btn-xs" style="background-color: #ffffcc; color: #000" onclick="window.print()"> <i class="fa fa-print"></i> PRINT</a>
            </div>
</div>
                </form>
<%@include file="FOOTER.jsp" %>
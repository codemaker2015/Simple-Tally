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
        var url1="AJAX/AjaxGroup.jsp?q=" + document.groupq.txtsel.value;
         
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
        <h2 class="box-title" style="color: #ffffff">Group</h2>
    </div>
    <div class="box-body" style="background-color: #ccffcc">
        <div class="col-lg-12">
            <p class="text-justify" style="font-size: 18px">Groups are collection of ledgers of the same nature. Account Groups are maintained to determine the hierarchy of ledgers Accounts which is helpful in determining and presenting meaningful and compliant reports. Tally has the flexibility of setting user required chart of accounts we can group the ledger accounts under the required groups at the time of creating the chart of accounts or you can alter them at any time. Group behavior is classified in to Capital or Revenue and more specifically in to Assets, liabilities, Income and Expenditure. The Group ascertains whether the same will affect profit and loss Account which is revenue in nature or Balance sheet which is Capital in Nature.
              By default, Tally.ERP 9 provides a list of Groups called pre-defined groups. The user can create any number of Primary Groups and Sub Groups which are again grouped under a Primary Group/Sub Group. There are 28 pre-defined Groups in Tally.ERP 9, out of which 15 are Primary Groups and 13 are Subgroups. 15 Primary Groups 13
</p>
        </div>
        <%
            
           
            String s="select distinct(grp) from tbl_group order by id";
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
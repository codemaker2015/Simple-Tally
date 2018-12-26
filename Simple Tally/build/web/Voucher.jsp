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
        var url1="AJAX/AjaxVoucher.jsp?q=" + document.groupq.txtsel.value;
         
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
        <h2 class="box-title" style="color: #ffffff">Voucher</h2>
    </div>
    <div class="box-body" style="background-color: #ccffcc">
        <div class="col-lg-12">
            <p class="text-justify" style="font-size: 18px">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae rhoncus lectus. Vivamus id leo eu lectus semper ullamcorper. Phasellus quis lorem tellus. Pellentesque ex odio, consequat at magna non, tincidunt sollicitudin ante. Nunc vulputate sit amet libero non finibus. Donec quis ullamcorper erat. Proin aliquet eget nulla ac finibus. Quisque a tortor finibus, euismod purus id, tristique orci. Nullam finibus lorem consequat arcu tempor congue. Aliquam egestas at turpis in euismod.

Morbi massa elit, sollicitudin ac bibendum a, mollis quis magna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam auctor orci massa, ut iaculis elit fringilla non. Mauris faucibus lectus gravida cursus auctor. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ultrices pellentesque gravida. Suspendisse sapien libero, tempus et laoreet eget, tempus sit amet odio.

Praesent nec lectus venenatis neque ornare efficitur vel eu neque. Nam aliquet accumsan rutrum. Sed nisi mauris, sodales a tempus et, sodales rhoncus massa. Sed vitae eleifend quam. Fusce posuere lorem a libero accumsan varius. Mauris pellentesque urna vel sem malesuada, et faucibus mauris tincidunt. Pellentesque eu lacus quis arcu lacinia condimentum vel ac magna.

Praesent semper, orci at dictum sodales, nunc magna varius tellus, ut iaculis sem felis eget felis. Morbi id ultrices lectus, vitae accumsan dolor. Proin dapibus ac purus in luctus. Donec ac lectus at velit eleifend ultricies ut sit amet neque. Phasellus gravida, enim vel condimentum vehicula, magna orci rutrum arcu, feugiat malesuada orci justo accumsan nunc. Aenean pretium, odio vel dignissim facilisis, tellus sem dictum velit, at imperdiet diam diam eget sem. Mauris in massa nibh. Sed felis nisi, fringilla ut magna vel, vehicula efficitur ante. Maecenas ac nulla vitae nulla molestie sollicitudin at at lacus. Phasellus tempor augue ac eros semper, nec vehicula felis bibendum.

Morbi orci eros, semper id pharetra id, volutpat eget quam. Phasellus non eros nec nisi vehicula accumsan. Cras tempus fringilla metus ac posuere. Curabitur non est tincidunt, ornare leo vitae, fermentum sapien. Aliquam erat volutpat. Donec eu euismod sem. In dignissim massa nec arcu pellentesque tincidunt. Nulla ac semper ante. Phasellus ut consequat dui</p>
        </div>
        <%
            String s="select distinct(grp) from tbl_voucher order by id";
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
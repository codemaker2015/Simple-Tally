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
        <h2 class="box-title" style="color: #ffffff">ShortCuts</h2>
    </div>
    <div class="box-body" style="background-color: #ccffcc">
        
        <table border="1" class="table table-bordered table-responsive table-hover ">
            <thead>
                <tr>
                    <th>Shortcut</th>
                    <th>Features</th>
                </tr>
            </thead>
            <tbody>
                
                
                <tr>
                    <td>F11</td>
                    <td>donec semper lacus penatibus tellus sed suscipit sollicitudin sagittis aenean maecenas dictum dolor at eleifend sit enim ac viverra id euismod neque lorem vestibulum sollicitudin vel nam leo risus massa pede sapien donec duis neque id laboris non in nascetur non ullamcorper senectus ipsum lectus lacus vel etiam ut vel tristique lorem orci egestas donec arcu donec eget neque nunc interdum ipsum gravida ut odio malesuada in proident ad varius tortor bibendum orci ac neque dui aliquam convallis commodo nec sagittis donec quam vivamus praesent ipsum mauris sed a congue in sit sit lobortis ac nec qui aliquam amet curabitur</td>
                </tr>
                <tr>
                    <td>F7</td>
                    <td>donec semper lacus penatibus tellus sed suscipit sollicitudin sagittis aenean maecenas dictum dolor at eleifend sit enim ac viverra id euismod neque lorem vestibulum sollicitudin vel nam leo risus massa pede sapien donec duis neque id laboris non in nascetur non ullamcorper senectus ipsum lectus lacus vel etiam ut vel tristique lorem orci egestas donec arcu donec eget neque nunc interdum ipsum gravida ut odio malesuada in proident ad varius tortor bibendum orci ac neque dui aliquam convallis commodo nec sagittis donec quam vivamus praesent ipsum mauris sed a congue in sit sit lobortis ac nec qui aliquam amet curabitur</td>
                </tr>
                
                
            </tbody>
        </table>

         
    </div>
        
           
            
            
            
            
    
            <div class="box-footer bg-green">
               <a class="btn btn-warning pull-right btn-xs" style="background-color: #ffffcc; color: #000" onclick="window.print();"> <i class="fa fa-print"></i> PRINT</a>
            </div>
</div>
                </form>
                
<%@include file="FOOTER.jsp" %>
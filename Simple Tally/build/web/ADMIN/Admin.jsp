<jsp:useBean class="tally.Tallyclass" id="con"/>
<%@page import="java.sql.*" %>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Registration Page</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="../TEMPLATE/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../TEMPLATE/font-awesome/css/font-awesome.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../TEMPLATE/dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="../TEMPLATE/plugins/iCheck/square/blue.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition register-page">
    <script type="text/javascript" src="jQuerry/pwd.js"></script>
<div class="register-box">
  <div class="register-logo">
    <a href="#"><b>SimpleTally</b></a>
  </div>
    
  <div class="register-box-body">
    <p class="login-box-msg">Update your profile</p>
    
    <form action="PrflUpdt.jsp" name="pass1" method="post">
        <%
        String uid=session.getAttribute("id").toString();
        String sel="select * from tbl_admin where id='"+uid+"'";
        ResultSet rs=con.getData(sel);
        while(rs.next()){
        %>
        <div id="pwd">
          <div class="form-group has-feedback">
          <input type="text" autocomplete="off" value="<%=rs.getString("tname")%>" name="tname" class="form-control" placeholder="Full name">
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
        <div class="form-group has-feedback">
            <input type="text" autocomplete="off" class="form-control" value="<%=rs.getString("tphone")%>" name="tphone" pattern="[0-9]{10,12}" required title="Enter valid mobile number..." placeholder="Phone">
        <span class="glyphicon glyphicon-phone form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
          <input type="text" autocomplete="off" class="form-control" value="<%=rs.getString("temail")%>" name="temail"  placeholder="Email">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
          <input type="text" autocomplete="off" class="form-control" value="<%=rs.getString("tpwd")%>" name="tpwd" placeholder="Password">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password"  class="form-control" name="tpwd1" placeholder="Retype password">
        <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
      </div>
        
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
          
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
            <button type="submit" onclick="return valid();" class="btn btn-primary btn-block btn-flat">Update</button>
        </div>
        <div id="errPwd" class="text-danger text-bold text-center"></div>
        <!-- /.col -->
      </div>
        
        
        <%
            
        }
            
            %>
        </div>
    </form>

        <a href="Group.jsp" class="pull-left">Go back</a><a href="PProfPic.jsp" class=" pull-right">Change Photo</a>

    
  </div>
  <!-- /.form-box -->
</div>
<!-- /.register-box -->

<!-- jQuery 2.2.3 -->
<script src="../TEMPLATE/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="../TEMPLATE/bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="../TEMPLATE/plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>
</body>
</html>

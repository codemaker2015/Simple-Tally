<!DOCTYPE html>

<jsp:useBean class="tally.Tallyclass" id="con"/>
<%@page  import="java.sql.*" %>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>LaBasil</title>
  <!-- Tell the browser to be responsive to screen widnnh -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="../TEMPLATE/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../TEMPLATE/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../TEMPLATE/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../TEMPLATE/dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-green layout-top-nav">
  
    <div class="wrapper">
  <header class="main-header">
    <nav class="navbar navbar-static-top">
      <div class="container">
        <div class="navbar-header">
            <a href="" class="navbar-brand" style="color: #660000"><b>Simple </b><b style="color: #660000">Tally</b></a>
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
            <i class="fa fa-bars"></i>
          </button>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
          <ul class="nav navbar-nav">
              <%--
            <li class=""><a href="#">Link <span class="sr-only">(current)</span></a></li>
            <li><a href="#">Link</a></li>       
            --%>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle animated-dropdown-menu" data-toggle="dropdown">Tally Online <span class="caret"></span></a>
              <ul class="dropdown-menu animated-dropdown-menu " style="background-color: #ffffcc; " role="menu">
                  <li><a href="Group.jsp" class="text-black">Groups</a></li>
                  <li class="divider"></li>
                  <li><a href="Ledger.jsp" class="text-black">Ledger</a></li>
                  <li class="divider"></li>
                  <li><a href="Voucher.jsp" class="text-black">Voucher</a></li>
                  <li class="divider"></li>
                  <li><a href="Voucher.jsp" class="text-black">Company Info</a></li>
                  <li class="divider"></li>
                  <li><a href="Voucher.jsp" class="text-black">Account with Inventory</a></li>
                  <li class="divider"></li>
                  <li><a href="Display Of Account.jsp" class="text-black">Display of Accounts</a></li>
              <%--  <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
                <li class="divider"></li>
                <li><a href="#">One more separated link</a></li>    --%>
              </ul>
             
            </li>
            <li class="dropdown">
                 <a href="#" class="dropdown-toggle animated-dropdown-menu" data-toggle="dropdown">Tally Online Entry<span class="caret"></span></a>
              <ul class="dropdown-menu animated-dropdown-menu" style="background-color: #ffffcc; " role="menu">
                  <li><a href="TransactionEntries.jsp" class="text-black">Transaction Entries</a></li>
                  <li class="divider"></li>
                  <li><a href="#" class="text-black">Taxation Work in Tally</a></li>
              <%--  <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
                <li class="divider"></li>
                <li><a href="#">One more separated link</a></li>    --%>
              </ul>
            </li>
            
            <li class="dropdown">
                 <a href="#" class="dropdown-toggle animated-dropdown-menu" data-toggle="dropdown">Tally Shortcut<span class=""></span></a>
                 <%--        <ul class="dropdown-menu animated-dropdown-menu" role="menu">
                  <li><a href="Group.jsp">Transaction Entries</a></li>
                  <li class="divider"></li>
                  <li><a href="Ledger.jsp">Taxation Work in Tally</a></li>
        <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
                <li class="divider"></li>
                <li><a href="#">One more separated link</a></li>   
              </ul> --%>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle animated-dropdown-menu" data-toggle="dropdown">Tally Jobs<span class=""></span></a>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle animated-dropdown-menu" data-toggle="dropdown">Contact Me<span class=""></span></a>
            </li>
          </ul>
     <%--     <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
              <input type="text" class="form-control" id="navbar-search-input" placeholder="Search">
            </div>
          </form>   --%>
        </div>
        <!-- /.navbar-collapse -->
        <!-- Navbar Right Menu -->
        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <!-- Messages: style can be found in dropdown.less-->
            
            
            <%--
            
            <li class="dropdown messages-menu">
              <!-- Menu toggle button -->
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-envelope-o"></i>
                <span class="label label-success">4</span>
              </a>
              <ul class="dropdown-menu">
                <li class="header">You have 4 messages</li>
                <li>
                  <!-- inner menu: contains the messages -->
                  <ul class="menu">
                    <li><!-- start message -->
                      <a href="#">
                        <div class="pull-left">
                          <!-- User Image -->
                          <img src="../TEMPLATE/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                        </div>
                        <!-- Message title and timestamp -->
                        <h4>
                          Support Team
                          <small><i class="fa fa-clock-o"></i> 5 mins</small>
                        </h4>
                        <!-- The message -->
                        <p>Why not buy a new awesome theme?</p>
                      </a>
                    </li>
                    <!-- end message -->
                  </ul>
                  <!-- /.menu -->
                </li>
                <li class="footer"><a href="#">See All Messages</a></li>
              </ul>
            </li>
            <!-- /.messages-menu -->

            <!-- Notifications Menu -->
            <li class="dropdown notifications-menu">
              <!-- Menu toggle button -->
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-bell-o"></i>
                <span class="label label-warning">10</span>
              </a>
              <ul class="dropdown-menu">
                <li class="header">You have 10 notifications</li>
                <li>
                  <!-- Inner Menu: contains the notifications -->
                  <ul class="menu">
                    <li><!-- start notification -->
                      <a href="#">
                        <i class="fa fa-users text-aqua"></i> 5 new members joined today
                      </a>
                    </li>
                    <!-- end notification -->
                  </ul>
                </li>
                <li class="footer"><a href="#">View all</a></li>
              </ul>
            </li>
            <!-- Tasks Menu -->
            <li class="dropdown tasks-menu">
              <!-- Menu Toggle Button -->
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-flag-o"></i>
                <span class="label label-danger">9</span>
              </a>
              <ul class="dropdown-menu">
                <li class="header">You have 9 tasks</li>
                <li>
                  <!-- Inner menu: contains the tasks -->
                  <ul class="menu">
                    <li><!-- Task item -->
                      <a href="#">
                        <!-- Task title and progress text -->
                        <h3>
                          Design some buttons
                          <small class="pull-right">20%</small>
                        </h3>
                        <!-- The progress bar -->
                        <div class="progress xs">
                          <!-- Change the css width attribute to simulate progress -->
                          <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                            <span class="sr-only">20% Complete</span>
                          </div>
                        </div>
                      </a>
                    </li>
                    <!-- end task item -->
                  </ul>
                </li>
                <li class="footer">
                  <a href="#">View all tasks</a>
                </li>
              </ul>
            </li>   
            --%>
            <%
                String uid=session.getAttribute("id").toString();
                String sel="select * from tbl_admin where id='"+uid+"'";
                ResultSet rs=con.getData(sel);
                while(rs.next()){
                %>
            <!-- User Account Menu -->
            <li class="dropdown user user-menu pull-righ">
              <!-- Menu Toggle Button -->
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" >
                <!-- The user image in the navbar-->
                <img src="uPrfl/<%=rs.getString("tphoto")%>" class="user-image" alt="User Image">
                <!-- hidden-xs hides the username on small devices so only the image appears. -->
                <span class="hidden-xs"><%=rs.getString("tname")%></span>
              </a>
              <ul class="dropdown-menu">
                <!-- The user image in the menu -->
                <li class="user-header">
                    <img src="uPrfl/<%=rs.getString("tphoto")%>" class="img-circle" alt="User Image">

                  <p>
                    
                      <label><%=rs.getString("tname")%></label>
                  </p>
                </li>
                <!-- Menu Body -->
        <%--        <li class="user-body">
                  <div class="row">
                    <div class="col-xs-4 text-center">
                      <a href="#">Followers</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Sales</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Friends</a>
                    </div>
                  </div>
                  <!-- /.row -->
                </li>    --%>
                <!-- Menu Footer-->
                <li class="user-footer">
                  <div class="pull-left">
                      <a href="Admin.jsp" class="btn btn-default btn-flat" >Profile</a>
                  </div>
                  <div class="pull-right">
                      <a href="logOut.jsp" class="btn btn-default btn-flat">Sign out</a>
                  </div>
                </li>
              </ul>
            </li>   <%
                }
            %>
          </ul>
        </div>
        <!-- /.navbar-custom-menu -->
      </div>
      <!-- /.container-fluid -->
    </nav>
  </header>
  <!-- Full Width Column    dadada -->

  <div class="content-wrapper" style="background-color: #ffffcc;">
    <div class="container" >
        <section class="content" >
      
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class DisplayOfAccount_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/HEADER.jsp");
    _jspx_dependants.add("/FOOTER.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      tally.Tallyclass con = null;
      synchronized (_jspx_page_context) {
        con = (tally.Tallyclass) _jspx_page_context.getAttribute("con", PageContext.PAGE_SCOPE);
        if (con == null){
          con = new tally.Tallyclass();
          _jspx_page_context.setAttribute("con", con, PageContext.PAGE_SCOPE);
        }
      }
      out.write('\n');
      out.write('\n');
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("  <title>LaBasil</title>\n");
      out.write("  <!-- Tell the browser to be responsive to screen width -->\n");
      out.write("  <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n");
      out.write("  <!-- Bootstrap 3.3.6 -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"TEMPLATE/bootstrap/css/bootstrap.min.css\">\n");
      out.write("  <!-- Font Awesome -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"TEMPLATE/font-awesome/css/font-awesome.min.css\">\n");
      out.write("  <!-- Ionicons -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css\">\n");
      out.write("  <!-- Theme style -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"TEMPLATE/dist/css/AdminLTE.min.css\">\n");
      out.write("  <!-- AdminLTE Skins. Choose a skin from the css/skins\n");
      out.write("       folder instead of downloading all of them to reduce the load. -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"TEMPLATE/dist/css/skins/_all-skins.min.css\">\n");
      out.write("\n");
      out.write("  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("  <!--[if lt IE 9]>\n");
      out.write("  <script src=\"https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\n");
      out.write("  <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n");
      out.write("  <![endif]-->\n");
      out.write("</head>\n");
      out.write("<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->\n");
      out.write("<body class=\"hold-transition skin-green layout-top-nav\">\n");
      out.write("    <!-- Go to www.addthis.com/dashboard to customize your tools --> \n");
      out.write("    <div class=\"wrapper\">\n");
      out.write("  <header class=\"main-header\">\n");
      out.write("    <nav class=\"navbar navbar-static-top\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"navbar-header\">\n");
      out.write("            <a href=\"\" class=\"navbar-brand\" style=\"color: #660000\"><b>Simple </b><b style=\"color: #660000\">Tally</b></a>\n");
      out.write("          <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar-collapse\">\n");
      out.write("            <i class=\"fa fa-bars\"></i>\n");
      out.write("          </button>\n");
      out.write("        </div>\n");
      out.write("        <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("        <div class=\"collapse navbar-collapse pull-left\" id=\"navbar-collapse\">\n");
      out.write("          <ul class=\"nav navbar-nav\">\n");
      out.write("              ");
      out.write("\n");
      out.write("            <li class=\"dropdown\">\n");
      out.write("              <a href=\"#\" class=\"dropdown-toggle animated-dropdown-menu\" data-toggle=\"dropdown\">Tally Online <span class=\"caret\"></span></a>\n");
      out.write("              <ul class=\"dropdown-menu animated-dropdown-menu\" role=\"menu\" style=\"background-color: #ffffcc;\">\n");
      out.write("                  <li><a href=\"Group.jsp\" class=\"text-black\">Groups</a></li>\n");
      out.write("                  <li class=\"divider\"></li>\n");
      out.write("                  <li><a href=\"Ledger.jsp\" class=\"text-black\">Ledger</a></li>\n");
      out.write("                  <li class=\"divider\"></li>\n");
      out.write("                  <li><a href=\"Voucher.jsp\" class=\"text-black\">Voucher</a></li>\n");
      out.write("                  <li class=\"divider\"></li>\n");
      out.write("                  <li><a href=\"Voucher.jsp\" class=\"text-black\">Company Info</a></li>\n");
      out.write("                  <li class=\"divider\"></li>\n");
      out.write("                  <li><a href=\"Voucher.jsp\" class=\"text-black\">Account with Inventory</a></li>\n");
      out.write("                  <li class=\"divider\"></li>\n");
      out.write("                  <li><a href=\"DisplayOfAccount.jsp\" class=\"text-black\">Display of Accounts</a></li>\n");
      out.write("              ");
      out.write("\n");
      out.write("              </ul>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"dropdown\">\n");
      out.write("                 <a href=\"#\" class=\"dropdown-toggle animated-dropdown-menu\" data-toggle=\"dropdown\">Tally Online Entry<span class=\"caret\"></span></a>\n");
      out.write("              <ul class=\"dropdown-menu animated-dropdown-menu\" style=\"background-color: #ffffcc; \" role=\"menu\">\n");
      out.write("                  <li><a href=\"TransactionEntries.jsp\" class=\"text-black\">Transaction Entries</a></li>\n");
      out.write("                  <li class=\"divider\"></li>\n");
      out.write("                  <li><a href=\"TaxationWrk.jsp\" class=\"text-black\">Taxation Work in Tally</a></li>\n");
      out.write("              ");
      out.write("\n");
      out.write("              </ul>\n");
      out.write("            </li>\n");
      out.write("            <li >\n");
      out.write("                <a href=\"ShortCut.jsp\" >Tally Shortcut</a>\n");
      out.write("              </li>\n");
      out.write("              <li >\n");
      out.write("                  <a href=\"TallyJobs.jsp\"  >Tally Jobs</a>\n");
      out.write("            </li>\n");
      out.write("            <li >\n");
      out.write("                <a href=\"Contact.jsp\" >Contact Me</a>\n");
      out.write("            </li>\n");
      out.write("          </ul>\n");
      out.write("     ");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <!-- /.navbar-collapse -->\n");
      out.write("        <!-- Navbar Right Menu -->\n");
      out.write("        <div class=\"navbar-custom-menu\">\n");
      out.write("          <ul class=\"nav navbar-nav\">\n");
      out.write("            <!-- Messages: style can be found in dropdown.less-->\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            ");
      out.write("\n");
      out.write("            \n");
      out.write("            <!-- User Account Menu -->\n");
      out.write("     ");
      out.write("\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("        <!-- /.navbar-custom-menu -->\n");
      out.write("      </div>\n");
      out.write("      <!-- /.container-fluid -->\n");
      out.write("    </nav>\n");
      out.write("  </header>\n");
      out.write("  <!-- Full Width Column    dadada -->\n");
      out.write("  \n");
      out.write("  <div class=\"content-wrapper\" style=\"background-color: #ffffcc\" >\n");
      out.write("      <div class=\"container\"  >\n");
      out.write("        <section class=\"content\" >\n");
      out.write("      ");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("    var request1;\n");
      out.write("    function getRequest()\n");
      out.write("    {\n");
      out.write("        if (window.XMLHttpRequest)\n");
      out.write("            return new XMLHttpRequest();\n");
      out.write("        else if (winodw.ActiveXObject)\n");
      out.write("            return new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("        else\n");
      out.write("            return null;\n");
      out.write("    }\n");
      out.write("    function doProcessing1()\n");
      out.write("    {\n");
      out.write("        request1 = getRequest();\n");
      out.write("        var url1=\"AJAX/AjaxDisplayOfAccount.jsp?q=\" + document.groupq.txtsel.value;\n");
      out.write("         \n");
      out.write("            request1.open(\"GET\", url1, true);\n");
      out.write("           \n");
      out.write("            request1.onreadystatechange = function()\n");
      out.write("            {\n");
      out.write("                if (request1.readyState == 4 || request1.status == 200)\n");
      out.write("                {\n");
      out.write("                    document.getElementById(\"cndnt\").innerHTML = request1.responseText;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            request1.send(null);\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("<form name=\"groupq\">\n");
      out.write("\n");
      out.write("<div class=\"divider\"></div><br>\n");
      out.write("<div class=\"box box-info\">\n");
      out.write("    <div class=\"box-header\" style=\"background-color: #339e4a\">\n");
      out.write("        <i class=\"\"></i>\n");
      out.write("        <h2 class=\"box-title\" style=\"color: #ffffff\">Voucher</h2>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"box-body\" style=\"background-color: #ccffcc\">\n");
      out.write("        <div class=\"col-lg-12\">\n");
      out.write("            <p class=\"text-justify\" style=\"font-size: 18px\">Display of Accounts.</p>\n");
      out.write("        </div>\n");
      out.write("        ");

            String s="select distinct(grp) from tbl_doac order by id";
            ResultSet rs=con.getData(s);
            
            
      out.write("\n");
      out.write("        <div class=\"col-lg-8 col-md-8 col-lg-offset-2 col-md-offset-2\">\n");
      out.write("            <select name=\"txtsel\" style=\"background-color: #ffffcc\" onclick=\"doProcessing1()\" class=\"form-control animated-dropdown-menu dropdown-toggle text-uppercase text-black\" >\n");
      out.write("                <option>Select one</option>\n");
      out.write("                ");

                while(rs.next()){
            
      out.write("\n");
      out.write("            <option>");
      out.print(rs.getString("grp"));
      out.write("</option>\n");
      out.write("                ");
}
      out.write("\n");
      out.write("            </select><br>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-lg-12\" id=\"cndnt\">\n");
      out.write("            <p class=\"text-center\" style=\"font-size: 18px\">Select One</p>\n");
      out.write("        </div>\n");
      out.write("            <div class=\"col-lg-12\" id=\"cndnt2\">\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"col-lg-8 col-lg-offset-2 \"><br>\n");
      out.write("                <iframe height=\"480\" width=\"640\" align=\"center\" src=\"https://www.youtube.com/embed/NbEmxPCjKMY\" frameborder=\"0\" allowfullscreen></iframe>\n");
      out.write("            </div>\n");
      out.write("    </div>\n");
      out.write("            <div class=\"box-footer bg-green\">\n");
      out.write("               <a class=\"btn btn-warning pull-right btn-xs\" style=\"background-color: #ffffcc; color: #000\" onclick=\"window.print()\"> <i class=\"fa fa-print\"></i> PRINT</a>\n");
      out.write("            </div>\n");
      out.write("</div>\n");
      out.write("                </form>\n");
      out.write("\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("      <!-- /.content -->\n");
      out.write("    </div>\n");
      out.write("    <!-- /.container -->\n");
      out.write("  </div>\n");
      out.write("  <!-- /.content-wrapper --> \n");
      out.write("  \n");
      out.write("  <footer class=\"main-footer bg-green-active\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"pull-right hidden-xs\">\n");
      out.write("          <b>Contact: <a href=\"Contact.jsp\" style=\"color: #0000ff\">Basil Joy</a></b> \n");
      out.write("      </div>\n");
      out.write("      <strong>Copyright &copy; 2014-2016 <a href=\"Contact.jsp\" style=\"color: #0000ff\">Basil Joy</a>.</strong> All rights\n");
      out.write("      reserved.\n");
      out.write("    </div>\n");
      out.write("    <!-- /.container -->\n");
      out.write("  </footer>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- ./wrapper -->\n");
      out.write("<!-- jQuery 2.2.3 -->\n");
      out.write("<script src=\"TEMPLATE/plugins/jQuery/jquery-2.2.3.min.js\"></script>\n");
      out.write("<!-- Bootstrap 3.3.6 -->\n");
      out.write("<script src=\"TEMPLATE/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("<!-- SlimScroll -->\n");
      out.write("<script src=\"TEMPLATE/plugins/slimScroll/jquery.slimscroll.min.js\"></script>\n");
      out.write("<!-- FastClick -->\n");
      out.write("<script src=\"TEMPLATE/plugins/fastclick/fastclick.js\"></script>\n");
      out.write("<!-- AdminLTE App -->\n");
      out.write("<script src=\"TEMPLATE/dist/js/app.min.js\"></script>\n");
      out.write("<!-- AdminLTE for demo purposes -->\n");
      out.write("<script src=\"TEMPLATE/dist/js/demo.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-58761aa20f451e9e\"></script> \n");
      out.write("<!-- Google plus -->\n");
      out.write("<script type=\"text/javascript\" src=\"TEMPLATE/jQuerry/google.js\"></script>\n");
      out.write("<div id=\"fb-root\"></div>\n");
      out.write("<!-- Facebook -->\n");
      out.write("<script src=\"TEMPLATE/jQuerry/facebook.js\"></script>\n");
      out.write("<!-- Twitter -->\n");
      out.write("<script src=\"TEMPLATE/jQuerry/twitter.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

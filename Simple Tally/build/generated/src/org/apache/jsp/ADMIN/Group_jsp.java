package org.apache.jsp.ADMIN;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Group_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/ADMIN/HEADER.jsp");
    _jspx_dependants.add("/ADMIN/FOOTER.jsp");
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      tally.Tallyclass con = null;
      synchronized (_jspx_page_context) {
        con = (tally.Tallyclass) _jspx_page_context.getAttribute("con", PageContext.PAGE_SCOPE);
        if (con == null){
          con = new tally.Tallyclass();
          _jspx_page_context.setAttribute("con", con, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("  <title>LaBasil</title>\n");
      out.write("  <!-- Tell the browser to be responsive to screen widnnh -->\n");
      out.write("  <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\n");
      out.write("  <!-- Bootstrap 3.3.6 -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"../TEMPLATE/bootstrap/css/bootstrap.min.css\">\n");
      out.write("  <!-- Font Awesome -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"../TEMPLATE/font-awesome/css/font-awesome.min.css\">\n");
      out.write("  <!-- Ionicons -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css\">\n");
      out.write("  <!-- Theme style -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"../TEMPLATE/dist/css/AdminLTE.min.css\">\n");
      out.write("  <!-- AdminLTE Skins. Choose a skin from the css/skins\n");
      out.write("       folder instead of downloading all of them to reduce the load. -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"../TEMPLATE/dist/css/skins/_all-skins.min.css\">\n");
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
      out.write("  \n");
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
      out.write("              <ul class=\"dropdown-menu animated-dropdown-menu \" style=\"background-color: #ffffcc; \" role=\"menu\">\n");
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
      out.write("                  <li><a href=\"Display Of Account.jsp\" class=\"text-black\">Display of Accounts</a></li>\n");
      out.write("              ");
      out.write("\n");
      out.write("              </ul>\n");
      out.write("             \n");
      out.write("            </li>\n");
      out.write("            <li class=\"dropdown\">\n");
      out.write("                 <a href=\"#\" class=\"dropdown-toggle animated-dropdown-menu\" data-toggle=\"dropdown\">Tally Online Entry<span class=\"caret\"></span></a>\n");
      out.write("              <ul class=\"dropdown-menu animated-dropdown-menu\" style=\"background-color: #ffffcc; \" role=\"menu\">\n");
      out.write("                  <li><a href=\"TransactionEntries.jsp\" class=\"text-black\">Transaction Entries</a></li>\n");
      out.write("                  <li class=\"divider\"></li>\n");
      out.write("                  <li><a href=\"#\" class=\"text-black\">Taxation Work in Tally</a></li>\n");
      out.write("              ");
      out.write("\n");
      out.write("              </ul>\n");
      out.write("            </li>\n");
      out.write("            \n");
      out.write("            <li class=\"dropdown\">\n");
      out.write("                 <a href=\"#\" class=\"dropdown-toggle animated-dropdown-menu\" data-toggle=\"dropdown\">Tally Shortcut<span class=\"\"></span></a>\n");
      out.write("                 ");
      out.write("\n");
      out.write("            </li>\n");
      out.write("            <li class=\"dropdown\">\n");
      out.write("                <a href=\"#\" class=\"dropdown-toggle animated-dropdown-menu\" data-toggle=\"dropdown\">Tally Jobs<span class=\"\"></span></a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"dropdown\">\n");
      out.write("                <a href=\"#\" class=\"dropdown-toggle animated-dropdown-menu\" data-toggle=\"dropdown\">Contact Me<span class=\"\"></span></a>\n");
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
      out.write("            ");

                String uid=session.getAttribute("id").toString();
                String sel="select * from tbl_admin where id='"+uid+"'";
                ResultSet rs=con.getData(sel);
                while(rs.next()){
                
      out.write("\n");
      out.write("            <!-- User Account Menu -->\n");
      out.write("            <li class=\"dropdown user user-menu pull-righ\">\n");
      out.write("              <!-- Menu Toggle Button -->\n");
      out.write("              <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" >\n");
      out.write("                <!-- The user image in the navbar-->\n");
      out.write("                <img src=\"uPrfl/");
      out.print(rs.getString("tphoto"));
      out.write("\" class=\"user-image\" alt=\"User Image\">\n");
      out.write("                <!-- hidden-xs hides the username on small devices so only the image appears. -->\n");
      out.write("                <span class=\"hidden-xs\">");
      out.print(rs.getString("tname"));
      out.write("</span>\n");
      out.write("              </a>\n");
      out.write("              <ul class=\"dropdown-menu\">\n");
      out.write("                <!-- The user image in the menu -->\n");
      out.write("                <li class=\"user-header\">\n");
      out.write("                    <img src=\"uPrfl/");
      out.print(rs.getString("tphoto"));
      out.write("\" class=\"img-circle\" alt=\"User Image\">\n");
      out.write("\n");
      out.write("                  <p>\n");
      out.write("                    \n");
      out.write("                      <label>");
      out.print(rs.getString("tname"));
      out.write("</label>\n");
      out.write("                  </p>\n");
      out.write("                </li>\n");
      out.write("                <!-- Menu Body -->\n");
      out.write("        ");
      out.write("\n");
      out.write("                <!-- Menu Footer-->\n");
      out.write("                <li class=\"user-footer\">\n");
      out.write("                  <div class=\"pull-left\">\n");
      out.write("                      <a href=\"Admin.jsp\" class=\"btn btn-default btn-flat\" >Profile</a>\n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"pull-right\">\n");
      out.write("                      <a href=\"logOut.jsp\" class=\"btn btn-default btn-flat\">Sign out</a>\n");
      out.write("                  </div>\n");
      out.write("                </li>\n");
      out.write("              </ul>\n");
      out.write("            </li>   ");

                }
            
      out.write("\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("        <!-- /.navbar-custom-menu -->\n");
      out.write("      </div>\n");
      out.write("      <!-- /.container-fluid -->\n");
      out.write("    </nav>\n");
      out.write("  </header>\n");
      out.write("  <!-- Full Width Column    dadada -->\n");
      out.write("\n");
      out.write("  <div class=\"content-wrapper\" style=\"background-color: #ffffcc;\">\n");
      out.write("    <div class=\"container\" >\n");
      out.write("        <section class=\"content\" >\n");
      out.write("      ");
      out.write("\n");
      out.write("<form action=\"ACTION/GroupAction.jsp\" method=\"POST\" enctype=\"multipart/form-data\">\n");
      out.write("<div class=\"divider\"></div><br>\n");
      out.write("<div class=\"box box-primary\">\n");
      out.write("    <div class=\"box-header\" style=\"background-color: #339e4a\">\n");
      out.write("        <i class=\"\"></i>\n");
      out.write("        <h2 class=\"box-title\" style=\"color: #ffffff\">Group</h2>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"box-body\" style=\"background-color: #ccffcc\">\n");
      out.write("      ");
      out.write("\n");
      out.write("        <div class=\"col-lg-6 col-lg-offset-3\">\n");
      out.write("        \n");
      out.write("            <select name=\"txtsel\" style=\"background-color: #ffffcc\" class=\"form-control dropdown-toggle animated-dropdown-menu bg-green-gradient text-uppercase text-black\" autofocus=\"\" data-toggle=\"dropdown\">\n");
      out.write("                <option>Pre Defined Groups in Tally</option>\n");
      out.write("                <option>Capital</option>\n");
      out.write("                <option>Current Assets</option>\n");
      out.write("                <option>Bank Accounts</option>\n");
      out.write("                <option>Cash- in Hand</option>\n");
      out.write("                <option>Deposit</option>\n");
      out.write("                <option>Loans & Advances(Assets)</option>\n");
      out.write("                <option>Stock-in-hand</option>\n");
      out.write("                <option>integrated Accounts-cum-Inventory</option>\n");
      out.write("                <option>Non-integrated Accounts-cum-Inventory</option>\n");
      out.write("                <option>Sundry Debtors</option>\n");
      out.write("                <option>Duties and Taxes</option>\n");
      out.write("                <option>Provisions</option>\n");
      out.write("                <option>Sundry Creditors</option>\n");
      out.write("                <option>Investments</option>\n");
      out.write("                <option>Bank OD Accounts</option>\n");
      out.write("                <option>Bank OCC A/c</option>\n");
      out.write("                <option>Secured Loans</option>\n");
      out.write("                <option>Secured Loans</option>\n");
      out.write("                <option>UnSecured Loans</option>\n");
      out.write("                <option>Loans and Advances (Asset) group</option>\n");
      out.write("                <option>Branch/Divisions</option>\n");
      out.write("                <option>sales Accounts</option>\n");
      out.write("                <option>Purchase Accounts</option>\n");
      out.write("                <option>Direct Income[Income Direct]</option>\n");
      out.write("                <option>Indirect Income[Income Indirect]</option>\n");
      out.write("                <option>Direct Expenses[Expense Direct]</option>\n");
      out.write("                <option>Indirect Expenses[Expenses Indirect]</option>\n");
      out.write("                <option>Sundry Creditors</option>\n");
      out.write("            </select>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-lg-12\">\n");
      out.write("        <br>\n");
      out.write("        <textarea name=\"tt\" style=\"font-size: 18px\" rows=\"12\" cols=\"20\" class=\"form-control\" required=\"\" title=\"Enter text\" placeholder=\"Enter text...\" style=\"\"></textarea>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-lg-6 col-lg-offset-3\">\n");
      out.write("            <label>Video</label>\n");
      out.write("            <input type=\"file\" name=\"vid\" value=\"\" autocomplete=\"off\" class=\"form-control\" accept=\"video/mp4\"/>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-lg-6 col-lg-offset-3\">\n");
      out.write("            <label>Image</label>\n");
      out.write("            <input type=\"file\" name=\"img\" value=\"\" autocomplete=\"off\" class=\"form-control\" accept=\"image/*\"/>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-lg-12\">\n");
      out.write("            <br>\n");
      out.write("            <input type=\"submit\" value=\"SAVE\" class=\"btn btn-block bg-blue-gradient btn-lg \"/>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("</form>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("        <i class=\"divider\"></i>\n");
      out.write("      \n");
      out.write("\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("      <!-- /.content -->\n");
      out.write("    </div>\n");
      out.write("    <!-- /.container -->\n");
      out.write("  </div>\n");
      out.write("  <!-- /.content-wrapper -->  \n");
      out.write("  <footer class=\"main-footer\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"pull-right hidden-xs\">\n");
      out.write("        <b>Contact: #### ## ####</b> \n");
      out.write("      </div>\n");
      out.write("      <strong>Copyright &copy; 2014-2016 <a href=\"#mail\">Basil Joy</a>.</strong> All rights\n");
      out.write("      reserved.\n");
      out.write("    </div>\n");
      out.write("    <!-- /.container -->\n");
      out.write("  </footer>\n");
      out.write("</div>\n");
      out.write("<!-- ./wrapper -->\n");
      out.write("<!-- jQuery 2.2.3 -->\n");
      out.write("<script src=\"../TEMPLATE/plugins/jQuery/jquery-2.2.3.min.js\"></script>\n");
      out.write("<!-- Bootstrap 3.3.6 -->\n");
      out.write("<script src=\"../TEMPLATE/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("<!-- SlimScroll -->\n");
      out.write("<script src=\"../TEMPLATE/plugins/slimScroll/jquery.slimscroll.min.js\"></script>\n");
      out.write("<!-- FastClick -->\n");
      out.write("<script src=\"../TEMPLATE/plugins/fastclick/fastclick.js\"></script>\n");
      out.write("<!-- AdminLTE App -->\n");
      out.write("<script src=\"../TEMPLATE/dist/js/app.min.js\"></script>\n");
      out.write("<!-- AdminLTE for demo purposes -->\n");
      out.write("<script src=\"../TEMPLATE/dist/js/demo.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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

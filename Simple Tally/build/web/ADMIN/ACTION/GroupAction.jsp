






<%@page import="java.util.Iterator"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileUploadException"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="tally.Tallyclass" id="con"/>
<%@page  import="java.sql.*" %>
<%
    
    String grp="";
    String txt1="";
    
    
    String filename="";
    String filename2="";
    FileItem f_item = null;
    FileItem f_item2 = null;
    File proj_path = new File(config.getServletContext().getRealPath("/"));
    String file_path = proj_path.getParentFile().getParentFile().getPath() + "\\web\\FILES\\";
//checking if request cotains multipart data
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);

    if (isMultipart) {

        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);

        //declaring a list of form fields
        List items_list = null;
        List items_list2 = null;

        //assigning fields to list 'items_list'
        try {
            items_list = upload.parseRequest(request);
        } catch (FileUploadException ex) {
            out.println(ex);
        }

        //declaring iterator
        Iterator itr = items_list.iterator();

        //iterating through the list 'items_list'
         while (itr.hasNext()) {
            //typecasting next element in items_list as fileitem
            f_item = (FileItem) itr.next();
            if (f_item.isFormField()) {
                if (f_item.getFieldName().equalsIgnoreCase("txtsel")) {
                    grp= f_item.getString();
                }
                if (f_item.getFieldName().equalsIgnoreCase("tt")) {
                    txt1= f_item.getString();
                }
                        
            }else {
                try {
                    if (f_item.getFieldName().equalsIgnoreCase("vid")) {
                        filename = f_item.getName();
                        File savedFile1 = new File(file_path + filename);
                        f_item.write(savedFile1);
                    }
                    if (f_item.getFieldName().equalsIgnoreCase("img")) {
                        filename2 = f_item.getName();
                        File savedFile1 = new File(file_path + filename2);
                        f_item.write(savedFile1);
                    }

                } catch (Exception e) {
                }
            }
        }

    }
    
    String insert="insert into tbl_group(grp,txt,vid,img) values('"+grp+"','"+txt1+"','"+filename+"','"+filename2+"')";
 
    if(con.executeCommand(insert))
    {
        response.sendRedirect("../Group.jsp");
    }
    else
    {
         response.sendRedirect("../Group.jsp?Error");
    }
    %>
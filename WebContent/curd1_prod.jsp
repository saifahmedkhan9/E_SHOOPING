<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%
   try
   {
   String login=request.getParameter("Select");
   if(login.equalsIgnoreCase("create"))
   {
    RequestDispatcher rd= request.getRequestDispatcher("create_prod.jsp");
          rd.forward(request,response);
    }
    else  if(login.equalsIgnoreCase("read"))
    {
     RequestDispatcher rd= request.getRequestDispatcher("read1_prod.jsp");
          rd.forward(request,response); 
    }
    else  if(login.equalsIgnoreCase("update"))
    {
    	
    	RequestDispatcher rd= request.getRequestDispatcher("update1_prod.jsp");
        rd.forward(request,response); 
    }
    else
    {
    	RequestDispatcher rd= request.getRequestDispatcher("delete_prod.jsp");
        rd.forward(request,response); 
    	
    }
   }catch(Exception e)
   {
	   %>
	   <jsp:forward page="admin.jsp"></jsp:forward>
	   <%
   }
    %>

</body>
</html>
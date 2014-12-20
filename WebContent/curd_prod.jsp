<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="headera.jsp" %>
<div class="top-row-col1 text-center">
<h3><b>Enter your choice:</b><b><b><b></b></h3><br><br>
	
       
	
	<form action="curd1_prod.jsp">
  <label for="Create">Create</label>
  <input type="radio" name="Select" value="create">
  <label for="Read">Read</label>
  <input type="radio" name="Select" value="read">
  <label for="Update">Update</label>
  <input type="radio" name="Select" value="update">
  <label for="Delete">Delete</label>
  <input type="radio" name="Select" value="delete"><br><br>
  <input type="submit" value="Submit">
</form>
</div>
 <%@ include file="footer.html" %>
</body>
</html>
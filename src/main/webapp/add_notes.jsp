<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
	<div class="container-fluid p-0 m-0">
   	<%@include file="navbar.jsp" %>
   	<div>Please fill your note detail</div>
   	<br>
   	
   <!--this is add form  -->
   <form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input 
    name="title"
    required 
    type="text" 
    class="form-control" 
    id="title" 
    aria-describedby="emailHelp"
    placeholder="Enter title here">
  </div>
  
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea 
    name="content"
    required 
    class="form-control"  
    id="content"
     placeholder="Enter your content"
     style="height:300px">
     </textarea>
  </div>
  
  <div class="container text-center">
  	<button type="submit" class="btn btn-primary">Add</button>
  </div>
  
</form>
   	
   </div>
</body>
</html>
<%@page import="org.hibernate.Session" %>
<%@page import="org.hibernate.query.Query" %>
<%@page import="com.helper.FactoryProvider" %>
<%@page import="java.util.List" %>
<%@page import="com.entities.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes:NoteTaker</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>

	<div>
		<%@include file="navbar.jsp" %>
		<br>
		<h1 class="text-uppercase">All Notes:</h1>
		
		
		<div class="row">
			<div class="col-12">
					<% 
		Session s=FactoryProvider.getFactory().openSession();
		Query q=s.createQuery("from Note");
		List<Note> list=q.list();
		for(Note note:list){
		%>
				<div class="card mt-3" style="width: 18rem;">
		  <img class="card-img-top" style="max-width:100px" src="img/notepad.png" alt="Card image cap">
		  <div class="card-body">
		    <h5 class="card-title"><%= note.getId() %></h5>
		    <p class="card-text"><%= note.getContent() %></p>
		    <a href="#" class="btn btn-danger">Delete</a>
		    <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
		  </div>
		</div>
		
		<% 	
		}
		s.close();
		%> 
			</div>
		</div>
	
		
	</div>
</body>
</html>
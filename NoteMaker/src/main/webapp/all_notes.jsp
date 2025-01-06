<%@page import="java.util.List"%>
<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="org.hibernate.Session" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_css_js.jsp" %>
<title>All_notes</title>

</head>
<body>

<div class="container">
<%@include file="navbar.jsp" %>
<br>
<h1 class="text-uppercase">All Notes:</h1>

<div class="row">
<div class="col-12">
<%
Session session2=FactoryProvider.getFactory().openSession();

Query q=session2.createQuery("from Note");

List<Note> list=q.list();

for(Note note:list){
	
	%>
	<div class="card mt-3" >
 
  <div class="card-body">
    <h5 class="card-title"><%= note.getTitle() %></h5>
    <p class="card-text"><%= note.getContent() %></p>
    <p><b class="text-success"><%= note.getAddedDate() %></b></p>
    <div class="text-center">
    <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
     <a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a></div>
  </div>
</div>
	
	<%
}

session2.close();
%>
</div>
</div>

</div>

</body>
</html>
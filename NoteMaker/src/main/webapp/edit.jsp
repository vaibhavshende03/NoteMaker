<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_css_js.jsp" %>
<title>NoteMaker:Update Notes</title>
</head>
<body>

<div class="container">
   <%@include file="navbar.jsp" %>
   	<section class="p-5">
   	<div class="d-flex justify-content-center">
   	<h1>Edit Your Page : </h1>
   	</div>
   	
   	<%
   	int noteId=Integer.parseInt(request.getParameter("note_id").trim());
   	Session session3=FactoryProvider.getFactory().openSession();
   	
   	Note note=(Note)session3.get(Note.class,noteId);
   	
  
   	%>
   	
   	
   	 <form action="UpdateServlet" method="post">
   	 
  <input value="<%=note.getId() %>" name="id" type="hidden">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input required type="text" class="form-control" id="title"  placeholder="Enter here" name="title" 
    value="<%= note.getTitle() %>">
  </div>
  <div class="form-group">
    <label for="content">Note</label>
    <textarea  name="content" required class="form-control" id="content" placeholder="Enter your content here "
    style="height:300px;"
   
    > <%= note.getContent() %></textarea>
  </div>
  
  <div class="container text-center">
    <button type="submit" class="btn btn-success">Save Your Note</button>
  </div>
</form>
   	
   	</section>
   
   
   </div> 

</body>
</html>
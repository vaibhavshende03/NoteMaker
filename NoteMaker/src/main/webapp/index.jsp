<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@include file="all_css_js.jsp" %>
    <title>NoteTaker:HomePage</title>
  </head>
  <body>
   <div class="container">
   <%@include file="navbar.jsp" %>
   	<section class="p-5">
   	<div class="d-flex justify-content-center">
   	<div class="card p-5">
   		<img alt="note_icon" src="img/notepad.png" class="img-fluid mx-auto" width="200px">
   		<h1 class="text-success text-uppercase text-center mt-4">Start Taking Your Notes</h1>
   		<div class="container text-center">
   		<a href="add_notes.jsp" class="btn btn-outline-primary text-center">Start Here</a>
   		</div>
   	</div>
   	</div>
   	</section>
   
   
   </div>

  </body>
</html>
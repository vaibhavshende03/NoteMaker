<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_css_js.jsp" %>
<title>AddNotes</title>
</head>
<body>
<div class="container">
<%@include file="navbar.jsp" %>
<br>
  <h1>Please Fill Your Note Details</h1>
  <br>
  <form action="SaveNote" method="post">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input required type="text" class="form-control" id="title"  placeholder="Enter here" name="title">
  </div>
  <div class="form-group">
    <label for="content">Note</label>
    <textarea  name="content" required class="form-control" id="content" placeholder="Enter your content here "
    style="height:300px;"
    ></textarea>
  </div>
  
  <div class="container text-center">
    <button type="submit" class="btn btn-primary">Add Note</button>
  </div>
</form>
</div>
</body>
</html>
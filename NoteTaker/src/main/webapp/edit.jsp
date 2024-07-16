<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.helper.*"%>
<%@page import="org.hibernate.*"%>
<%@page import="com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update notes</title>
<link rel="icon" href="img/pencil.ico" type="image/x-icon">
<%@include file="all_js_css.jsp"%>
</head>
<body>
<div class="container-fluid">

		<%@include file="navbar.jsp"%>
	</div>
		<br>
	
	<div class="container">
		<h1>Edit your note</h1>
	<%
	int noteId=Integer.parseInt(request.getParameter("note_id").trim());
	Session s = FactoryProvider.getFactory().openSession();
	Note note = (Note) s.get(Note.class, noteId);
	%>
	<form action="UpdateServlet" method="post">

<input value="<%=note.getId() %>" name="noteId" type="hidden">
		<!-- this is add form -->
		<div class="form-group">
			<label for="title">Note Title:</label> <input name="title" required type="text"
				class="form-control" id="title" aria-describedby="emailHelp"
				placeholder="Enter here" 
				value="<%=note.getTitle()%>"
				/> 
		</div>
		<div class="form-group">
			<label for="content">Note Content</label>
			<textarea 
			name="content"
			required
			id="note-content"
			 placeholder="Enter your content"
			 class="form-control"
			 style="height:150px"
		><%=note.getContent()%></textarea>
		</div>
		<div class="continer text-center">
		<button type="submit" class="btn btn-success">Save Note</button>
		</div>
		
	</form>
	</div>
</body>
</html>
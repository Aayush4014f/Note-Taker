<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All notes: Note Taker</title>
<link rel="icon" href="img/pencil.ico" type="image/x-icon">
<%@include file="all_js_css.jsp"%>
</head>
<body>
<div class="container-fluid">
		<%@include file="navbar.jsp"%>
	</div>
	<div class="container">
		<br>
		<h1 class='text-uppercase'>All Notes:</h1>

		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>

				<div class="card mt-3">
					<img class="card-img-top mx-auto" style="max-width: 100px"
						src="img/pencil.png" alt="Card image cap">

					<div class="card-body px-auto">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<p>Last updated on : <b class="text-primary"><%=note.getAddedDate() %></b></p>
						
						<div class="container text-center">
						<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
						<a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary m-2">Update</a>
						</div>
						
					</div>
				</div>


				<%
				}
				%>


			</div>

		</div>


	</div>
</body>
</html>
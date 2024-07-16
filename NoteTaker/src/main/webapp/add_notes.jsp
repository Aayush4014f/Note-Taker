<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add notes</title>
<%@include file="all_js_css.jsp"%>
<link rel="icon" href="img/pencil.ico" type="image/x-icon">
</head>
<body>
	<div class="container-fluid">
		<%@include file="navbar.jsp"%>
	</div>
	<div class="container">
	<br>
	<h1>Please fill your note details</h1>
	<br>
	<form action="SaveNoteServlet" method="post">

		<!-- this is add form -->
		<div class="form-group">
			<label for="title">Note Title:</label> <input name="title" required
				type="text" class="form-control" id="title"
				aria-describedby="emailHelp" placeholder="Enter here" />
		</div>
		<div class="form-group">
			<label for="content">Note Content</label>
			<textarea name="content" required id="note-content"
				placeholder="Enter your content" class="form-control"
				style="height: 150px"></textarea>
		</div>
		<div class="continer text-center">
			<button type="submit" class="btn btn-primary">Add</button>
		</div>

	</form>
	</div>
</body>
</html>
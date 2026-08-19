<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<title>Admin Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<link rel="stylesheet"
href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>
<jsp:include page="navbar.jsp"/>
<div class="container mt-5">

<h2 class="mb-4">Admin Dashboard</h2>

<div class="row">

<div class="col-md-4">

<div class="card text-center shadow">

<div class="card-body">

<h5>Total Students</h5>

<h2>${students}</h2>

</div>

</div>

</div>

<div class="col-md-4">

<div class="card text-center shadow">

<div class="card-body">

<h5>Total Placement Drives</h5>

<h2>${drives}</h2>

</div>

</div>

</div>

<div class="col-md-4">

<div class="card text-center shadow">

<div class="card-body">

<h5>Total Applications</h5>

<h2>${applications}</h2>

</div>

</div>

</div>

</div>

<hr>

<div class="mt-4">

<a href="/drives"
class="btn btn-primary me-2">
Manage Placement Drives
</a>

<a href="/admin/applications"
class="btn btn-success me-2">
View Applications
</a>

<a href="/"
class="btn btn-danger">
Logout
</a>

</div>

</div>

</body>

</html>
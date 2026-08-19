<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>

    <title>Manage Placement Drives</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>

<jsp:include page="navbar.jsp"/>

<div class="container py-5">

    <div class="card shadow-lg mb-4">

        <div class="card-body">

            <h2 class="fw-bold" style="color:#7C3AED;">Manage Placement Drives</h2>

            <p class="text-muted mb-0">Create, search, update and delete placement drives.</p>

        </div>

    </div>

    <form action="/drives" method="get" class="row g-2 mb-4">

        <div class="col-md-8">
            <input class="form-control" name="keyword" value="${keyword}" placeholder="Search Company or Job Role">
        </div>

        <div class="col-md-2">
            <button class="btn text-white w-100" style="background:#7C3AED;">Search</button>
        </div>

        <div class="col-md-2">
            <a href="/drives" class="btn btn-outline-secondary w-100">Reset</a>
        </div>

    </form>

    <a href="/drives/new" class="btn btn-success mb-3">Add Drive</a>

    <div class="card shadow-lg">

        <div class="card-header text-white" style="background:#7C3AED;">
            <h5 class="mb-0">Placement Drives</h5>
        </div>

        <div class="card-body">

            <div class="table-responsive">

                <table class="table table-hover align-middle">

                    <thead>

                    <tr>
                        <th>Company</th>
                        <th>Role</th>
                        <th>Package</th>
                        <th>Location</th>
                        <th>CGPA</th>
                        <th>Deadline</th>
                        <th>Actions</th>
                    </tr>

                    </thead>

                    <tbody>

                    <c:forEach var="drive" items="${drives}">

                        <tr>

                            <td><strong>${drive.companyName}</strong></td>
                            <td>${drive.jobRole}</td>
                            <td>${drive.packageOffered} LPA</td>
                            <td>${drive.location}</td>
                            <td>${drive.minimumCgpa}</td>
                            <td>${drive.deadline}</td>

                            <td>

                                <a href="/drives/edit/${drive.id}" class="btn btn-warning btn-sm">Edit</a>

                                <a href="/drives/delete/${drive.id}"
                                   class="btn btn-danger btn-sm"
                                   onclick="return confirm('Delete this drive?')">
                                    Delete
                                </a>

                            </td>

                        </tr>

                    </c:forEach>

                    <c:if test="${empty drives}">
                        <tr>
                            <td colspan="7" class="text-center">No Placement Drives Found</td>
                        </tr>
                    </c:if>

                    </tbody>

                </table>

            </div>

        </div>

    </div>

</div>

<jsp:include page="footer.jsp"/>

</body>
</html>
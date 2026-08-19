<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>

    <title>My Applications</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>

<jsp:include page="navbar.jsp"/>

<div class="container py-5">

    <div class="card shadow-lg mb-4">

        <div class="card-body">

            <h2 class="fw-bold" style="color:#EA580C;">My Applications</h2>

            <p class="text-muted mb-0">
                Track all the placement drives you've applied for.
            </p>

        </div>

    </div>

    <div class="card shadow-lg">

        <div class="card-header text-white" style="background:#EA580C;">

            <h5 class="mb-0">Applied Placement Drives</h5>

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
                    </tr>

                    </thead>

                    <tbody>

                    <c:forEach items="${applications}" var="application">

                        <tr>

                            <td><strong>${application.placementDrive.companyName}</strong></td>

                            <td>${application.placementDrive.jobRole}</td>

                            <td><span class="badge bg-success">${application.placementDrive.packageOffered} LPA</span></td>

                            <td>${application.placementDrive.location}</td>

                        </tr>

                    </c:forEach>

                    </tbody>

                </table>

            </div>

        </div>

    </div>

    <div class="text-center mt-4">

        <a href="/applications/drives" class="btn btn-outline-secondary">
            Back to Placement Drives
        </a>

    </div>

</div>

<jsp:include page="footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>

    <title>Student Applications</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>

<jsp:include page="navbar.jsp"/>

<div class="container py-5">

    <div class="card shadow-lg mb-4">

        <div class="card-body">

            <h2 class="fw-bold" style="color:#7C3AED;">Student Applications</h2>

            <p class="text-muted mb-0">
                View all placement applications submitted by students.
            </p>

        </div>

    </div>

    <div class="card shadow-lg">

        <div class="card-header text-white" style="background:#7C3AED;">

            <h5 class="mb-0">Application Records</h5>

        </div>

        <div class="card-body">

            <div class="table-responsive">

                <table class="table table-hover align-middle">

                    <thead>

                    <tr>
                        <th>Student</th>
                        <th>Email</th>
                        <th>Company</th>
                        <th>Role</th>
                        <th>Status</th>
                    </tr>

                    </thead>

                    <tbody>

                    <c:forEach items="${applications}" var="application">

                        <tr>

                            <td><strong>${application.student.fullName}</strong></td>

                            <td>${application.student.email}</td>

                            <td>${application.placementDrive.companyName}</td>

                            <td>${application.placementDrive.jobRole}</td>

                            <td>
                                <span class="badge text-bg-success">
                                    ${application.status}
                                </span>
                            </td>

                        </tr>

                    </c:forEach>

                    </tbody>

                </table>

            </div>

        </div>

    </div>

</div>

<jsp:include page="footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
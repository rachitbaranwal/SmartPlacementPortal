<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
    <title>Placement Drives</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

<jsp:include page="navbar.jsp"/>

<div class="container py-5">

    <div class="card shadow-lg mb-4">

        <div class="card-body d-flex justify-content-between align-items-center flex-wrap">

            <div>
                <h2 class="fw-bold" style="color:#0891B2;">Placement Drives</h2>
                <p class="text-muted mb-0">Browse and apply for available placement opportunities.</p>
            </div>

            <div>
                <a href="/student/dashboard" class="btn btn-outline-secondary me-2">Dashboard</a>
                <a href="/applications/my" class="btn text-white" style="background:#0891B2;">My Applications</a>
            </div>

        </div>

    </div>

    <div class="card shadow-lg">

        <div class="card-header text-white" style="background:#0891B2;">
            <h5 class="mb-0">Available Placement Drives</h5>
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
                        <th class="text-center">Apply</th>
                    </tr>

                    </thead>

                    <tbody>

                    <c:forEach var="drive" items="${drives}">

                        <tr>

                            <td><strong>${drive.companyName}</strong></td>

                            <td>${drive.jobRole}</td>

                            <td><span class="badge bg-success">${drive.packageOffered} LPA</span></td>

                            <td>${drive.location}</td>

                            <td><span class="badge text-bg-info">${drive.minimumCgpa}</span></td>

                            <td>${drive.deadline}</td>

                            <td class="text-center">

                                <form action="/applications/apply/${drive.id}" method="post">

                                    <button class="btn btn-sm text-white" style="background:#0891B2;">
                                        Apply
                                    </button>

                                </form>

                            </td>

                        </tr>

                    </c:forEach>

                    </tbody>

                </table>

            </div>

        </div>

    </div>

    <div class="text-center mt-4">

        <a href="/student/dashboard" class="btn btn-outline-secondary">
            Back to Dashboard
        </a>

    </div>

</div>

<jsp:include page="footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
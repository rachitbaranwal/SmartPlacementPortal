<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>

    <title>Student Dashboard</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>

<jsp:include page="navbar.jsp"/>

<div class="container py-5">

    <!-- Welcome -->

    <div class="card shadow-lg mb-4">

        <div class="card-body">

            <h2 class="fw-bold" style="color:#2563EB;">
                Welcome, ${student.fullName}
            </h2>

            <p class="text-muted mb-0">
                Manage your placement activities from here.
            </p>

        </div>

    </div>

    <!-- Quick Actions -->

    <div class="row g-4 mb-4">

        <div class="col-md-4">

            <div class="card text-center h-100">

                <div class="card-body">

                    <h5>Placement Drives</h5>

                    <a href="/applications/drives" class="btn btn-primary mt-3">
                        View Drives
                    </a>

                </div>

            </div>

        </div>

        <div class="col-md-4">

            <div class="card text-center h-100">

                <div class="card-body">

                    <h5>My Applications</h5>

                    <a href="/applications/my" class="btn btn-success mt-3">
                        Applications
                    </a>

                </div>

            </div>

        </div>

        <div class="col-md-4">

            <div class="card text-center h-100">

                <div class="card-body">

                    <h5>Logout</h5>

                    <a href="/student/logout" class="btn btn-danger mt-3">
                        Logout
                    </a>

                </div>

            </div>

        </div>

    </div>

    <!-- Student Details -->

    <div class="card shadow-lg">

        <div class="card-header text-white" style="background:#334155;">

            <h5 class="mb-0">
                Student Information
            </h5>

        </div>

        <div class="card-body">

            <table class="table table-hover">

                <tr>
                    <th width="30%">Full Name</th>
                    <td>${student.fullName}</td>
                </tr>

                <tr>
                    <th>Email</th>
                    <td>${student.email}</td>
                </tr>

                <tr>
                    <th>Phone</th>
                    <td>${student.phone}</td>
                </tr>

                <tr>
                    <th>Branch</th>
                    <td>${student.branch}</td>
                </tr>

                <tr>
                    <th>Semester</th>
                    <td>${student.semester}</td>
                </tr>

                <tr>
                    <th>CGPA</th>
                    <td><span class="badge bg-primary">${student.cgpa}</span></td>
                </tr>

            </table>

        </div>

    </div>

</div>

<jsp:include page="footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
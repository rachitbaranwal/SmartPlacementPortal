<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Smart Placement Portal</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

<jsp:include page="navbar.jsp"/>

<!-- Hero -->

<section class="hero">

    <div class="container">

        <div class="row align-items-center">

            <div class="col-lg-7">

                <h1 class="display-4 fw-bold mb-3">
                    Smart Placement Portal
                </h1>

                <p class="lead mb-4">
                    Manage campus recruitment, placement drives,
                    student registrations and applications from one platform.
                </p>

                <a href="/student/register" class="btn btn-light me-3">
                    Register
                </a>

                <a href="/student/login" class="btn btn-outline-light">
                    Student Login
                </a>

            </div>

            <div class="col-lg-5 text-center">

                <img src="https://cdn-icons-png.flaticon.com/512/3135/3135755.png"
                     class="img-fluid"
                     width="260">

            </div>

        </div>

    </div>

</section>

<!-- Statistics -->

<section class="container py-5">

    <div class="row g-4">

        <div class="col-md-3">
            <div class="card text-center h-100">
                <div class="card-body">
                    <h2 class="fw-bold text-primary">100+</h2>
                    <p class="text-muted mb-0">Students</p>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card text-center h-100">
                <div class="card-body">
                    <h2 class="fw-bold text-primary">20+</h2>
                    <p class="text-muted mb-0">Drives</p>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card text-center h-100">
                <div class="card-body">
                    <h2 class="fw-bold text-primary">50+</h2>
                    <p class="text-muted mb-0">Applications</p>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card text-center h-100">
                <div class="card-body">
                    <h2 class="fw-bold text-primary">10+</h2>
                    <p class="text-muted mb-0">Recruiters</p>
                </div>
            </div>
        </div>

    </div>

</section>

<!-- Features -->

<section class="container pb-5">

    <h2 class="text-center fw-bold mb-4">
        Why Choose Smart Placement Portal?
    </h2>

    <div class="row g-4">

        <div class="col-md-4">
            <div class="card h-100">
                <div class="card-body">
                    <h5 class="fw-bold">Student Management</h5>
                    <p class="text-muted">
                        Register and manage student profiles efficiently.
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card h-100">
                <div class="card-body">
                    <h5 class="fw-bold">Placement Drives</h5>
                    <p class="text-muted">
                        Create and manage placement opportunities.
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card h-100">
                <div class="card-body">
                    <h5 class="fw-bold">Applications</h5>
                    <p class="text-muted">
                        Apply and track placement applications easily.
                    </p>
                </div>
            </div>
        </div>

    </div>

</section>

<!-- Recent Drives -->

<section class="container pb-5">

    <div class="card">

        <div class="card-header text-white" style="background:#334155;">
            <h5 class="mb-0">Recent Placement Drives</h5>
        </div>

        <div class="card-body">

            <table class="table table-hover">

                <thead>

                <tr>
                    <th>Company</th>
                    <th>Role</th>
                    <th>Package</th>
                </tr>

                </thead>

                <tbody>

               <c:forEach var="drive" items="${drives}">

                   <tr>

                       <td>${drive.companyName}</td>

                       <td>${drive.jobRole}</td>

                       <td>${drive.packageOffered} LPA</td>

                   </tr>

               </c:forEach> </tbody>

            </table>

        </div>

    </div>

</section>

<jsp:include page="footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

<jsp:include page="navbar.jsp"/>

<div class="container py-5">

    <div class="row align-items-center justify-content-center">

        <!-- Left Side -->

        <div class="col-lg-5 d-none d-lg-block text-center">

            <img src="https://cdn-icons-png.flaticon.com/512/3135/3135789.png"
                 class="img-fluid mb-3" width="260">

            <h2 style="color:#16A34A;">Join the Portal</h2>

            <p class="text-muted">
                Register yourself and start applying for placement drives.
            </p>

        </div>

        <!-- Register Card -->

        <div class="col-lg-5">

            <div class="card shadow-lg">

                <div class="card-header text-white text-center" style="background:#16A34A;">
                    <h4 class="mb-0">Student Registration</h4>
                </div>

                <div class="card-body p-4">

                    <c:if test="${not empty success}">
                        <div class="alert alert-success">${success}</div>
                    </c:if>

                    <c:if test="${not empty error}">
                        <div class="alert alert-danger">${error}</div>
                    </c:if>

                    <form action="/student/register" method="post">

                        <input class="form-control mb-3" name="fullName" placeholder="Full Name" required>

                        <input type="email" class="form-control mb-3" name="email" placeholder="Email" required>

                        <input class="form-control mb-3" name="phone" placeholder="Phone Number" required>

                        <input class="form-control mb-3" name="branch" placeholder="Branch" required>

                        <input class="form-control mb-3" name="semester" placeholder="Semester" required>

                        <input type="number" step="0.01" class="form-control mb-3" name="cgpa" placeholder="CGPA" required>

                        <input type="password" class="form-control mb-4" name="password" placeholder="Password" required>

                        <button class="btn btn-success w-100">
                            Register
                        </button>

                    </form>

                    <p class="text-center mt-4 mb-0">

                        Already have an account?

                        <a href="/student/login"
                           class="fw-bold text-decoration-none"
                           style="color:#16A34A;">

                            Login

                        </a>

                    </p>

                </div>

            </div>

        </div>

    </div>

</div>

<jsp:include page="footer.jsp"/>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
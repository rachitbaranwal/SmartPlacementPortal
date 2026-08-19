<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
    <title>Student Login</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

<jsp:include page="navbar.jsp"/>

<div class="container py-5">

    <div class="row align-items-center justify-content-center">

        <div class="col-lg-5 d-none d-lg-block text-center">
            <img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" class="img-fluid mb-3" width="260">
            <h2 style="color:#4F46E5;">Welcome Back</h2>
            <p class="text-muted">Login to continue your placement journey.</p>
        </div>

        <div class="col-lg-5">

            <div class="card shadow-lg">

                <div class="card-header text-white text-center" style="background:#4F46E5;">
                    <h4 class="mb-0">Student Login</h4>
                </div>

                <div class="card-body p-4">

                    <c:if test="${not empty error}">
                        <div class="alert alert-danger">${error}</div>
                    </c:if>

                    <form action="/student/login" method="post">

                        <div class="mb-3">
                            <label>Email</label>
                            <input type="email" class="form-control" name="email" placeholder="Enter email" required>
                        </div>

                        <div class="mb-4">
                            <label>Password</label>
                            <input type="password" class="form-control" name="password" placeholder="Enter password" required>
                        </div>

                        <button class="btn w-100 text-white" style="background:#4F46E5;">
                            Login
                        </button>

                    </form>

                    <p class="text-center mt-4 mb-0">
                        New User?
                        <a href="/student/register" class="fw-bold text-decoration-none" style="color:#4F46E5;">
                            Register
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
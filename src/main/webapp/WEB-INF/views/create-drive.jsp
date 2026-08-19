<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>

    <title>Placement Drive</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

</head>

<body>

<jsp:include page="navbar.jsp"/>

<div class="container py-5">

    <div class="card shadow-lg">

        <div class="card-header text-white" style="background:#7C3AED;">

            <h4 class="mb-0">

                <c:choose>
                    <c:when test="${drive.id!=null}">Edit Placement Drive</c:when>
                    <c:otherwise>Create Placement Drive</c:otherwise>
                </c:choose>

            </h4>

        </div>

        <div class="card-body">

            <form action="/drives/save" method="post">

                <input type="hidden" name="id" value="${drive.id}">

                <input class="form-control mb-3" name="companyName" placeholder="Company Name" value="${drive.companyName}" required>

                <input class="form-control mb-3" name="jobRole" placeholder="Job Role" value="${drive.jobRole}" required>

                <input type="number" step="0.1" class="form-control mb-3" name="packageOffered" placeholder="Package (LPA)" value="${drive.packageOffered}" required>

                <input class="form-control mb-3" name="location" placeholder="Location" value="${drive.location}" required>

                <input type="number" step="0.1" class="form-control mb-3" name="minimumCgpa" placeholder="Minimum CGPA" value="${drive.minimumCgpa}" required>

                <input type="date" class="form-control mb-4" name="deadline" value="${drive.deadline}" required>

                <button class="btn btn-success">

                    <c:choose>
                        <c:when test="${drive.id!=null}">Update</c:when>
                        <c:otherwise>Save</c:otherwise>
                    </c:choose>

                </button>

                <a href="/drives" class="btn btn-outline-secondary">Back</a>

            </form>

        </div>

    </div>

</div>

<jsp:include page="footer.jsp"/>

</body>
</html>
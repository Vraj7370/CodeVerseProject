<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Category List</title>

    <!-- Admin CSS -->
    <jsp:include page="AdminCSS.jsp"></jsp:include>
</head>

<body>

    <!-- Header -->
    <jsp:include page="AdminHeader.jsp"></jsp:include>

    <!-- Sidebar -->
    <jsp:include page="AdminSidebar.jsp"></jsp:include>

    <!-- Main Content -->
    <div class="content">
        <div class="container-fluid mt-4">

            <div class="card shadow">
                <div class="card-header bg-dark text-white">
                    <h5 class="mb-0">Category List</h5>
                </div>

                <div class="card-body">

                    <table class="table table-bordered table-striped align-middle">
                        <thead class="table-dark">
                            <tr>
                                <th style="width: 5%;">#</th>
                                <th>Category Name</th>
                                <th style="width: 15%;">Status</th>
                                <th style="width: 20%;">Action</th>
                            </tr>
                        </thead>
                        <tbody>

                            <c:if test="${empty categoryList}">
                                <tr>
                                    <td colspan="4" class="text-center text-muted">
                                        No categories found
                                    </td>
                                </tr>
                            </c:if>

                            <c:forEach var="cat" items="${categoryList}" varStatus="i">
                                <tr>
                                    <td>${i.index + 1}</td>
                                    <td>${cat.categoryName}</td>

                                    <td>
                                        <c:choose>
                                            <c:when test="${cat.active}">
                                                <span class="badge bg-success">Active</span>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="badge bg-danger">Inactive</span>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>

                                    <td>
                                        <a href="editCategory?id=${cat.categoryId}"
                                           class="btn btn-sm btn-warning">
                                            Edit
                                        </a>

                                        <a href="deleteCategory?id=${cat.categoryId}"
                                           class="btn btn-sm btn-danger"
                                           onclick="return confirm('Are you sure you want to delete this category?')">
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>

                </div>
            </div>

        </div>
    </div>

    <!-- Footer -->
    <jsp:include page="AdminFooter.jsp"></jsp:include>

</body>
</html>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Delete user ${user.id}</title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body>

                <div class="container p-5 text-start">
                    <div class="row justify-content-center">
                        <div class="col-12">
                            <h3 class="py-3 border-bottom">Delete the user ${user.id}</h3>
                            <div class="alert alert-danger" role="alert">
                                Are you sure to delete this user?
                            </div>
                            <form:form action="/admin/user/delete" method="post" modelAttribute="newUser">
                                <div class="mb-3" style="display: none;">
                                    <label for="form-lable" class="form-label">Id:</label>
                                    <form:input type="text" class="form-control" path="id" />
                                </div>
                                <button class="btn btn-danger">Confirm</button>
                            </form:form>
                        </div>

                    </div>
                </div>
            </body>

            </html>
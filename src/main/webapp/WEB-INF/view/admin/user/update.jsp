<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Update user ${user.id}</title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body>

                <div class="container p-5 text-start">
                    <div class="row justify-content-center">
                        <div class="col-xl-6 col-md-8 col-12">
                            <h3 class="py-3 border-bottom">Update a user ${user.id}</h1>
                                <form:form action="/admin/user/update" method="post" modelAttribute="newUser">
                                    <div class="mb-3" style="display: none;">
                                        <label for="form-lable" class="form-label">Id:</label>
                                        <form:input type="text" class="form-control" path="id" />
                                    </div>
                                    <div class="mb-3">
                                        <label for="form-lable" class="form-label">Email:</label>
                                        <form:input type="email" class="form-control" path="email" disabled="true" />
                                    </div>
                                    <div class="mb-3">
                                        <label for="form-lable" class="form-label">Phone number:</label>
                                        <form:input type="text" class="form-control" path="phone" />
                                    </div>
                                    <div class="mb-3">
                                        <label for="form-lable" class="form-label">Full Name:</label>
                                        <form:input type="text" class="form-control" path="fullName" />
                                    </div>
                                    <div class="mb-3">
                                        <label for="form-lable" class="form-label">Address:</label>
                                        <form:input type="text" class="form-control" path="address" />
                                    </div>
                                    <button type="submit" class="btn btn-warning">Update</button>
                                </form:form>
                        </div>

                    </div>
                </div>
            </body>

            </html>
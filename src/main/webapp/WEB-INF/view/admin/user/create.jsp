<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <!-- Latest compiled and minified CSS -->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

            <!-- Latest compiled JavaScript -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            <link rel="stylesheet" href="/css/demo.css">
        </head>

        <body>

            <div class="container p-5 text-start">
                <div class="row justify-content-center">
                    <div class="col-xl-6 col-md-8 col-12">
                        <h3 class="py-3 border-bottom">Create a user</h1>
                            <form>
                                <div class="mb-3">
                                    <label for="form-lable" class="form-label">Email:</label>
                                    <input type="email" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="form-lable" class="form-label">Password:</label>
                                    <input type="password" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="form-lable" class="form-label">Phone number:</label>
                                    <input type="password" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="form-lable" class="form-label">Full Name:</label>
                                    <input type="password" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label for="form-lable" class="form-label">Address:</label>
                                    <input type="password" class="form-control">
                                </div>
                                <button type="submit" class="btn btn-primary">Create</button>
                            </form>
                    </div>

                </div>
            </div>
        </body>

        </html>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Detail User ${id}</title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            </head>

            <body>
                <div class="container">
                    <div class="d-flex justify-content-between my-4 py-3 border-bottom">
                        <h2>Detail user ${id}</h3>
                    </div>
                    <table class="table table-bordered table-hover">
                        <div class="card" style="width: 60%;">
                            <div class="card-header">
                                User information
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">Email</li>
                                <li class="list-group-item">Full Name</li>
                                <li class="list-group-item">address</li>
                                <li class="list-group-item">phone</li>
                            </ul>
                        </div>

                    </table>
                </div>
            </body>

            </html>
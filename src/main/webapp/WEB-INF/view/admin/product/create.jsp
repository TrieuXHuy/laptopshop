<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="" />
                <meta name="author" content="" />
                <title>Dashboard - SB Admin</title>
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script>
                    $(document).ready(() => {
                        const avatarFile = $("#productFile");
                        avatarFile.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#productPreview").attr("src", imgURL);
                            $("#productPreview").css({ "display": "block" });
                        });
                    });
                </script>

            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />
                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />
                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4">Create Product</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item active">
                                        <a href="/admin">Dashboard</a> / <a href="/admin/product">Product</a> / Create
                                    </li>
                                </ol>
                                <div class="text-start">
                                    <div class="row justify-content-center">
                                        <div class="col-xl-6 col-md-8 col-12">
                                            <h3 class="py-3 border-bottom">Create a product</h1>
                                                <form:form action="/admin/product/create" method="post"
                                                    modelAttribute="newProduct" enctype="multipart/form-data">
                                                    <div class="row g-3 mb-3">
                                                        <div class="col-md-6 col-12">
                                                            <c:set var="errorName">
                                                                <form:errors path="name" cssClass="invalid-feedback" />
                                                            </c:set>
                                                            <label for="form-lable" class="form-label">Name:</label>
                                                            <form:input type="name"
                                                                class="form-control  ${not empty errorName ? 'is-invalid':''}"
                                                                path="name" />

                                                            ${errorName}
                                                        </div>

                                                        <div class="col-md-6 col-12">
                                                            <c:set var="errorPrice">
                                                                <form:errors path="price" cssClass="invalid-feedback" />
                                                            </c:set>
                                                            <label for="form-lable" class="form-label">Price:</label>
                                                            <form:input type="price"
                                                                class="form-control  ${not empty errorPrice ? 'is-invalid':''}"
                                                                path="price" />

                                                            ${errorPrice}

                                                        </div>
                                                    </div>
                                                    <div class="mb-3">
                                                        <c:set var="errorDetails">
                                                            <form:errors path="detailDesc"
                                                                cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <label for="form-lable" class="form-label">Details
                                                            description:</label>
                                                        <form:textarea type="detailDesc"
                                                            class="form-control  ${not empty errorDetails ? 'is-invalid':''}"
                                                            path="detailDesc" />

                                                        ${errorDetails}

                                                    </div>
                                                    <div class="row g-3 mb-3">
                                                        <div class="col-md-6 col-12">
                                                            <c:set var="errorDescription">
                                                                <form:errors path="shortDesc"
                                                                    cssClass="invalid-feedback" />
                                                            </c:set>
                                                            <label for="form-lable" class="form-label">Short
                                                                description:</label>
                                                            <form:input type="shortDesc"
                                                                class="form-control  ${not empty errorDescription ? 'is-invalid':''}"
                                                                path="shortDesc" />

                                                            ${errorDescription}

                                                        </div>
                                                        <div class="col-md-6 col-12">
                                                            <c:set var="errorQuantity">
                                                                <form:errors path="quantity"
                                                                    cssClass="invalid-feedback" />
                                                            </c:set>
                                                            <label for="form-lable" class="form-label">Quantity:</label>
                                                            <form:input type="quantity"
                                                                class="form-control  ${not empty errorQuantity ? 'is-invalid':''}"
                                                                path="quantity" />

                                                            ${errorQuantity}

                                                        </div>
                                                    </div>
                                                    <div class="row g-3 mb-3">
                                                        <div class="col-md-6 col-12">
                                                            <label for="formFile" class="form-label">Factory:</label>
                                                            <form:select class="form-select" path="factory">
                                                                <option value="APPLE-MACBOOK">Apple (MacBook)</option>
                                                                <option value="ASUS">Asus</option>
                                                                <option value="LENOVO">Lenovo</option>
                                                                <option value="DELL">Dell</option>
                                                                <option value="LG">LG</option>
                                                                <option value="ACER">Acer</option>
                                                            </form:select>
                                                        </div>
                                                        <div class="col-md-6 col-12">
                                                            <label for="formFile" class="form-label">Target:</label>
                                                            <form:select class="form-select" path="target">
                                                                <option value="GAMING">Gaming</option>
                                                                <option value="SINH-VIEN-VAN-PHONG">Sinh viên - Văn
                                                                    phòng</option>
                                                                <option value="THIET-KE-DO-HOA">Thiết kế đồ họa</option>
                                                                <option value="MONG-NHE">Mỏng nhẹ</option>
                                                                <option value="DOANH-NHAN">Doanh nhân</option>
                                                            </form:select>
                                                        </div>
                                                        <div class="col-md-6 col-12">
                                                            <label for="productFile" class="form-label">Image:</label>
                                                            <input class="form-control" type="file" id="productFile"
                                                                name="productFile" accept=".png, .jpg, .jpeg">
                                                        </div>
                                                        <div class="col-12">
                                                            <img src="" alt="avatar preview"
                                                                style="max-height: 250px; display:none;"
                                                                id="productPreview">
                                                        </div>
                                                    </div>
                                                    <button type="submit" class="btn btn-primary mb-3">Create</button>
                                                </form:form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </main>
                        <jsp:include page="../layout/footer.jsp" />
                    </div>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                    crossorigin="anonymous"></script>
            </body>

            </html>
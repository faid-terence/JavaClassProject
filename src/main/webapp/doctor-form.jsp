<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
    <title>Doctor Management Application</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
    <style>
        body {
            background-color: #f0f0f0;
        }

        header {
            background-color: #dc3545;
            padding: 10px 0;
        }

        .navbar-brand {
            color: #fff;
            font-size: 1.5rem;
        }

        .navbar-nav .nav-link {
            color: #fff;
        }

        .container {
            margin-top: 20px;
        }

        .card {
            border: none;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        .card-body {
            padding: 30px;
        }

        h2 {
            color: #333;
        }

        label {
            font-weight: bold;
        }

        input {
            margin-bottom: 10px;
        }

        button.btn-success {
            background-color: #28a745;
            border: none;
        }

        footer {
            background-color: #343a40;
            color: #fff;
            padding: 10px 0;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>

<body>

    <header>
        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #dc3545;">
            <div>
                <a href="https://www.javaguides.net" class="navbar-brand"> Doctor Management System </a>
            </div>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <!-- You may add more navigation links if needed -->
                </ul>
            </div>
        </nav>
    </header>
    <br>
    <div class="container col-md-8 col-lg-6">
        <div class="card">
            <div class="card-body">
                <c:if test="${doctor != null}">
                    <form action="update" method="post" />
                </c:if>
                <c:if test="${doctor == null}">
                    <form action="insert" method="post">
                </c:if>

                <caption>
                    <h2>
                        <c:if test="${doctor != null}">
                            Edit Doctor
                        </c:if>
                        <c:if test="${doctor == null}">
                            Add New Doctor
                        </c:if>
                    </h2>
                </caption>

                <c:if test="${doctor != null}">
                    <input type="hidden" name="id" value="<c:out value='${doctor.id}' />" />
                </c:if>

                <fieldset class="form-group">
                    <label>First Name</label> <input type="text" value="<c:out value='${doctor.firstName}' />"
                        class="form-control" name="firstName" required="required">
                </fieldset>

                <fieldset class="form-group">
                    <label>Last Name</label> <input type="text" value="<c:out value='${doctor.lastName}' />"
                        class="form-control" name="lastName" required="required">
                </fieldset>

                <fieldset class="form-group">
                    <label>Specialization</label> <input type="text" value="<c:out value='${doctor.specialization}' />"
                        class="form-control" name="specialization">
                </fieldset>

                <fieldset class="form-group">
                    <label>Email</label> <input type="text" value="<c:out value='${doctor.email}' />"
                        class="form-control" name="email">
                </fieldset>

                <fieldset class="form-group">
                    <label>Phone Number</label> <input type="text" value="<c:out value='${doctor.phoneNumber}' />"
                        class="form-control" name="phoneNumber">
                </fieldset>

                <fieldset class="form-group">
                    <label>Address</label> <input type="text" value="<c:out value='${doctor.address}' />"
                        class="form-control" name="address">
                </fieldset>

                <fieldset class="form-group">
                    <label>License Number</label> <input type="text" value="<c:out value='${doctor.licenseNumber}' />"
                        class="form-control" name="licenseNumber">
                </fieldset>

                <button type="submit" class="btn btn-success btn-block">
                    <i class="bi bi-save"></i> Save
                </button>
                </form>
            </div>
        </div>
    </div>
    <footer>
        Copyright &copy; 2023 Terence Faid JABO. All rights reserved.
    </footer>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.17.0/font/bootstrap-icons.css"></script>
</body>

</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
    <title>Doctor Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        header {
            background-color: #3399ff;
            padding: 15px;
            text-align: center;
            color: white;
        }

        .container {
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: flex;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #3399ff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f0f0f0;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button a {
           display: block;
            color: white;
            padding: 5px;
            text-decoration: none;
            margin-bottom: 5px;
            border-radius: 2px;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #45a049;
        }

        .sidebar {
            width: 200px;
            background-color: #333;
            padding: 20px;
            color: white;
        }

        .sidebar a {
            display: block;
            color: white;
            padding: 10px;
            text-decoration: none;
            margin-bottom: 10px;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        

        .sidebar a:hover {
            background-color: #555;
        }

        .content {
            flex-grow: 1;
            padding-left: 20px;
        }

        /* Additional styles for icons */
        .table a {
            display: inline-block;
            margin-right: 5px;
        }

        .table a i {
            vertical-align: middle;
        }
    </style>
    <!-- Include Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha384-NpXZmZLY6AA4ISouM6UAMnLRn4HehEnpkGjJXIXNq7sEiKA3Q6l2L/tv6tT7lHbe" crossorigin="anonymous">
</head>

<body>

    <header>
        <h2>Doctor Management</h2>
    </header>

    <div class="container">
        <div class="sidebar">
            <a href="#">Dashboard</a>
            <a href="#">Doctors</a>
            <a href="#">Patients</a>
            <a href="#">Appointments</a>
        </div>

        <div class="content">
            <h3>List of Doctors</h3>
           <button><a href="<%=request.getContextPath()%>/new" class="btn btn-success btn-add">Add New Doctor</a></button>

            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Specialization</th>
                        <th>Email</th>
                        <th>Phone Number</th>
                        <th>Address</th>
                        <th>License Number</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="doctor" items="${listDoctors}">
                        <tr>
                            <td>${doctor.id}</td>
                            <td>${doctor.firstName} ${doctor.lastName}</td>
                            <td>${doctor.specialization}</td>
                            <td>${doctor.email}</td>
                            <td>${doctor.phoneNumber}</td>
                            <td>${doctor.address}</td>
                            <td>${doctor.licenseNumber}</td>
                            <td>
                                <button><a href="edit?id=<c:out value='${doctor.id}' />" class="btn btn-primary btn-sm">
                                    <i class="fas fa-edit"></i> Edit
                                </a>
                                </button>
                              <button>  <a href="delete?id=<c:out value='${doctor.id}' />" class="btn btn-danger btn-sm">
                                    <i class="fas fa-trash-alt"></i> Delete
                                </a></button>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <script>
        function editDoctor(doctorId) {
        }
    </script>

</body>

</html>

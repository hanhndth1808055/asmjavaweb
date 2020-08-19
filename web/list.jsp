<%-- 
    Document   : list
    Created on : Aug 12, 2020, 7:11:01 PM
    Author     : LaptopAZ.vn
--%>

<%@page import="com.fai.model.Student, java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"/>
    </head>
    <body>
        <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
            <h5 class="my-0 mr-md-auto font-weight-normal">WCD Demo</h5>
            <nav class="my-2 my-md-0 mr-md-3">
                <a class="p-2 text-dark" href="/StudentList">Student List</a>
                <a class="p-2 text-dark" href="add.jsp">Add New Student</a>
                <!--        <a class="p-2 text-dark" href="#">Support</a>
                        <a class="p-2 text-dark" href="#">Pricing</a>-->
            </nav>
            <!--<a class="btn btn-outline-primary" href="#">Sign up</a>-->
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <h2>Student List</h1>
                    <table class="table">
                        <thead class="thead-light">
                            <tr>
                                <th>ID</th>
                                <th>Code</th>
                                <th>Full Name</th>
                                <th>Gender</th>
                                <th>Hometown</th>
                                <th>Phone Number</th>
                                <th>Email</th>
                                <th>Year Of Birth</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<Student> lstStudent = (List<Student>) request.getAttribute("studentList");
                                for (Student s : lstStudent) {%>
                            <tr>
                                <td><%=s.getId()%></td>
                                <td><%=s.getCode()%></td>
                                <td><%=s.getFullName()%></td>
                                <td><%=s.getGenderString()%></td>
                                <td><%=s.getPhoneNumber()%></td>
                                <td><%=s.getHometown()%></td>
                                <td><%=s.getEmail() %></td>
                                <td><%=s.getYearOfBirth() %></td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </body>
</html>

<%@ page isErrorPage="true" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



                    <link rel="stylesheet"
                        href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
                        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
                        crossorigin="anonymous">
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
                        crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
                        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
                        crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
                        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
                        crossorigin="anonymous"></script>

                    <link rel="stylesheet" href="/css/style.css">


                    <!DOCTYPE html>
                    <html>

                    <head>
                        <meta charset="UTF-8">
                        <title>Users</title>
                    </head>

                    <body>
                        <%@ include file="commons/nav-bar.jsp" %>

                            <h1 class="text-center">This is Users page</h1>

                            <div class="container max-width mt-5" id="resizeTable">


                                <table class="table table-hover  text-center" >

                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Username</th>
                                            <th scope="col">First</th>
                                            <th scope="col">Last</th>
                                            <th scope="col">Adress</th>
                                            <th scope="col">DOB</th>
                                            <th scope="col">Email</th>
                                            <th scope="col">Create At</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <c:forEach items="${allUsers}" var="user">

                                            <tr>
                                                <th scope="row">1</th>
                                                <td>${user.getUserName()}</td>
                                                <td>${user.getFirstName()}</td>
                                                <td>${user.getLastName()}</td>
                                                <td>${user.getAdress()}</td>
                                                <td>${user.getDateOfBirth()}</td>
                                                <td>${user.getEmail()}</td>
                                                <td>${user.getCreatedAt()}</td>
                                                <td>
                                                    <button class="btn btn-primary">Delete</button>
                                                    <i>/</i>
                                                    <button class="btn btn-danger">Update</button>
                                                </td>
                                          
                                            </tr>

                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                    </body>
                    <footer>
                        <%@ include file="commons/Footer.jsp" %>

                    </footer>


                    </html>
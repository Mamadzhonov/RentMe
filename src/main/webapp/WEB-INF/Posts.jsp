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

                    <link rel="stylesheet" href="/css/posts.css">


                    <!DOCTYPE html>
                    <html>

                    <head>
                        <meta charset="UTF-8">
                        <title>Todo List</title>
                    </head>

                    <body>
                        <%@ include file="commons/nav-bar.jsp" %>

                            <h1 class="text-primary"> Welcome:
                                <c:out value="${user}"></c:out>
                            </h1>

                            <div class="container-fluid max-width mt-5" id="resizeTable">


                                <table class="table table-hover  text-center">

                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Titile</th>
                                            <th scope="col">Price</th>
                                            <th scope="col">Location</th>
                                            <th scope="col">PhoneNumber</th>
                                            <th scope="col">Details</th>
                                            <th scope="col">UserID</th>
                                            <th scope="col">Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <c:forEach items="${allPosts}" var="post">
                                            <tr>
                                                <!-- <th scope="row">1</th> -->
                                                <td style="width:3%">${post.getId()}</td>
                                                <td>${post.getTitle()}</td>
                                                <td>${post.getPrice()} <span>&#36;</span></td>
                                                <td>${post.getLocation()}</td>
                                                <td>${post.getPhoneNum()}</td>
                                                <td style="width:10%" class="overflow-wrap" style="width: 50px;">
                                                    ${post.getDetails()}</td>
                                                <td>${post.getUsers()}</td>
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
<%@ page isErrorPage="true" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
                        <%@ page import="java.util.Base64" %>






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

                            <link rel="stylesheet" href="/css/Index.css">




                            <!DOCTYPE html>
                            <html mxlns:th="https://www.thymeleaf.org">

                            <head>
                                <meta charset="UTF-8">
                                <title>Index</title>
                                <%@ include file="commons/nav-bar.jsp" %>
                            </head>

                            <body class="img-fluid">
                                <div class="has-bg-img bg-purple bg-blend-multiply">

                                    <p class="text-danger text-center"> ${permisstionFailed} </p>

                                    <c:choose>
                                        <c:when test="${userLogged != null}">
                                            <a data-tor="loop:pulse(md::1.5)" class="btn btn-secondary rounded-circle"
                                                href="new-item">Add</a>
                                        </c:when>
                                        <c:otherwise>
                                        </c:otherwise>
                                    </c:choose>
                                    <div class="container mt-2">
                                        <div class="row">
                                            <c:forEach items="${allPosts}" var="post">
                                                <div
                                                    class="col-md-5 col-lg-3 mt-5 mb-2 d-flex flex-row flex-wrap border-dark ">
                                                    <div class="card p-3  border-light">

                                                        <!-- Title  -->
                                                        <h5 class="card-title pricing-card-title mb-3">
                                                            ${post.getTitle()} </h5>

                                                        <!-- Thumbnail img   -->
                                                        <img class="img-thumbnail card-img-top fixed-size-thumbnail"
                                                            src="data:image/jpeg;base64,${Base64.getEncoder().encodeToString(post.getImage())}"
                                                            width="100" alt="img">



                                                        <div class="d-flex flex-column flex-center ml-3 mb-auto">
                                                            <span class="text-center ">Category</span>
                                                        </div>
                                                        <div>

                                                            ${post.getPrice()} $ <small class="text-muted">/ Day</small>
                                                        </div>
                                                        <div
                                                            class="d-flex justify-content-between install align-items-end card-text mt-auto">

                                                            <span>Posted on:
                                                                ${fn:substring(post.getCreatedAt(), 0,
                                                                10)}</span>
                                                            <a href="/view${post.getId()}" class="">View&nbsp;<i
                                                                    class="fa fa-angle-right"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <!-- </section> -->

                                    <%@ include file="commons/Footer.jsp" %>
                                    <!-- Footer -->
                                </div>
                              
                            </body>
                          
    

                            </html>
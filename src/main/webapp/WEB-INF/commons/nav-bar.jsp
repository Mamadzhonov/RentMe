<%@ page isErrorPage="true" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                    <link rel="stylesheet" href="/css/nav-bar.css">
                    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
                        <a class="navbar-brand" href="http:/">Home</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav">

                                <c:choose>
                                    <c:when test="${userLogged != null}">
                                        <li class="nav-item">
                                            <a class="nav-link" href="http:/users">Users</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="http:/posts">Posts</a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                    </c:otherwise>
                                </c:choose>




                            </ul>
                        </div>

                        <div>
                            <c:choose>
                                <c:when test="${userLogged != null}">
                                    <p class="item">${userName}</p>
                                </c:when>
                            </c:choose>
                        </div>
                        <div class="dropdown show">
                            <a class="btn btn-info dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Login
                            </a>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                <c:choose>
                                    <c:when test="${userLogged != null}">
                                        <a class="dropdown-item" href="http:/logout">Log out</a>
                                    </c:when>
                                    <c:when test="${homePage == 'home'}">
                                        <a class="dropdown-item" href="http:/login">Sign In</a>
                                        <a class="dropdown-item" href="http:/register">Sign Up</a>
                                    </c:when>
                                    <c:otherwise>
                                        <a class="dropdown-item" href="http:/logout">Log out</a>
                                    </c:otherwise>
                                </c:choose>

                            </div>


                        </div>
                    </nav>
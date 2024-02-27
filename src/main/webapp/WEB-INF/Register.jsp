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
                        <title>Registration</title>
                    </head>

                    <body>
                        <%@ include file="commons/nav-bar.jsp" %>


                            <div style="text-align: center;">
                                <p class="text-danger">
                                    <c:out value="${emailUsed}"></c:out>
                                </p>
                                <p class="text-danger">
                                    <c:out value="${login}"></c:out>
                                </p>
                                <p class="text-danger">
                                    <c:out value="${loginIssue}"></c:out>
                                </p>
                            </div>
                            <section class="vh-100" style="background-color: #508bfc;">
                                <form:form action="/register" method="POST" modelAttribute="newUser">
                                    <div class="container py-5 h-300">
                                        <div class="row d-flex justify-content-center align-items-center h-100">
                                            <div class="col-12 col-md-8 col-lg-10 col-xl-8">
                                                <div class="card shadow-2-strong" style="border-radius: 1rem;">
                                                    <div class="card-body  p-5 text-center" style="width: 45rem;">
                                                        <h3 class="mb-5" style="color: #adab79;">Sign up</h3>
                                                        <div class="row row justify-content-around">


                                                            <!-- First Name Field -->
                                                            <div class="form-outline mb-4 ">
                                                                <form:input path="firstName" id="typeEmailX-2"
                                                                    class="form-control form-control-lg" />
                                                                <form:label path="firstName" class="form-label">First
                                                                    Name</form:label>
                                                                <form:errors class="text-danger" path="firstName">
                                                                </form:errors>
                                                            </div>


                                                            <!-- Last Name Field -->
                                                            <div class="form-outline mb-4">
                                                                <form:input path="lastName" id="typeEmailX-2"
                                                                    class="form-control form-control-lg" />
                                                                <form:label path="lastName" class="form-label">Last Name
                                                                </form:label>
                                                                <form:errors class="text-danger" path="lastName">
                                                                </form:errors>
                                                            </div>

                                                            <!-- Adress Field -->
                                                            <div class="form-outline mb-4">
                                                                <form:input path="adress" id="typeEmailX-2"
                                                                    class="form-control form-control-lg" />
                                                                <form:label path="adress" class="form-label">Adress
                                                                </form:label>
                                                                <form:errors class="text-danger" path="adress">
                                                                </form:errors>
                                                            </div>


                                                            <!-- Date Of Birth Field -->
                                                            <div class="form-outline mb-4">
                                                                <form:input path="dateOfBirth" id="typeEmailX-2"
                                                                    class="form-control form-control-lg" type="date" />
                                                                <form:label path="dateOfBirth" class="form-label">DOB
                                                                </form:label>
                                                                <form:errors class="text-danger" path="dateOfBirth">
                                                                </form:errors>
                                                            </div>

                                                            <!-- Username Field -->
                                                            <div class="form-outline mb-4">
                                                                <form:input path="userName" id="typeEmailX-2"
                                                                    class="form-control form-control-lg" />
                                                                <form:label path="userName" class="form-label">Username
                                                                </form:label>
                                                                <form:errors class="text-danger" path="userName">
                                                                </form:errors>
                                                            </div>

                                                            <!-- Email Field -->
                                                            <div class="form-outline mb-4">
                                                                <form:input path="email" type="email" id="typeEmailX-2"
                                                                    class="form-control form-control-lg" />
                                                                <form:label path="email" class="form-label">Email
                                                                </form:label>
                                                                <form:errors class="text-danger" path="email">
                                                                </form:errors>
                                                            </div>

                                                            <!-- Password Field -->
                                                            <div class="form-outline mb-4">
                                                                <form:input path="password" type="password"
                                                                    id="typePasswordX-2"
                                                                    class="form-control form-control-lg" />
                                                                <form:label path="password" class="form-label"
                                                                    for="typePasswordX-2">Password</form:label>
                                                                <form:errors path="password" class="text-danger">
                                                                </form:errors>
                                                            </div>

                                                            <!-- Confirm Password Field -->
                                                            <div class="form-outline mb-4">
                                                                <form:input path="confirmPW" type="password"
                                                                    id="typePasswordX-2"
                                                                    class="form-control form-control-lg" />
                                                                <form:label path="confirmPW" class="form-label"
                                                                    for="typePasswordX-2">Password</form:label>
                                                                <form:errors path="confirmPW" class="text-danger">
                                                                </form:errors>
                                                            </div>
                                                            <button class="btn btn-primary btn-lg btn-block"
                                                                type="submit">Sign Up</button>
                                                            <hr class="my-4">
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </form:form>
                            </section>
                    </body>
                    <footer>
                        <%@ include file="commons/Footer.jsp" %>

                    </footer>


                    </html>
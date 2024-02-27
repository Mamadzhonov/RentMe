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

                    <link rel="stylesheet" href="/css/Index.css">


                    <!DOCTYPE html>
                    <html>

                    <head>
                        <meta charset="UTF-8">
                        <title>New Item</title>
                    </head>

                    <body>
                        <%@ include file="commons/nav-bar.jsp" %>

                            <!-- Permission Message -->
                            <p class="text-danger text-center"> ${permisstionFailed} </p>
                            <!-- Failed Message -->
                            <p class="text-danger text-center"> ${failedMessage} </p>
                            <!-- Success Message -->
                            <p class="text-success text-center">${successMessage}</p>


                            <!-- Titile -->
                            <h1 class="text-center">Create a post</h1>

                            <div class="container">

                                <form:form action="/new-item" method="POST" modelAttribute="newItem"
                                    class="col-lg-6 offset-lg-3 col-sm " enctype="multipart/form-data" id="form-new">

                                    <!-- Title input -->
                                    <div data-mdb-input-init class="form-outline mb-4">
                                        <form:input path="title" type="text" class="form-control" required="required"/>
                                        <form:label path="title" class="form-label">Title</form:label>
                                        <form:errors path="title" class="py-1 alert alert-danger"></form:errors>
                                    </div>

                                    <!-- Price input -->
                                    <div data-mdb-input-init class="form-outline mb-4">
                                        <form:input path="price" type="number" class="form-control" required="required"/>
                                        <form:label path="price" class="form-label">Price</form:label>
                                        <form:errors path="price" class="py-1 alert alert-danger"></form:errors>
                                    </div>

                                    <!-- Location input -->
                                    <div data-mdb-input-init class="form-outline mb-4">
                                        <form:input path="location" type="text" class="form-control" required="required"></form:input>
                                        <form:label path="location" class="form-label">Location</form:label>
                                        <form:errors path="location" class="py-1 alert alert-danger"></form:errors>
                                    </div>

                                    <!-- Phone Number input -->
                                    <div data-mdb-input-init class="form-outline mb-4">
                                        <form:input path="phoneNum" type="text" class="form-control" required="required"/>
                                        <form:label path="phoneNum" class="form-label">Phone Number</form:label>
                                        <form:errors path="phoneNum" class="py-1 alert alert-danger"></form:errors>
                                    </div>

                                    <!-- Details input -->
                                    <div data-mdb-input-init class="form-outline mb-4">
                                        <form:input path="details" type="text" class="form-control" required="required"/>
                                        <form:label path="details" class="form-label">Details</form:label>
                                        <form:errors path="details" class="py-1 alert alert-danger"></form:errors>
                                    </div>

                                    <!-- IMG input -->
                                    <div data-mdb-input-init class="form-outline mb-4">
                                        <form:input path="image" type="file" name="image" class="form-control" accept="image/*" required="required"></form:input>
                                        <form:label path="image" class="form-label">Image</form:label>
                                        <form:errors path="image" class="py-1 alert alert-danger"></form:errors>
                                    </div>


                                    <!-- Submit button -->
                                    <button class="btn btn-primary btn-block mb-4" id="btn-test-js">Place order</button>
                                </form:form>
                            </div>


                            <script src="/JS/baseScrips.js"></script>

                    </body>

                    </html>
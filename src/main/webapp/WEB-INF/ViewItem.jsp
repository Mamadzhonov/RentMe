<%@ page isErrorPage="true" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

                        <link rel="stylesheet" href="/css/posts.css">


                        <!DOCTYPE html>
                        <html>

                        <head>
                            <meta charset="UTF-8">
                            <title>View Post</title>
                        </head>

                        <body>
                            <%@ include file="commons/nav-bar.jsp" %>


                                <!-- Product section-->
                                <section class="py-5 d-flex flex-row">
                                    <div class="container px-4 px-lg-5 my-5">
                                        <div class="row gx-4 gx-lg-5 align-items-center">
                                            <div class="col-md-6"><img class="img-fluid"
                                                    src="data:image/jpeg;base64,${Base64.getEncoder().encodeToString(foundPost.getImage())}"
                                                    alt="img" style="height: 600px;"></div>
                                          
                                            <div class="col-md-6 ">
                                                <h1 class="display-5 fw-bolder">${foundPost.getTitle()}</h1>
                                                <p>Price: ${foundPost.getPrice()} $</p>
                                                <p class="lead"> Details: ${foundPost.getDetails()}</p>
                                                <p>Location: ${foundPost.getLocation()}</p>
                                                <p>Phone Number: ${foundPost.getPhoneNum()}</p>
                                                <p>Created at: ${foundPost.getCreatedAt()}</p>
                                                <div class="d-flex">
                                                    <input class="form-control text-center me-3" id="inputQuantity"
                                                        type="num" value="1" style="max-width: 3rem">
                                                    <button class="btn btn-outline-dark flex-shrink-0" type="button">
                                                        <i class="bi-cart-fill me-1"></i>
                                                        Add to cart
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                                <!-- Related items section-->
                                <section class="py-5 bg-light">
                                    <div class="container px-4 px-lg-5 mt-5">
                                        <h2 class="fw-bolder mb-4">Related products</h2>
                                        <div
                                            class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                                            <div class="col mb-5">
                                                <div class="card h-100">
                                                    <!-- Product image-->
                                                    <img class="card-img-top"
                                                        src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                                                        alt="...">
                                                    <!-- Product details-->
                                                    <div class="card-body p-4">
                                                        <div class="text-center">
                                                            <!-- Product name-->
                                                            <h5 class="fw-bolder">Fancy Product</h5>
                                                            <!-- Product price-->
                                                            $40.00 - $80.00
                                                        </div>
                                                    </div>
                                                    <!-- Product actions-->
                                                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                        <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                                href="#">View options</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col mb-5">
                                                <div class="card h-100">
                                                    <!-- Sale badge-->
                                                    <div class="badge bg-dark text-white position-absolute"
                                                        style="top: 0.5rem; right: 0.5rem">Sale</div>
                                                    <!-- Product image-->
                                                    <img class="card-img-top"
                                                        src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                                                        alt="...">
                                                    <!-- Product details-->
                                                    <div class="card-body p-4">
                                                        <div class="text-center">
                                                            <!-- Product name-->
                                                            <h5 class="fw-bolder">Special Item</h5>
                                                            <!-- Product reviews-->
                                                            <div
                                                                class="d-flex justify-content-center small text-warning mb-2">
                                                                <div class="bi-star-fill"></div>
                                                                <div class="bi-star-fill"></div>
                                                                <div class="bi-star-fill"></div>
                                                                <div class="bi-star-fill"></div>
                                                                <div class="bi-star-fill"></div>
                                                            </div>
                                                            <!-- Product price-->
                                                            <span
                                                                class="text-muted text-decoration-line-through">$20.00</span>
                                                            $18.00
                                                        </div>
                                                    </div>
                                                    <!-- Product actions-->
                                                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                        <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                                href="#">Add to cart</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col mb-5">
                                                <div class="card h-100">
                                                    <!-- Sale badge-->
                                                    <div class="badge bg-dark text-white position-absolute"
                                                        style="top: 0.5rem; right: 0.5rem">Sale</div>
                                                    <!-- Product image-->
                                                    <img class="card-img-top"
                                                        src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                                                        alt="...">
                                                    <!-- Product details-->
                                                    <div class="card-body p-4">
                                                        <div class="text-center">
                                                            <!-- Product name-->
                                                            <h5 class="fw-bolder">Sale Item</h5>
                                                            <!-- Product price-->
                                                            <span
                                                                class="text-muted text-decoration-line-through">$50.00</span>
                                                            ${foundPost.getId()}
                                                        </div>
                                                    </div>
                                                    <!-- Product actions-->
                                                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                        <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                                href="#">Add to cart</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col mb-5">
                                                <div class="card h-100">
                                                    <!-- Product image-->
                                                    <img class="card-img-top"
                                                        src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                                                        alt="...">
                                                    <!-- Product details-->
                                                    <div class="card-body p-4">
                                                        <div class="text-center">
                                                            <!-- Product name-->
                                                            <h5 class="fw-bolder">Popular Item</h5>
                                                            <!-- Product reviews-->
                                                            <div
                                                                class="d-flex justify-content-center small text-warning mb-2">
                                                                <div class="bi-star-fill"></div>
                                                                <div class="bi-star-fill"></div>
                                                                <div class="bi-star-fill"></div>
                                                                <div class="bi-star-fill"></div>
                                                                <div class="bi-star-fill"></div>
                                                            </div>
                                                            <!-- Product price-->
                                                            ${foundPost.getId()}
                                                        </div>
                                                    </div>
                                                    <!-- Product actions-->
                                                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                                        <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                                                href="#">Add to cart</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                                <!-- Footer-->
                                <footer class="py-5 bg-dark">
                                    <div class="container">
                                        <p class="m-0 text-center text-white">Copyright © Your Website 2023</p>
                                    </div>
                                </footer>
                                <!-- Bootstrap core JS-->
                                <script
                                    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
                                <!-- Core theme JS-->
                                <script src="js/scripts.js"></script>


                        </body>

                        </body>

                        </html>
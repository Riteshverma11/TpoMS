<%-- 
    Document   : header
    Created on : 10 Jan, 2020, 2:35:06 PM
    Author     : root
--%>
<%@page import="com.model.User"%>
<%
    String ct = application.getContextPath();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Fox University - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="<%=ct%>/resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="<%=ct%>/resources/css/animate.css">

    <link rel="stylesheet" href="<%=ct%>/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=ct%>/resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="<%=ct%>/resources/css/magnific-popup.css">

    <link rel="stylesheet" href="<%=ct%>/resources/css/aos.css">

    <link rel="stylesheet" href="<%=ct%>/resources/css/ionicons.min.css">

    <link rel="stylesheet" href="<%=ct%>/resources/css/flaticon.css">
    <link rel="stylesheet" href="<%=ct%>/resources/css/icomoon.css">
    <link rel="stylesheet" href="<%=ct%>/resources/css/style.css">
  </head>
  <body>
    <div class="bg-top navbar-light">
      <div class="container">
        <div class="row no-gutters d-flex align-items-center align-items-stretch">
          <div class="col-md-4 d-flex align-items-center py-4">
            <a class="navbar-brand" href="home">Fox. <span>University</span></a>
          </div>
          <div class="col-lg-8 d-block">
            <div class="row d-flex">
              <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
                <div class="icon d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
                <div class="text">
                  <span>Email</span>
                  <%
                      if (session.getAttribute("user") != null) {
                          User user = (User) session.getAttribute("user");
                  %>
                  <span><%= user.getEmail()%></span>
                  <%
                  } else {
                  %>
                  <span>youremail@email.com</span>
                  <%
                      }
                  %>
                </div>
              </div>
              <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
                <div class="icon d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
                <div class="text">
                  <span>Call</span>
                  <span>Call Us: + 1235 2355 98</span>
                </div>
              </div>
              <%
                  if (session.getAttribute("user") != null) {
                      User user = (User) session.getAttribute("user");
              %>
              <div class="col-md topper d-flex align-items-center justify-content-end">
                <div class="dropdown">
                  <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-option-vertical">Setting</span>
                  </button>
                  <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Profile</a></li>
                    <li role="presentation"><a role="menuitem" tabindex="-1" href="/TpoMS/user/logout">Logout</a></li>
                  </ul>
                </div>
              </div>
              <%
              } else {
              %>
              <div class="col-md topper d-flex align-items-center justify-content-end">
                <p class="mb-0">
                  <a href="<%=ct%>/web/login" class="btn py-2 px-3 btn-primary d-flex align-items-center justify-content-center">
                    <span>Login Here</span>
                  </a>
                </p>
              </div>
              <%
                  }
              %>
            </div>
          </div>
        </div>
      </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
      <div class="container d-flex align-items-center px-4">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="oi oi-menu"></span> Menu
        </button>
        <form action="#" class="searchform order-lg-last">
          <div class="form-group d-flex">
            <input type="text" class="form-control pl-3" placeholder="Search">
            <button type="submit" class="form-control search"><span class="ion-ios-search"></span></button>
          </div>
        </form>
        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active"><a href="home" class="nav-link pl-0">Home</a></li>
            <li class="nav-item"><a href="about" class="nav-link">About</a></li>
            <li class="nav-item"><a href="courses" class="nav-link">Courses</a></li>
            <li class="nav-item"><a href="teacher" class="nav-link">Staff</a></li>
            <li class="nav-item"><a href="blog" class="nav-link">Blog</a></li>
            <li class="nav-item"><a href="contact" class="nav-link">Contact</a></li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- END nav -->
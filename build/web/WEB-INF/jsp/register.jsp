<%-- 
    Document   : register
    Created on : 10 Jan, 2020, 4:59:13 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String ct = application.getContextPath();
%>
<jsp:include page="blocks/header.jsp"></jsp:include>
<section class="ftco-section ftco-consult ftco-no-pt ftco-no-pb" style="background-image: url(<%=ct%>/resources/images/bg_5.jpg);" data-stellar-background-ratio="0.5">
  <div class="overlay"></div>
  <div class="container">
    <div class="row justify-content-end">
      <div class="col-md-6 py-5 px-md-5">
        <div class="py-md-5">
          <div class="heading-section heading-section-white ftco-animate mb-5">
            <h2 class="mb-4">Register</h2>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
          </div>
          <form action="/TpoMS/user/register" method="post" class="appointment-form ftco-animate">
            <div class="d-md-flex">
              <div class="form-group ml-md-4">
                <input type="text" name="name" class="form-control" placeholder="Name">
              </div>
            </div>
            <div class="d-md-flex">
              <div class="form-group ml-md-4">
                <input type="text" name="email" class="form-control" placeholder="Email">
              </div>
            </div>
            <div class="d-md-flex">
              <div class="form-group ml-md-4">
                <input type="text" name="mobile" class="form-control" placeholder="Contact No">
              </div>
            </div>
            <div class="d-md-flex">
              <div class="form-group ml-md-4">
                <input type="password" name="password" class="form-control" placeholder="Password">
              </div>
            </div>
            <div class="d-md-flex">
              <div class="form-group ml-md-4">
                <input type="submit" value="Register" class="btn btn-primary py-3 px-4">
              </div>
              <div class="form-group ml-md-4">
                <a href="login">
                  <input type="button" value="Login Here" class="btn btn-dark py-3 px-4">
                </a>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
<jsp:include page="blocks/footer.jsp"></jsp:include>
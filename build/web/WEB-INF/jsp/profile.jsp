<%-- 
    Document   : profile
    Created on : 10 Jan, 2020, 5:54:07 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);

    String ct = application.getContextPath();

    if (session.getAttribute("user") == null) {
        response.sendRedirect("login");
    }
%>
<jsp:include page="blocks/header.jsp"></jsp:include>
    <section class="ftco-section ftco-no-pt ftc-no-pb">
      <div class="container">
        <div class="row d-flex">
          <div class="col-md-5 order-md-last wrap-about wrap-about d-flex align-items-stretch">
            <div class="img" style="background-image: url(<%=ct%>/resources/images/about.jpg); border"></div>
        </div>
        <div class="col-md-7 wrap-about py-5 pr-md-4 ftco-animate">
          <h2 class="mb-4">What We Offer</h2>
          <p>On her way she met a copy. The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word.</p>
          <div class="row mt-5">
            <div class="col-lg-6">
              <div class="services-2 d-flex">
                <div class="icon mt-2 d-flex justify-content-center align-items-center"><span class="flaticon-security"></span></div>
                <div class="text pl-3">
                  <h3>Safety First</h3>
                  <p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="services-2 d-flex">
                <div class="icon mt-2 d-flex justify-content-center align-items-center"><span class="flaticon-reading"></span></div>
                <div class="text pl-3">
                  <h3>Regular Classes</h3>
                  <p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="services-2 d-flex">
                <div class="icon mt-2 d-flex justify-content-center align-items-center"><span class="flaticon-diploma"></span></div>
                <div class="text pl-3">
                  <h3>Certified Teachers</h3>
                  <p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="services-2 d-flex">
                <div class="icon mt-2 d-flex justify-content-center align-items-center"><span class="flaticon-education"></span></div>
                <div class="text pl-3">
                  <h3>Sufficient Classrooms</h3>
                  <p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="services-2 d-flex">
                <div class="icon mt-2 d-flex justify-content-center align-items-center"><span class="flaticon-jigsaw"></span></div>
                <div class="text pl-3">
                  <h3>Creative Lessons</h3>
                  <p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="services-2 d-flex">
                <div class="icon mt-2 d-flex justify-content-center align-items-center"><span class="flaticon-kids"></span></div>
                <div class="text pl-3">
                  <h3>Sports Facilities</h3>
                  <p>Far far away, behind the word mountains, far from the countries Vokalia.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</section>
<jsp:include page="blocks/footer.jsp"></jsp:include>
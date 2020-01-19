<%-- 
    Document   : emailVerfication
    Created on : 17 Jan, 2020, 9:54:23 PM
    Author     : Ritesh Verma
--%>

<%@page import="com.servieces.EmailService"%>
<%@page import="com.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   if (session.getAttribute("user") == null) {
      response.sendRedirect("login.jsp");
   } else {
      User user = (User) session.getAttribute("user");
      if (!user.isVerified()) {
         String email = "";
         String generatedOtp = "";

         email = user.getEmail();
         System.out.println("emailVerification Email : " + user.getEmail());

         String no = "0123456789";
         StringBuilder sb = new StringBuilder(6);

         for (int i = 0; i < 6; i++) {
            int index = (int) (no.length() * Math.random());
            sb.append(no.charAt(index));
         }
         generatedOtp = sb.toString();

         System.out.println("Value of i is : " + generatedOtp);

         EmailService.sendEmail(email, generatedOtp);

         session.setAttribute("otp", generatedOtp);
      } else {
         response.sendRedirect("");
      }
   }
%>
<script>
   function verifyOtp() {

      var enteredOtp = document.getElementById("enteredOtp").value;
      var err = document.getElementById("err");

      object = new XMLHttpRequest();
      object.open("post", "/TpoMS/user/verify?enteredOtp=" + enteredOtp);

      object.onreadystatechange = function () {
         if (object.readyState === 4) {
            var res = object.responseText;
            err.innerHTML = res;
//            alert(res);
            if (res === "Admin") {
               window.location.href = "/TpoMS/admin/dashboard";
            } else if (res === "Faculty") {
               window.location.href = "/TpoMS/faculty/dashboard";
            } else if (res === "Student") {
               window.location.href = "/TpoMS/student/dashboard";
            } else if (res === "") {
               err.innerHTML = "<span style='color : red'>Invalid OTP...<span>";
            }
         }
      };
      object.send();
   }
</script>
<jsp:include page="blocks/header.jsp"></jsp:include>
   <section class="ftco-section ftco-no-pt ftco-no-pb contact-section">
     <div class="container">
       <div class="col-md-4 p-4 p-md-5 order-md-last bg-light">
         <!--<form action="#" method="post">-->
         <div class="form-group">
           <input type="text" class="form-control" id="enteredOtp" placeholder="Enter Otp">
         </div>
         <div class="form-group">
           <input type="button" onclick="verifyOtp()" value="Verify" class="form-control-file btn btn-primary py-3 px-5">
         </div>
         <!--</form>-->
         <a href="/TpoMS/">Didn't Get OTP</a>
         <p id="err" class="align-content-center alert-dark bg-danger"></p>
       </div>
     </div>
   </section>
<jsp:include page="blocks/footer.jsp"></jsp:include>

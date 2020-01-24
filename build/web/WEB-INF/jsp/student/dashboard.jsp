<%-- 
    Document   : dashboard
    Created on : 17 Jan, 2020, 6:25:59 PM
    Author     : Ritesh Verma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
   String ct = application.getContextPath();
%>
<jsp:include page="../blocks/header.jsp"></jsp:include>
   <section class="ftco-section ftco-no-pt ftc-no-pb">
     <div class="container">
       <div class="col-md-6 wrap-about py-5 pr-md-4 ftco-animate">
         <h2 class="mb-4">Ask Question</h2>
         <div class="services-2 d-flex">
           <div class="text pl-3">
             <form action="<%=ct%>/question/postQuestion" method="post">
             <div class="form-group">
               <textarea class="form-control" rows="5" name="question" placeholder="Your Question"></textarea>
             </div>
             <div class="form-group">
               <input type="submit" value="Submit Question" class="form-control-file btn btn-primary py-3 px-5">
             </div>
           </form>
         </div>
       </div>
     </div>
   </div>
</section>
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
   $(document).ready(function () {
      $("#editQuestion").click(function () {
         $("#que").hide();
         $("#que").show();
//         alert(1);
      });
   });
</script>-->
<section class="ftco-section">
  <div class="container-fluid px-4">
    <div class="row">
      <div id="que" class="col-md-3 course ftco-animate">
        <c:forEach items="${questions}" var="current">
           <div class="text pt-4">
             <h3><c:out value="${current.question}" /></h3>
             <p>Posted Date : <c:out value="${current.dateTime}" /></p>
             <p><button id="editQuestion" href="#" class="btn btn-primary">Edit Question</button></p>
           </div>
        </div>
      </c:forEach>
    </div>
  </div>
</section>


<jsp:include page="../blocks/footer.jsp"></jsp:include>
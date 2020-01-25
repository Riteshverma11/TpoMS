
<%-- 
    Document   : dashboard
    Created on : 17 Jan, 2020, 9:12:20 PM
    Author     : Ritesh Verma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   String ct = application.getContextPath();
%>
<jsp:include page="../blocks/header.jsp"></jsp:include>
   <section class="ftco-section">
     <div class="container-fluid px-4">
       <div class="row">
         <div id="que" class="col-md-3 course ftco-animate">
           <c:forEach items="${questions}" var="current">
           <div class="text pt-4">
             <h3><c:out value="${current.question}" /></h3>
             <p>Posted Date : <c:out value="${current.dateTime}" /></p>
             <p><button id="ansQuestion" class="btn btn-primary">Reply</button></p>
           </div>
       </div>
       </c:forEach>
     </div>
   </div>
</section>

<jsp:include page="../blocks/footer.jsp"></jsp:include>

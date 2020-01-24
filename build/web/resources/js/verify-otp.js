/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function verifyOtp() {

   var enteredOtp = document.getElementById("enteredOtp").value;
   var err = document.getElementById("err");

   object = new XMLHttpRequest();
   object.open("post", "/TpoMS/user/verify?enteredOtp=" + enteredOtp);

   object.onreadystatechange = function () {
      if (object.readyState === 4) {
         var res = object.responseText;
         if (res === "Admin") {
            window.location.href = "/TpoMS/admin/dashboard";
         } else if (res === "Faculty") {
            window.location.href = "/TpoMS/faculty/dashboard";
         } else if (res === "Student") {
            window.location.href = "/TpoMS/student/dashboard";
         } else if (res === "Err") {
            err.innerHTML = "Invalid OTP...";
         }
      }
   };
   object.send();
}
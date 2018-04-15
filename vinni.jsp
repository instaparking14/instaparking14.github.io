<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
#section1{
    background-color:black;
    height:10%;
    position:absolute;
    top:0;
    left:0;
    width:100%;

}
p.italic{
    font-style:italic;
    font-size:15px;
    margin-left:40px;
    line-height:0px;
    

}
p.style{
    font-style:normal;
    font-size:20px;
    margin-left:800px;
    

}
a.visited{
    color:white;
    font-size: 12px;
    margin-left:1050px;
}
.button {
    background-color:blue;
    border: none;
    color: white;
    padding: 9px 15px;
    text-align: center;
    display: inline-block;
    font-size: 12px;
    margin-left:800px;
}


</style>
</head>
<body>
    <script>
    function validateForm(){
    var phno=document.getElementById("Mobileno");
    var password=document.getElementById("pwd");
    if(phno.value==""){
        alert("Phone number must be filled out");
        return false;
    }
    if (password.value == "") {
        alert("Password must not be blank");
        return false;
    }

    if(phno.value!==""){
        if(phno.value.length==10){
            
        }
        
   else{
          alert("Phone number must contain 10 digits");
          return false;
   }
    }

    if(password.value!= "") {
      if(password.value.length < 6) {
        alert("Error: Password must contain at least six characters!");
        return false;
      }
     var digits = /[0-9]/g;
     var lowercase = /[a-z]/g;
     var uppercase = /[A-Z]/g;
      if(password.value.match(digits) && password.value.match(uppercase) && password.value.match(lowercase)) {
         
          
      }
      else
     {
        alert("Error: password must contain at least one number (0-9),one lowercase letter (a-z),one uppercase letter(A-Z).");
        return false;
     }

    } else {
      alert("Error: Please check that you've entered and confirmed your password!");
      return false;
    }
return true;
  }
    </script>
<section id="section1">

    <h1 style="color:white;margin-bottom:0;">InstaPark

    <br>

       <p class="italic" style="margin-top:0;">A smart parking solution
       <a href="https://crimson-sripriya94.c9users.io/hackathon/signup.html" class="visited">New User? Register</a></p>
       </h1>
    </section1>
    <br><br>
<p class="style">SignIn</font></p>
<form action="https://crimson-sripriya94.c9users.io/hackathon/selectcity.html" onsubmit="return validateForm()">
   <p class="style"> <input type="text" name="mobileno." id="Mobileno" placeholder="Phone Number" required></p>
    <p class="style"><input type="password" name="password" id="pwd" placeholder="Password" required></p>
    <input type="submit" value=Login class=button>
    </form>
    
  <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/c9"
         user = "sripriya94"  password = "pass123"/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from user;
      </sql:query>
      
       <table border = "1" width = "100%">
         <tr>
            <th>Mobileno</th>
            <th>fname</th>
            <th>lname Name</th>
            <th>password</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.mobileno}"/></td>
               <td><c:out value = "${row.fname}"/></td>
               <td><c:out value = "${row.lname}"/></td>
               <td><c:out value = "${row.password}"/></td>
            </tr>
         </c:forEach>
      </table>
 
 
</body>
</html>

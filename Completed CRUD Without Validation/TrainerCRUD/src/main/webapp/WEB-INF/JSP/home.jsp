<%-- 
    Document   : index
    Created on : Jun 27, 2020, 1:19:01 PM
    Author     : ReMieL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="springForm" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
    
<head>

<title>Trainers CRUD</title>


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"  crossorigin="anonymous">
 
</head>
<body style="text-align: center">

 <div class="container my-2">
 <h1>Trainer List</h1>
 
  <table border="1" class = "table table-striped table-responsive-md">
   <thead>
    <tr>
     <th>Trainer First Name</th>
     <th>Trainer Last Name</th>
     <th>Trainer Subject</th>
     <th colspan="2">Actions</th>
    </tr>
   </thead>
   <tbody>
       <c:forEach items="${listOfTrainers}" var= "c" >
            <tr>
            <td>${c.firstname}</td>
            <td>${c.lastname}</td>
            <td>${c.subject}</td>
            <td>
                <form action="deleteTrainer" method="post">
                <button type="submit" class="btn btn-danger" name="delete_trainer"/>Delete</button>
                <input  type="hidden" name="id" value="${c.id}" />
                </form>
                
            </td>
            <td>
                <form action="preUpdateTrainer" method="post">
                <button type="submit" class="btn btn-warning" name="update_trainer"/>Update</button>
                <input  type="hidden" name="id" value="${c.id}" />
                </form>
                
            </td>
           </tr>
    </c:forEach>



    
   </tbody>
  </table>
 </div>
    
    <br>
    <hr>
                <form action="preInsertTrainer" method="post">
                <button type="submit" class="btn btn-primary btn-lg" name="add_Trainer"/>Add Trainer</button>
                
                </form>
    
    </body>
</html>

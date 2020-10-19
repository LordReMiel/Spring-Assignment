<%-- 
    Document   : addTrainer
    Created on : Jun 27, 2020, 1:45:33 PM
    Author     : ReMieL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="springForm" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Trainer</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"  crossorigin="anonymous">
        <style>
            
          .error{color: red; font-size: small} 
          .caution{color: gray; font-family: smaller}
          body{ font-family: sans-serif}
          span {
                display: block;
                word-wrap:break-word;
                
                 
               }
        </style>
    </head>
    
    <body>
        <h1 style=" text-align: center">Please enter the Trainers Details</h1>
        <br>
        <br>
        <hr>
        <br>
        <br>
        <br>
        
        <div style="text-align: center">            
            
        <springForm:form  action="doInsertTrainer" method="post" modelAttribute="newTrainer">



        Name:  &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<springForm:input type="text" path="firstname" required ="required" pattern="[A-Z][a-z]{1,}"/>
        <span class="caution"> First Name should start with Capital Letter,contains at least 2 characters and should not contain numbers</span><br><br><br><br>

        <springForm:errors path="firstname" cssClass="error"/>
       
        Last Name: &nbsp;<springForm:input type="text" path="lastname" required ="required" pattern="[A-Z][a-z]{1,}"/>
        <span class="caution"> Last Name should start with Capital Letter,contains at least 2 characters and should not contain numbers</span> <br><br><br><br>
       
        <springForm:errors path="lastname" cssClass="error"/>
        
        Subject:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<springForm:input type="text" path="subject" required ="required" pattern="[A-Z][a-zA-Z0-9]{1,}"/> 
        <span class="caution"> Subject should start with Capital Letter and contains at least 2 characters</span><br><br><br><br>
        
        <springForm:errors path="subject" cssClass="error"/>

        <button type="submit"  class="btn btn-primary" >Add Trainer</button>


    </springForm:form>
        </div>
        
        <div style="text-align: center">
            <hr>
                <form action="startPage" method="get">
                <button type="submit" class="btn btn-secondary btn-lg" name="home"/>Home</button>
                
                </form>
            
        </div>

        <div style="text-align: center">
    <jsp:include page="footer.jsp" />
    </div>
    </body>
</html>

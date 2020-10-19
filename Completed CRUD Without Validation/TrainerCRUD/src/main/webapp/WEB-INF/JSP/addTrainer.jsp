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



            Name:  &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<springForm:input type="text" path="firstname"/> <br><br><br><br>

        Last Name: &nbsp;<springForm:input type="text" path="lastname"/> <br><br><br><br>

        Subject:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<springForm:input type="text" path="subject"/> <br><br><br><br>


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

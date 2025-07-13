<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, com.onlineexam.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Available Students</title>
 <link rel="stylesheet" href="css/bootstrap.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .student-info {
        margin-bottom: 20px;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color: #f9f9f9;
    }
    h2 {
        color: #333;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Available Students</h2>
        <% 
       
            List<Student> students=(List<Student>)request.getAttribute("Students");
   
            for(Student s:students){
        %>
        <div class="student-info">
            <p><strong>Student ID</strong>: <%= s.getStudentId()%></p>
            <p><strong>Student Name</strong>: <%= s.getStudentName() %></p>
            <p><strong>Student Email</strong>: <%= s.getEmail() %></p>
            <p><strong>Student Phone No.</strong>: <%= s.getPhoneNumber() %></p>
            <p><strong>Student's Organization</strong>: <%= s.getOrganisationName() %></p>
           <form action="RemoveStudent" method="post">
            <button type="submit" class="btn btn-danger">Remove</button> 
           </form>
          
        </div>
        <% 
            } 
        %>
    </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Results</title>
  <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7; /* Light gray background */
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: #009688; /* Green header background */
            color: white; /* White text */
            padding: 20px;
            text-align: center;
        }
        .container {
            margin: 50px auto; /* Center the container */
            width: 50%; /* Set container width */
            background-color: #ffffff; /* White background */
            border: 2px solid #009688; /* Green border */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2); /* Shadow effect */
            padding: 20px;
            box-sizing: border-box;
        }
        table {
            width: 100%; /* Table takes full width of container */
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            border-bottom: 2px solid #009688; /* Green border */
            text-align: center;
        }
        th {
            background-color: #009688; /* Green background */
            color: white; /* White text */
        }
        tr:nth-child(even) {
            background-color: #f2f2f2; /* Light gray background for even rows */
        }
        tr:nth-child(odd) {
            background-color: #ffffff; /* White background for odd rows */
        }
    </style>
   
    
</head>
<body>
    
    <%
     HttpSession s=request.getSession(false);
        String email = (String) s.getAttribute("email");
      //  String organizationName = (String) s.getAttribute("organizationName");
        //String subjectName = (String) s.getAttribute("subjectName");
        String result = (String) s.getAttribute("result");
    %>
    
    <div class="header">
        <h1>Result</h1>
    </div>
    <div class="container">
    
    
   <table>
  <tr>
   <td>UserName</td>
   <td>Status/Result</td>
  </tr>
     <tr>
            <td><%= email %></td>
            <td><%= result %></td>
            
        </tr>
   
   </table>
  
    
    </div>
    <a href="index.jsp">Exit</a>
   
</body>
</html>

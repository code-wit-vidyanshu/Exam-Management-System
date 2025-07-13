<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Questions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #dbe5ed;
            padding: 20px;
        }
        h1 {
            text-align: center;
        }
        form {
            width: 50%;
            margin: 0 auto;
            background-color: #dbe5ed;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        label {
            font-weight: bold;
        }
        select, input[type="submit"],a {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        
        a {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            text-decoration:none;
        }
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Select Questions:</h1>
    
    <form action="AvailableExamServlet" method="post">
        <label for="exam">Available Questions:</label>
        <select id="exam" name="exam">
            <option value="sql">SQL</option>
            <option value="java">Java</option>
             <option value="sql">C</option>
            <option value="java">C++</option>
            <!-- Add more options as needed -->
        </select>
        <br><br>
        <input type="submit" value="Select Questions">
    </form>
    <form action="createSubject.jsp" method="post">
        <input type="submit" value="Create New Exam"><br><br>
       <a href="AdminDashboard.jsp">Back</a>
    </form>
</body>
</html>

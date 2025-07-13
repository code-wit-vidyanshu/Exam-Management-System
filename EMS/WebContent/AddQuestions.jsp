<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #dbe5ed;
            padding: 20px;
        }
        h1 {
            text-align: center;
            margin-bottom: 30px;
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
            display: block;
        }
        input[type="checkbox"] {
            margin-top: 5px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .add-question-link {
            display: block;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form action="AddQuestions" method="post">
       
        
        <h2>Add New Question:</h2>
        <div class="form-group">
            <label for="questionText">Question Text:</label>
            <input type="text" name="questionText" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="questionType">Question Type:</label>
            <select name="questionType" class="form-control">
                <option value="MCQ">Multiple Choice</option>
                <option value="TF">True/False</option>
                <!-- Add more options as needed -->
            </select>
        </div>
        <div class="form-group">
            <label for="option1">Option 1:</label>
            <input type="text" name="option1" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="option2">Option 2:</label>
            <input type="text" name="option2" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="option3">Option 3:</label>
            <input type="text" name="option3" class="form-control">
        </div>
        <div class="form-group">
            <label for="option4">Option 4:</label>
            <input type="text" name="option4" class="form-control">
        </div>
        <div class="form-group">
            <label for="points">Points:</label>
            <input type="text" name="points" class="form-control">
        </div>
        <div class="form-group">
            <label for="correctAnswer">Correct Answer:</label>
            <input type="text" name="correctAnswer" class="form-control" required>
        </div>
        <input type="submit" value="Add New Question"  name="btn" class="btn btn-primary mt-3">
        <input type="submit" value="Save Questions" name="btn" class="btn btn-primary mt-3">
    </form>
</body>
</html>

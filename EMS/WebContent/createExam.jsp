<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Exam</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
.hello
{
background-color:darkblue;
}
    body {
        font-family: Arial, sans-serif;
        background-color: #dbe5ed;
        margin: 0;
        padding: 0;
    }
    h2 {
        color: #333;
        text-align: center;
    }
    form {
        background-color: #dbe5ed;
        border: 1px solid #ccc;
        border-radius: 5px;
        padding: 20px;
        max-width: 500px;
        margin: 20px auto;
    }
    label {
        display: block;
        margin-bottom: 5px;
        color: #333;
    }
    input[type="text"],
    input[type="number"],
    textarea {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    textarea {
        resize: vertical;
    }
    input[type="submit"] {
        background-color: #4caf50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark  hello">
        <div class="container">
            <a class="navbar-brand" href="#">Exam Buddy</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="Login.jsp">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <h2>Create Exam</h2>
    <div class="container">
        <form action="createExamServlet" method="post">
            <div class="form-group">
                <label for="examName">Organisation Name:</label>
                <input type="text" class="form-control" id="examName" name="OrganisationName">
            </div>
            
            <div class="form-group">
                <label for="examDescription">Exam Description:</label>
                <textarea class="form-control" id="examDescription" name="examDescription" rows="4" cols="50"></textarea>
            </div>
            
            <div class="form-group">
                <label for="examDuration">Exam Duration (in minutes):</label>
                <input type="number" class="form-control" id="examDuration" name="examDuration" min="1">
            </div>
            
            <div class="form-group">
                <label for="passingCriteria">Passing Criteria (%):</label>
                <input type="number" class="form-control" id="passingCriteria" name="passingCriteria" min="1" max="100">
            </div>
            
            <button type="submit" class="btn btn-primary">Create Exam</button>
        </form>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

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
    
    
    <form action="SelectedExamServlet" method="post">
        <h2>Select Questions(s):</h2>
        <% 
            // Retrieve the list of exams from the request object
            List<String> questions = (List<String>) request.getAttribute("li");
            if (questions != null) {
                for (String question : questions) {
        %>
            <div class="form-check"> <!-- Add Bootstrap class -->
                <input type="checkbox" name="question" value="<%= question %>" class="form-check-input"> <!-- Add Bootstrap class -->
                <label class="form-check-label"><%= question %></label> <!-- Add Bootstrap class -->
            </div>
        <% 
                }
            }
        %>
        
        <div id="question-container" class="mt-4"></div>
        
        <input type="submit" value="Add New Question" name="btn" class="add-question-link btn btn-secondary">
        
        <input type="submit" value="Save Questions" name="btn" class="btn btn-primary mt-3">
    </form>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="com.onlineexam.model.Questions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
    function validateForm() {
        var options = document.getElementsByName("q1");
        var isChecked = false;
        for(var i=0; i<options.length; i++) {
            if(options[i].checked) {
                isChecked = true;
                break;
            }
        }
        if(!isChecked) {
            alert("Please select an option before proceeding.");
            return false;
        }
        return true;
    }
</script>
</head>
<body>
<% 
   Questions q =(Questions)session.getAttribute("cque");
%>
<!-- Question 1 -->
<div id="question1">
    <p><%=q.getQuestionText() %></p>
    <form id="form1" action="StartExam" method="post" onsubmit="return validateForm()">
        <input type="radio" id="q1_option1" name="q1" value="<%= q.getOption1() %>">
        <label for="q1_option1"><%=q.getOption1()%></label><br>
        <input type="radio" id="q1_option2" name="q1" value="<%= q.getOption2() %>">
        <label for="q1_option2"><%=q.getOption2() %></label><br>
        <input type="radio" id="q1_option3" name="q1" value="<%= q.getOption3() %>">
        <label for="q1_option3"><%=q.getOption3() %></label><br>
        <input type="radio" id="q1_option4" name="q1" value="<%= q.getOption4() %>">
        <label for="q1_option4"><%=q.getOption4() %></label><br>
        
        <% if((int)session.getAttribute("last") != 0) { %>
            <input type="submit" value="Previous" name="btn" >
        <% } %>

        <% if((int)session.getAttribute("last") == 1) { %>
            <input type="submit" value="Submit" name="btn" >
        <% } else { %>
            <input type="submit" value="Next" name="btn" >
        <% } %>
    </form>
</div>
</body>
</html>

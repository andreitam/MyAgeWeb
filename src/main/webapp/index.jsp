<%@ page import="java.time.LocalDate" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ page import="java.time.temporal.ChronoUnit" %>
<!doctype html>
<html lang="en">
<head>
<%--    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">--%>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    <title>Calculate age in days</title>
</head>
<body>
<h1>Calculate your age in days</h1>
    <form>
        <label for="birthday">Please enter your birthday</label>
        <input type="date" id="birthday" name="birthday">
         <input type = "submit" value = "Calculate" />
    </form>
    <label for="result">Your age in days is:</label>
    <output id="result" >
    <%
        LocalDate today = LocalDate.now();
        String birth = request.getParameter("birthday");
        if (birth != null)
        {
            try {
                LocalDate birthDate = LocalDate.parse(birth);
                long days = ChronoUnit.DAYS.between(birthDate,today);
                out.print(days+" days");
            }
            catch (Exception e) {
            }
        }
    %></output>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>
</html>
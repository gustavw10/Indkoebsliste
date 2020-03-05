<%--
  Created by IntelliJ IDEA.
  User: gustav
  Date: 04-03-2020
  Time: 00:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EKO</title>
</head>
<body>
Welcome to your list.
<br><br>
${requestScope.besked}

<form action="LogInServlet" method ="post">
    <label for="fname">navn:</label><br>
    <input type="text" id="fname" name="navn"><br>
    <label for="lname">kodeord:</label><br>
    <input type="text" id="lname" name="kodeord"><br><br>
    <input type="submit" value="login">
</form>

</body>
</html>

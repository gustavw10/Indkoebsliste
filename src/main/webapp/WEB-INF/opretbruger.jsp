<%--
  Created by IntelliJ IDEA.
  User: gustav
  Date: 05-03-2020
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Opret bruger</title>
</head>
<body>
<br>

${requestScope.besked}
<br>
<br>
<form action="OpretServlet" method ="post">
    <label for="fname">navn:</label><br>
    <input type="text" id="fname" name="navn"><br>
    <label for="lname">kodeord:</label><br>
    <input type="text" id="lname" name="kodeord"><br><br>
    <input type="submit" value="Opret">
</form>

</body>
</html>

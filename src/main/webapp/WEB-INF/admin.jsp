<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: gustav
  Date: 07-03-2020
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
</head>
<body>
Her kan du se listen af brugere og slette dem

<br>
<br>
<c:forEach var="element" items="${applicationScope.brugerMap}">
    ${element}
    <br>
</c:forEach>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Особистий кабінет</title>
    <link rel="stylesheet" href="PersonalPage.css">
</head>
<body>
<h1>Особистий кабінет</h1>
<h2>Ваші петиції:</h2>
<ul>
    <c:forEach var="petition" items="${Petitions}" varStatus="status">
        <li>
            <a href="PetitionDetails.jsp?id=${status.index}">Петиція ${status.index + 1}</a>
            <form action="delete-petition-servlet" method="post">
                <input type="hidden" name="petitionId" value="${status.index}">
                <div style="text-align: end;"><input type="submit" value="Видалити" id="id"></div>
            </form>

        </li>
    </c:forEach>
</ul>
<a href="index.jsp">На головну сторінку</a>
</body>
</html>

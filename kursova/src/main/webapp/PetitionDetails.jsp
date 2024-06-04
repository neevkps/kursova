<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="example.com.kursova.Petition" %>
<%@ page import="java.util.List" %>


<%
    List<Petition> petitions = (List<Petition>) session.getAttribute("Petitions");
    int index = Integer.parseInt(request.getParameter("id"));
%>

<html>
<head>
    <meta charset="UTF-8">
    <title>Деталі Петиції</title>
    <link rel="stylesheet" href="PetitionDetails.css">
</head>
<body>
<h1>Деталі Петиції</h1>

<%
    if (petitions != null && index >= 0 && index < petitions.size()) {
        Petition petition = petitions.get(index);
%>
<h2>Категорія: <%= petition.getCategory() %></h2>
<h3>Заголовок: <%= petition.getTitle() %></h3>
<p>Текст петиції: <%= petition.getText() %></p>
<form action="vote-servlet" method="post">
    <input type="hidden" name="petitionId" value="<%= index %>">
    <input type="submit" value="Проголосувати">
</form>
<p>Кількість голосів: <%= petition.getVotes() %></p>

<a href="PersonalPage.jsp">Повернутись до списку петицій</a>

</body>
</html>
<% } %>

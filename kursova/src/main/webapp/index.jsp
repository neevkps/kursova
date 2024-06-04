<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Main Page</title>
    <link rel="stylesheet" href="index.css">
</head>
<body>
<h1>Сайт подачі петицій</h1>

<form action="hello-servlet" method="post">
    <label for="category"><h3>Виберіть Категорію:</h3></label>
    <select name="category" id="category">
        <option value="Містобудування">Містобудування</option>
        <option value="Екологічна політика">Екологічна політика</option>
        <option value="Транспорт">Транспорт</option>
        <option value="Соціальний захист">Соціальний захист</option>
        <option value="Охорона здоров'я та спорт">Охорона здоров'я та спорт</option>
        <option value="МАФи та стихійна торгівля">МАФи та стихійна торгівля</option>
        <option value="Найменування та перейменування вулиць">Найменування та перейменування вулиць</option>
    </select><br>
    <h3>Заголовок Петиції</h3><input name="title" type="text" id="title"> <br>
    <h3>Текст Петиції</h3>
    <textarea name="text" id="TextField" rows="4" cols="50" placeholder="Введіть текст петиції"></textarea><br>
    <input type="submit" value="Submit">
</form>
<a href="PersonalPage.jsp">особистий кабінет</a>
<img src="qr-code.png" width="175">
</body>
</html>
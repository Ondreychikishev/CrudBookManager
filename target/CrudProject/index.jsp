<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JavaRush Test Task</title>
</head>
<body>

<style>
    BODY {
        background: #333; /* Цвет фона веб-страницы */
        color: #FF4500;
    }
    A {
        color: orangered; /* Цвет ссылок */
    }
    A:visited {
        color: #cecece; /* Цвет посещенных ссылок */
    }
    A:active {
        color: #cecece; /* Цвет активных ссылок */
    }
    #footer {
        position: fixed; /* Фиксированное положение */
        left: 0;
        bottom: 0; /* Левый нижний угол */
        padding: 10px; /* Поля вокруг текста */
        background: #333; /* Цвет фона */
        color: #FF4500; /* Цвет текста */
        width: 100%;
    }

</style>
    <div align="center">
    <h1>JavaRush Test Task</h1>
    </div>
    <br/>
    <div align="center">
    <a href="<c:url value="/book"/>" target="_blank">Books list</a>
    </div>
    <p><img src="images/c19dd3.png"></p>
    <div id="footer">
        &copy; Andrey Chikishev
    </div>
    <br/>
</body>
</html>

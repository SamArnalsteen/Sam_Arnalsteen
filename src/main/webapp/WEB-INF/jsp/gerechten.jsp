<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h1>gerechten overzicht</h1>
    <c:if test="${gerechten==null}">
        <p>Er staan geen gerechten op het menu</p>
    </c:if>
    <table>
        <thead>

                <th>Omschrijving</th>
                <th>Prijs</th>

        </thead>
        <tbody>
        <c:forEach items="${gerechten}" var="gerecht">
            <tr>
                <td>${gerecht.omschrijving}</td>
                <td>${gerecht.prijs}</td>
                <td><a href = "/gerechten/change/${gerecht.id}">update</a></td>
                <td><a href = "/gerechten/delete/${gerecht.id}">delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <form action="/gerechten/add" method="get">
        <input type="submit" value="add">
    </form>
</body>
</html>
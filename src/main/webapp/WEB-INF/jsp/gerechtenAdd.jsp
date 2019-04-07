<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Gerechten toevoegen</title>
</head>
<body>
<c:if test="${foutboodschappen!=null}">
    <div class="alert-danger">
        <ul>
            <c:forEach var="fout" items="${foutboodschappen}">
                <li>${fout}</li>
            </c:forEach>
        </ul>
    </div>
</c:if>
<form method="post" action="/gerechten/add/" novalidate="novalidate">
    <!-- novalidate in order to be able to run tests correctly -->
    <p><label for="omschrijving">Omschrijving</label><input type="text" id="omschrijving" name="omschrijving"
                                            required value=""></p>
    <p><label for="prijs">Prijs</label><input type="text" id="prijs" name="prijs" required value=""></p>

    <p><input type="submit" id="add" value="Add gerecht"></p>
</form>
</body>
</html>
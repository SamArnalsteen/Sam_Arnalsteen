<!doctype html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Gerechten update</title>
</head>
<body>
<form action="/gerechten/updateConfirm" method="post">
    <p><label>Omschrijving</label><input type="text" name="omschrijving", id="omschrijving", value="${gerecht.omschrijving}"></p>
    <p><label>prijs</label><input type="text" name="prijs" id="prijs" value="${gerecht.prijs}"></p>
    <input type="submit" value="update">
</form>
</body>
</html>
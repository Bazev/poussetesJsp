<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Catalogue</title>
</head>
<body>

<h2>Catalogue</h2>
<form method="post">
    <label>Nom </label><input type="text" name="POUSSETTE" value="${poussetteRecherche}">
<label>Couleur:</label><select name="COULEUR"><c:forEach items="${couleurs}" var="couleur">
    <option value="">Toutes</option><c:if test="${couleur.id eq idColor}">selected</c:if>>${couleur.nom}</option> </c:forEach> </select>
<label>Nombre de roues</label>

        <input type="radio" value="3" id="nbRoues" name="NBROUES">
        <label for="nbRoues">3</label>
    <input type="radio" value="4"name="NBROUES">
    <label for="nbRoues">4</label>

    <input type="submit" value="Filtrer">


<a href="index" type="button">Retirer</a>
</form>


<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">nom</th>
        <th scope="col">Couleur</th>
        <th scope="col">Nombre de roues</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${poussettes}" var="poussette">
        <tr>
            <!-- faire le foreach ici pour les poussettes -->
            <th scope="row">${poussette.nom}</th>
            <td>${poussette.couleur.nom}</td>
            <td>${poussette.nbRoues}</td>
            <td><a href="priceRequest?ID=${poussette.id}">Créer une demande</a></td>

        </tr>
    </c:forEach>
    </tbody>
</table>

<a href="priceRequest">Créer une demande</a>
</body>
</html>
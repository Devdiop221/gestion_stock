<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gestion de stock de produits</title>
</head>
<body>
<form method="post" action="Receive.jsp">
		<table>
			<tr>
				<td>Code Produit:</td>
				<td><input type="text" name="code" placeholder="Le code du produit svp" required/></td>
			</tr>
			<tr>
				<td>Nom Produit:</td>
				<td><input type="text" name="nom" placeholder="Le nom du produit svp" required/></td>
			</tr>
			<tr>
				<td>Cat�gorie:</td>
				<td><input type="text" name="categorie" placeholder="La cat�gorie svp" required/></td>
			</tr>
			<tr>
				<td>Prix</td>
				<td><input type="number" name="prix" placeholder="Le prix du produit svp" required/></td>
			</tr>
			<tr>
				<td>Quantit�:</td>
				<td><input type="number" name="quantite" placeholder="La quantit� svp" required/></td>
			</tr>
			<tr>
				<td>Fournisseur:</td>
				<td><input type="text" name="fournisseur" placeholder="Le fournisseur svp" required/></td>
			</tr>
			<tr>
				<td><input type="submit" value="Valider"/></td>
		
				<td><input type="reset" value="Annuler"/></td>
			</tr>
		</table>
	</form>

</body>
</html>
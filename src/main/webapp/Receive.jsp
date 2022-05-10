<%@page import="model.Client"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gestion de stock de produits</title>
</head>
<body>
<a href="ListeProduit.jsp">Liste des produit </a> <br>
<%
Client p = new Client();
p.setCode(request.getParameter("code"));
p.setNom(request.getParameter("nom"));
p.setCategorie(request.getParameter("categorie"));
p.setPrix(Float.parseFloat(request.getParameter("prix")));
p.setQuantite(Integer.parseInt(request.getParameter("quantite")));
p.setFournisseur(request.getParameter("fournisseur"));
%>
Le code est <%=p.getCode()%><br>
Le nom est <%=p.getNom()%><br> 
la catégorie est <%=p.getCategorie() %><br>
le prix est <%=p.getPrix() %><br>
la quantite est <%=p.getQuantite()%><br>
Le fournisseur est <%=p.getFournisseur()%><br>
<% 
try{
	String strClassName="com.mysql.jdbc.Driver";
	Class.forName(strClassName);
	Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/stock?useSSL=true&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
	Statement state = connect.createStatement();
String req="insert into stock.produit(codeP,nomP,categorieP,prix,quantite,fournisseur)values('"+p.getCode()+"','"+p.getNom()+"','"+p.getCategorie()+"','"+p.getPrix()+"','"+p.getQuantite()+"','"+p.getFournisseur()+"')";
state.executeUpdate(req);
}
catch(Exception e)
{

out.print(e.getMessage());	
}
%>

</body>
</html>
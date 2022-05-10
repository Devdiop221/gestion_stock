<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="ClientForm.jsp">Cliquez ici pour insérer un produit</a><br>
<table border="1">
	<tr>
		<td>Code</td>
		<td>Nom</td>
		<td>Catégorie</td>
		<td>Prix</td>
		<td>Quantité</td>
		<td>Fournisseur</td>
	</tr>

<% 
try{
	String strClassName="com.mysql.jdbc.Driver";
	Class.forName(strClassName);
	Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/stock?useSSL=true&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
	Statement state = connect.createStatement();
String req="select * from stock.produit ";
ResultSet rs1 = state.executeQuery(req);
while(rs1.next()){
	%>
	<tr>
		<td><%=rs1.getString("codeP")%></td>
		<td><%=rs1.getString("nomP")%></td>
		<td><%=rs1.getString("categorieP")%></td>
		<td><%=rs1.getFloat("prix")%></td>
		<td><%=rs1.getInt("quantite")%></td>
		<td><%=rs1.getString("fournisseur")%></td>
	</tr>
	<%
}
rs1.close();
state.close();
connect.close();
}
catch(Exception e)
{

out.print(e.getMessage());	
}
%>
</table>
</body>
</html>
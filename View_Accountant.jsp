
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page errorPage="error_page.jsp"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ=="
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%

int j=0;
try{
	j=Integer.parseInt((String)session.getAttribute("admin"));
}
catch(Exception e)
{
	
}

if(j==0)
{
	response.sendRedirect("login.jsp");
}
System.out.print(j);


%>


<meta charset="ISO-8859-1">
<title>Admin</title>
</head>
<body style="background-color: powderblue;">


	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/apo?verifyServerCertificate=false&useSSL=true"
		user="root" password="1709" />

	<sql:query dataSource="${db}" var="rs">  
select * from accountant; 
</sql:query>


	<table border="2" width="100%"
		class="table table-bordered table-striped table-hover">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>email</th>
			<th>gender</th>
			<th>Contact</th>

		</tr>

		<c:forEach var="table" items="${rs.rows}">
			<tr>
				<td><c:out value="${table.id}" /></td>
				<td><c:out value="${table.name}" /></td>
				<td><c:out value="${table.email}" /></td>
				<td><c:out value="${table.gender}" /></td>
				<td><c:out value="${table.mobile}" /></td>



			</tr>
		</c:forEach>

	</table>




</body>
</html>
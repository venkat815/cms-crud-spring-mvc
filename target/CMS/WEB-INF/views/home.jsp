<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Course Management</title>
<style>
	body {
    background-color: #121212;
    color: #ffffff;
    font-family: Arial, sans-serif;
}

/* Heading */
h2 {
    text-align: center;
    margin: 15px 0;
}

/* Add link */
a {
    color: #03dac6;
    text-decoration: none;
    margin-left: 20px;
}

a:hover {
    color: #00bfa5;
}

#addCour{
	display:block;
	text-align:center;
	font-size: 20px;      /* text size increase */
    padding: 10px;        /* space inside */
    margin-top: 25px;     /* spacing from top */

    width: 150px;         /* box width */
    margin-left: auto;
    margin-right: auto;   /* center block */

    background-color: #03dac6;
    color: black;
    border-radius: 6px;
}

/* Table */
table {
    margin: 10px auto;
    border-collapse: collapse;
    width: 80%;
    background-color: #1e1e1e;
}

th, td {
    padding: 8px;
    border: 1px solid #333;
    text-align: center;
}

th {
    background-color: #272727;
}

tr:hover {
    background-color: #2a2a2a;
}
</style>
</head>
<body>

<h2>Course List</h2>

<a href="${pageContext.request.contextPath}/addCourse" id="addCour">Add Course</a><br><br>

<table border="1">
<tr>
  <th>ID</th>
  <th>Name</th>
  <th>Instructor</th>
  <th>Actions</th>
</tr>

<c:forEach var="c" items="${courses}">
<tr>
  <td>${c.id}</td>
  <td>${c.name}</td>
  <td>${c.instructor}</td>
  <td>
    <a href="${pageContext.request.contextPath}/editCourse/${c.id}">Edit</a>
    <a href="${pageContext.request.contextPath}/deleteCourse/${c.id}">Delete</a>
  </td>
</tr>
</c:forEach>

</table>

</body>
</html>
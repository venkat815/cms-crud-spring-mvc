<html>
<head>
<title>Add Course</title>
<style>
	body {
    background-color: #121212;
    color: #ffffff;
    font-family: Arial, sans-serif;
}

/* Heading */
h2 {
    text-align: center;
    margin-top: 20px;
}

/* Form */
form {
    width: 280px;
    margin: 20px auto;
}

/* Inputs */
input {
    width: 100%;
    padding: 6px;
    margin: 6px 0;
    border: none;
    border-radius: 4px;
}

/* Button */
button {
    width: 100%;
    padding: 8px;
    background-color: #03dac6;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

button:hover {
    background-color: #00bfa5;
}

/* Back link */
a {
    display: block;
    text-align: center;
    margin-top: 10px;
    color: #03dac6;
}
</style>
</head>
<body>

<h2>Add Course</h2>

<form action="${pageContext.request.contextPath}/saveCourse" method="post">

    Name:
    <input type="text" name="name" required><br><br>

    Instructor:
    <input type="text" name="instructor" required><br><br>

    <button type="submit">Save</button>

</form>

<br>
<a href="${pageContext.request.contextPath}/">Back</a>

</body>
</html>
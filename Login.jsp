<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
    <h2>Login</h2>
    <form action="Login_process.jsp" method="post">
        <label for="username">User name:</label>
        <input type="text" id="username" name="username"><br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password"><br><br>
        <label for="userType">User Type:</label>
        <select id="user_type" name="userType">
            <option value="admin">Admin</option>
            <option value="customer">Customer</option>
        </select><br><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>

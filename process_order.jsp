<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cart</title>
</head>
<body>
<%
    // Retrieve form data
    String fullname = request.getParameter("fullname");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String city = request.getParameter("city");
    String zip = request.getParameter("zip");

    // Database connection parameters
    String url = "jdbc:mysql://localhost:3306/YourDatabase";
    String username = "yourUsername";
    String password = "yourPassword";

    // SQL queries
    String insertOrderQuery = "INSERT INTO Orders (fullname, email, address, city, zip) VALUES (?, ?, ?, ?, ?)";
    String insertCartItemQuery = "INSERT INTO Cart (food_name, price, quantity, user_id) VALUES (?, ?, ?, ?)";

    try {
        // Load the MySQL JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish database connection
        Connection connection = DriverManager.getConnection(url, username, password);
        PreparedStatement orderStatement = connection.prepareStatement(insertOrderQuery, Statement.RETURN_GENERATED_KEYS);
        PreparedStatement cartItemStatement = connection.prepareStatement(insertCartItemQuery);

        // Insert data into Orders table
        orderStatement.setString(1, fullname);
        orderStatement.setString(2, email);
        orderStatement.setString(3, address);
        orderStatement.setString(4, city);
        orderStatement.setString(5, zip);
        orderStatement.executeUpdate();

        // Retrieve the auto-generated order_id
        ResultSet generatedKeys = orderStatement.getGeneratedKeys();
        int orderId = -1;
        if (generatedKeys.next()) {
            orderId = generatedKeys.getInt(1);
        }

        // Insert data into Cart table (assuming you have cart items stored in an ArrayList)
        ArrayList<CartItem> cartItems = (ArrayList<CartItem>) session.getAttribute("cartItems");
        if (cartItems != null) {
            for (CartItem item : cartItems) {
                cartItemStatement.setString(1, item.getName());
                cartItemStatement.setDouble(2, item.getPrice());
                cartItemStatement.setInt(3, item.getQuantity());
                cartItemStatement.setInt(4, orderId);
                cartItemStatement.executeUpdate();
            }
        }

        // Close database connections
        orderStatement.close();
        cartItemStatement.close();
        connection.close();

        // Clear the cart items from session
        session.removeAttribute("cartItems");

        // Redirect to a success page
        response.sendRedirect("success.jsp");
    } catch (Exception e) {
        e.printStackTrace();
        // Redirect to an error page
        response.sendRedirect("error.jsp");
    }
%>
</body>
</html>

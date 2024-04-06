<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cart</title>
       <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100vh; /* Set width equal to viewport height */
            height: 100vh; /* Set height equal to viewport height */
        }

        .container {
            max-width: 400px; /* Adjust as needed */
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1, h2 {
            color: #333;
            text-align: center;
        }

        #cart-items-container {
            margin-bottom: 20px;
        }

        .cart-item {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 10px;
            padding: 15px;
            width: 100px; /* Adjust the width as needed */
            height: 100px; /* Adjust the height to match width */
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .item-details {
            flex-grow: 1;
        }

        .item-details h3 {
            margin: 0;
            color: #555;
        }

        .item-details p {
            margin: 5px 0;
            color: #777;
        }

        .remove-item {
            background-color: #e74c3c;
            color: #fff;
            border: none;
            padding: 5px 10px;
            border-radius: 4px;
            cursor: pointer;
        }

        .remove-item:hover {
            background-color: #c0392b;
        }

        form {
            margin-top: 20px;
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #333;
            text-align: left;
        }

        input[type="text"],
        input[type="email"],
        textarea {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }

        button[type="submit"] {
            width: 100%;
            background-color: #2ecc71;
            color: #fff;
            border: none;
            padding: 10px 0;
            border-radius: 4px;
            cursor: pointer;
        }

        button[type="submit"]:hover {
            background-color: #27ae60;
        }

        a {
            color: #3498db;
            text-decoration: none;
            display: block;
            margin-top: 10px;
            text-align: center;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Your Cart</h1>
    <div id="cart-items-container">
        <!-- Cart items will be displayed here -->
    </div>

    <h2>Checkout</h2>
    <form action="process_order.jsp" method="post">
        <label for="fullname">Full Name:</label>
        <input type="text" id="fullname" name="fullname" required><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br>

        <label for="address">Address:</label>
        <textarea id="address" name="address" rows="4" required></textarea><br>

        <label for="city">City:</label>
        <input type="text" id="city" name="city" required><br>

        <label for="zip">Zip:</label>
        <input type="text" id="zip" name="zip" required><br>

        <input type="hidden" id="cartItems" name="cartItems">

        <button type="submit">Place Order</button>
    </form>

    <a href="Menu.jsp">Back to Menu</a>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const cartContainer = document.getElementById('cart-items-container');

            // Function to render the cart items
            function renderCart() {
                cartContainer.innerHTML = ''; // Clear previous contents
                let cart = JSON.parse(localStorage.getItem('cart')) || [];

                cart.forEach((item, index) => {
                    const cartItem = document.createElement('div');
                    cartItem.classList.add('cart-item');
                    cartItem.innerHTML = `
                        <div class="item-details">
                            <h3>${item.name}</h3>
                            <p>Price: ${item.price}</p>
                            <button class="remove-item" data-index="${index}">Remove</button>
                        </div>
                    `;
                    cartContainer.appendChild(cartItem);
                });

                // Store cart items in a hidden input to be submitted with the form
                document.getElementById('cartItems').value = JSON.stringify(cart);
            }

            // Initial rendering of cart items
            renderCart();

            // Event listener for remove buttons
            cartContainer.addEventListener('click', function(event) {
                if (event.target.classList.contains('remove-item')) {
                    const index = event.target.getAttribute('data-index');
                    let cart = JSON.parse(localStorage.getItem('cart')) || [];
                    cart.splice(index, 1);
                    localStorage.setItem('cart', JSON.stringify(cart));
                    renderCart(); // Update cart display
                }
            });
        });
    </script>
</body>
</html>

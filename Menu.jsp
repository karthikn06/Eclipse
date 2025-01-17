<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu</title>
   <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        #header {
    display: flex;
    box-sizing: border-box;
    flex-direction: column;
    /* justify-content: space-between; */
    /* align-items: center; */
    background: url('foodys back main.jpg') no-repeat center;

    height: 422px;
    width: 100%;

    margin-bottom: 20px;

}

.navbar {
    display: flex;
    justify-content: right;
    width: 100%;
    margin: 10px;


}

.navbar li:hover {
    background-color: #2980b9;
    border-radius: 5px;
  }
  
  .navbar li:hover a {
    color: #fff; /* Change text color on hover if desired */
  }

.navbar ul li {
    list-style: none;
    display: inline-block;
    margin: 10px;
    margin-bottom: 0px;
    padding: 5px;
}

#li5 {
    padding-right: 5px;
}

a[href="#"] {
    text-decoration: none;
    cursor: pointer;
    font-size: 20px;
    color: rgb(255, 255, 255);
    font-weight: 1000;
}

a[href="index.jsp"] {
    text-decoration: none;
    cursor: pointer;
    font-size: 20px;
    color: rgb(255, 255, 255);
    font-weight: 1000;
}

a[href="About.jsp"] {
    text-decoration: none;
    cursor: pointer;
    font-size: 20px;
    color: rgb(255, 255, 255);
    font-weight: 1000;
}

a[href="Menu.jsp"] {
    text-decoration: none;
    cursor: pointer;
    font-size: 20px;
    color: rgb(255, 255, 255);
    font-weight: 1000;
}
a[href="Cart.jsp"] {
    text-decoration: none;
    cursor: pointer;
    font-size: 20px;
    color: rgb(255, 255, 255);
    font-weight: 1000;
}



#banner {
    position: relative;
    display: flex;
    flex-direction: column;
    /* justify-content: center; */
    align-items: center;
    color: white;
    margin: 20px;
    margin-top: 0px;


}

#banner h1 {
    font-family: 'Arimo', sans-serif;
    font-size: 80px;
    color: white;
    font-weight: bolder;
    font-style: italic;
    margin: 20px;
    margin-bottom: 15px;

}

#banner p {
    font-family: 'Montserrat', sans-serif;
    font-size: 34px;
    color: white;
    text-align: center;
    margin: 10px;
    margin-bottom: 20px;
}

#banner input[type='text'] {
    width: 60%;
    height: 50px;
    margin: 10px;
    font-size: 15px;
    text-align: center;
    border-radius: 7px;
    border: none;
    font-family: 'Montserrat', sans-serif;
    font-size: 1.1rem;
}


        .menu-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            padding: 20px;
        }

        .menu-item {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 10px;
            padding: 15px;
            width: 200px;
            text-align: center;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
        }

        .cart-container {
            background-color: #333;
            color: #fff;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
            text-align: center;
        }
    </style>
</head>
<body>
    <header id="header">
        <nav class="navbar">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="About.jsp">About</a></li>
                <li><a href="Menu.jsp">Menu</a></li>
                <li><a href="Cart.jsp">Cart</a></li>
            </ul>
        </nav>
        <div id="banner">
            <h1>FoodEase</h1>
            <p>"Hungry? Food ease, instant relief!"</p>
        </div>
    </header>

    <div class="menu-container">
        <div class="menu-item">
            <img src="butter_chicken.jpg" alt="Butter Chicken" height="200px" width="200px">
            <h2>Butter Chicken</h2>
            <p>Delicious butter chicken served with naan.</p>
            <p>Price: $12.99</p>
            <button class="add-to-cart" data-name="Butter Chicken" data-price="12.99">Add to Cart</button>
        </div>

        <div class="menu-item">
            <img src="Panner_Tikka.jpg" alt="Panner Tikka" height="200px" width="200px">
            <h2>Panner Tikka</h2>
            <p>Delicious paneer tikka served with mint chutney.</p>
            <p>Price: $14.99</p>
            <button class="add-to-cart" data-name="Panner Tikka" data-price="14.99">Add to Cart</button>
        </div>

        <div class="menu-item">
            <img src="Chicken_biriyani.jpg" alt="Chicken Biriyani" height="200px" width="200px">
            <h2>Chicken Biriyani</h2>
            <p>Spicy chicken biriyani served with raita.</p>
            <p>Price: $13.99</p>
            <button class="add-to-cart" data-name="Chicken Biriyani" data-price="13.99">Add to Cart</button>
        </div>
    </div>


<script>
    document.addEventListener('DOMContentLoaded', function() {
        const addToCartButtons = document.querySelectorAll('.add-to-cart');

        addToCartButtons.forEach(button => {
            button.addEventListener('click', function(event) {
                const itemName = button.getAttribute('data-name');
                const itemPrice = button.getAttribute('data-price');
                
                const item = {
                    name: itemName,
                    price: itemPrice
                };

                let cart = JSON.parse(localStorage.getItem('cart')) || [];
                cart.push(item);
                localStorage.setItem('cart', JSON.stringify(cart));

                alert('Item added to cart!');
            });
        });
    });
</script>
  
</body>
</html>

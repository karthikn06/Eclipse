<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FoodEase Online Food Delivery Web</title>
    <style type="text/css">
    * {

    margin: 0px;
    padding: 0px;
}

body {
    /* background: url('menu.png') no-repeat center; */
    width: 100%;
    height: 500px;
    font-family: 'Montserrat', sans-serif;
    font-size: 1.1rem;


}

.Log-in {
    display: inline-block;
    padding: 10px 20px;
    font-size: 18px;
    text-decoration: none;
    background-color: #3498db;
    color: #fff;
    border-radius: 5px;
    
  }
  
  .Log-in:hover {
    background-color: #2980b9;
  }

  .Sign-up {
    display: inline-block;
    padding: 10px 20px;
    font-size: 18px;
    text-decoration: none;
    background-color: #3498db;
    color: #fff;
    border-radius: 5px;
    
  }
  
  .Sign-up:hover {
    background-color: #2980b9;
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

#mode {
    display: flex;
    margin: 40px 0px;
    justify-content: center;
    width: 100%;
    box-sizing: border-box;
}

.row {
    display: inline-block;
    width: 555px;
    height: 228px;
    border-radius: 12px;
    overflow: hidden;
    margin: 0px 12px;
    transition-property: all;
    transition-duration: 0.2s;
    cursor: pointer;
    border: lightgray solid 0.5px;
    padding-bottom: 4px;
}

.row:hover {

    transform: scale(1.07);

}

.row>div {
    padding: 10px 15px;
}

.row div h3 {
    padding-bottom: 5px;
    font-size: 1.1rem;
}

.row div p {
    margin-bottom: 5px;
    font-size: 1rem;

}

#collection {
    height: auto;
    width: 100%;
    margin: 40px 0px;

}

#collection>h1 {
    font-size: 2.1rem;
    font-family: 'Montserrat', sans-serif;
    margin: 0px 63px;
}

#collDiv1 {
    display: flex;
    margin: 0px 51px;
}

#collection div p {
    display: inline-block;
    justify-content: left;
    width: 68%;
    margin: 6px 12px;

}

#collection div button {
    display: inline-block;
    display: inline-block;
    margin: 6px 12px 6px 111px;
    border: none;
    /* justify-content: right; */
    text-align: right;
    background: transparent;
    font-family: 'Montserrat', sans-serif;
    color: #e04c16;
    text-align: right;
    font-size: 1.0rem;
    /* padding-left: 105px; */
    cursor: pointer;
    width: 225px;
}

#collDiv2 {
    display: flex;
    margin: 20px 58px;
    justify-content: center;

}

/* #collDiv2 div{
    display:inline-block;
    margin:5px;
} */
.subDiv {

    display: inline-block;
    border-radius: 10px;
    overflow: hidden;
    height: 320px;
    width: 260px;
    margin: 0px 5px;

}

#subDiv1 {
    display: flex;
    justify-content: left;
    align-items: flex-end;
    color: white;
    font-family: 'Montserrat', sans-serif;
    cursor: pointer;
    background: url('sec21.jpg') no-repeat center;
    height: 320px;
    width: 277px;
    background-size: 400px 400px;
    box-shadow: inset 0px 0px 100px 0px black;
    padding: 15px 20px;
}





#subDiv2 {
    display: flex;
    justify-content: left;
    align-items: flex-end;
    color: white;
    font-family: 'Montserrat', sans-serif;
    cursor: pointer;
    background: url("sec22.jpg") no-repeat center;
    height: 320px;
    width: 277px;
    background-size: 400px 350px;
    box-shadow: inset 0px 0px 200px 0px black;
    padding: 15px 20px;
}

#subDiv3 {
    display: flex;
    justify-content: left;
    align-items: flex-end;
    color: white;
    font-family: 'Montserrat', sans-serif;
    cursor: pointer;
    background: url("sec23.jpg") no-repeat center;
    height: 320px;
    width: 277px;
    background-size: 300px 350px;
    box-shadow: inset 0px 0px 100px 0px black;
    padding: 15px 20px;

}





#subDiv4 {
    display: flex;
    justify-content: left;
    align-items: flex-end;
    color: white;
    font-family: 'Montserrat', sans-serif;
    cursor: pointer;
    background: url('sec24.jpg') no-repeat center;
    height: 320px;
    width: 277px;
    background-size: 310px 370px;
    box-shadow: inset 0px -75px 150px 0px black;
    padding: 15px 20px;
}



#subFormDiv {
    display: inline-block;
    width: 38%;
    height: auto;
    margin-top: 50px
}

#subFormDiv h1 {
    text-align: center;
    font-size: 2.5rem;
    margin: 10px 5px;
}

#subFormDiv p {
    font-size: 1rem;
    /* text-align: center; */
    /* font-size: 2.5rem; */
    margin: 10px 0px 20px 0px;
    line-height: 2rem;
}

#radio p {
    display: inline-block;
    /* width: 100px; */
    margin: 10px 30px 10px 0px;
}

#radio p input[type="radio"] {
    cursor: pointer;
    border: none;
    accent-color: red;
    height: 1rem;
    width: 1rem;
}

#textArea {
    display: flex;


}

#textArea input[type="text"] {
    display: inline-block;
    height: 2.9rem;
    width: 80%;
    margin-right: 10px;
    border-radius: 7px;
    text-align: left;
    font-family: 'Montserrat', sans-serif;
    font-size: 1rem;
    padding-left: 10px;
    border: 1px solid lightgray;

}

#textArea button {
    display: inline-block;
    /* height: 2.3rem; */
    width: 45%;
    font-family: 'Montserrat', sans-serif;
    color: white;
    font-size: 1.1rem;
    background-color: rgb(255 85 85);
    text-align: center;
    border: none;
    margin-right: 13px;
    border-radius: 7px;
    cursor: pointer;

}

#appStore {
    margin: 30px 0px;
    font-size: 1rem;
    color: gray;
}

.appBtn {
    display: flex;
    justify-content: left;
    margin: 10px 0px 50px 0px;
}

.appBtn button {
    display: inline-block;
    /* height: 0.5rem;
    width: 70px; */
    border: none;
    border-radius: 15px;
    margin-right: 20px;
    cursor: pointer;
}
    </style>
    <link
        href="https://fonts.googleapis.com/css2?family=Arimo:ital,wght@1,700&family=Montserrat:wght@200;300;400&display=swap"
        rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

</head>
<body>
    <header id="header">
        <nav class="navbar">
            <ul>
                <li> <a href="#"> Home </a> </li>
                <li> <a href="About.jsp"> About</a> </li>
                <li> <a href="Menu.jsp"> Menu</a> </li>    
            </ul>
        </nav>
        <div id="banner">
            <h1>FoodEase</h1>
            <p>"Hungry? food ease,instant relief!"</p>
        </div>
       
        
            
    </header>
    

    <section id="collection">
        <h1>Collections</h1>
        <div id="collDiv1">
            <p>Healthy And Tasty Meals,For Healthy Living
            </p>
            <button>All Collections </button>
        </div>
        <div id="collDiv2">

            <div class='subDiv' id="subDiv1"> North Indian</div>
            <div class='subDiv' id="subDiv2"> Chinese</div>
            <div class='subDiv' id="subDiv3"> Pizza </div>
            <div class='subDiv' id="subDiv4">South Indian </div>

        </div>
    </section>
<script>
   
</script>

</body>

</html>
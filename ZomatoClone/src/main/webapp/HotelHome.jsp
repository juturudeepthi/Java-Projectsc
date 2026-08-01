<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Beans.HotelBean" %>
<%
	HotelBean hb=(HotelBean)application.getAttribute("HotelBean");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hotel Home - FoodieHub</title>

<!-- Bootstrap CSS -->
<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<!-- Google Font -->
<link
href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{
    min-height:100vh;
    background:
    linear-gradient(rgba(0,0,0,0.55),rgba(0,0,0,0.55)),
    url('https://images.unsplash.com/photo-1552566626-52f8b828add9?q=80&w=1600&auto=format&fit=crop');

    background-size:cover;
    background-position:center;
}

/* Navbar */

.custom-navbar{
    background:rgba(0,0,0,0.75);
    padding:18px 40px;
    backdrop-filter:blur(5px);
}

.logo{
    color:#ff4d4d;
    font-size:2rem;
    font-weight:700;
    text-decoration:none;
}

.welcome-text{
    color:white;
    font-size:1.1rem;
    font-weight:500;
}

.hotel-name{
    color:#ff4d4d;
    font-weight:700;
}

.logout-btn{
    border-radius:10px;
    padding:10px 22px;
    font-weight:600;
}

/* Main Section */

.main-section{
    min-height:85vh;
    display:flex;
    align-items:center;
    justify-content:center;
    padding:40px 20px;
}

.dashboard-card{
    width:100%;
    max-width:950px;
    background:rgba(255,255,255,0.95);
    border-radius:25px;
    padding:45px;
    box-shadow:0 12px 35px rgba(0,0,0,0.35);
    animation:fadeIn 0.5s ease;
}

.dashboard-title{
    text-align:center;
    font-size:2.5rem;
    font-weight:700;
    margin-bottom:12px;
    color:#222;
}

.dashboard-subtitle{
    text-align:center;
    color:#666;
    margin-bottom:45px;
}

/* Option Cards */

.option-card{
    background:white;
    border-radius:20px;
    padding:35px 25px;
    text-align:center;
    transition:0.35s;
    box-shadow:0 5px 18px rgba(0,0,0,0.08);
    height:100%;
    border:2px solid transparent;
}

.option-card:hover{
    transform:translateY(-8px);
    border-color:#ff4d4d;
    box-shadow:0 12px 28px rgba(0,0,0,0.15);
}

.option-icon{
    font-size:3rem;
    margin-bottom:18px;
}

.option-title{
    font-size:1.3rem;
    font-weight:600;
    margin-bottom:12px;
    color:#222;
}

.option-text{
    color:#666;
    margin-bottom:22px;
}

.action-btn{
    background:#ff4d4d;
    color:white;
    text-decoration:none;
    padding:12px 24px;
    border-radius:10px;
    font-weight:600;
    display:inline-block;
    transition:0.3s;
}

.action-btn:hover{
    background:#e63946;
    color:white;
}

/* Animation */

@keyframes fadeIn{

    from{
        opacity:0;
        transform:translateY(20px);
    }

    to{
        opacity:1;
        transform:translateY(0);
    }
}

/* Responsive */

@media(max-width:768px){

    .custom-navbar{
        padding:15px 20px;
    }

    .dashboard-card{
        padding:30px 20px;
    }

    .dashboard-title{
        font-size:2rem;
    }
}

</style>

</head>

<body>

<!-- Navbar -->

<nav class="navbar custom-navbar">

    <div class="container-fluid">

        <a href="#" class="logo">
            FoodieHub
        </a>

        <div class="d-flex align-items-center gap-3">

            <span class="welcome-text">
                Welcome,
                <span class="hotel-name">
                    <%=hb.getHotelName() %>
                </span>
            </span>

            <a href="logout"
               class="btn btn-danger logout-btn">
               Logout
            </a>

        </div>

    </div>

</nav>

<!-- Main Dashboard -->

<section class="main-section">

    <div class="dashboard-card">

        <h1 class="dashboard-title">
            Hotel Dashboard
        </h1>

        <p class="dashboard-subtitle">
            Manage your dishes, pricing and restaurant menu easily.
        </p>

        <div class="row g-4">

            <!-- Add Dishes -->

            <div class="col-md-6">

                <div class="option-card">

                    <div class="option-icon">
                        🍽️
                    </div>

                    <h3 class="option-title">
                        Add Dishes
                    </h3>

                    <p class="option-text">
                        Add new dishes and expand your restaurant menu.
                    </p>

                    <a href="AddDish.html"
                       class="action-btn">
                       Add Dish
                    </a>

                </div>

            </div>

            <!-- Update Dishes -->

            <div class="col-md-6">

                <div class="option-card">

                    <div class="option-icon">
                        ✏️
                    </div>

                    <h3 class="option-title">
                        Update Dishes
                    </h3>

                    <p class="option-text">
                        Modify dish details and keep your menu updated.
                    </p>

                    <a href="updateDishes.jsp"
                       class="action-btn">
                       Update Dish
                    </a>

                </div>

            </div>

            <!-- Show Dishes -->

            <div class="col-md-6">

                <div class="option-card">

                    <div class="option-icon">
                        📋
                    </div>

                    <h3 class="option-title">
                        Show Dishes
                    </h3>

                    <p class="option-text">
                        View all dishes currently available in your menu.
                    </p>

                    <a href="showDishes.jsp"
                       class="action-btn">
                       Show Menu
                    </a>

                </div>

            </div>

            <!-- Update Price -->

            <div class="col-md-6">

                <div class="option-card">

                    <div class="option-icon">
                        💰
                    </div>

                    <h3 class="option-title">
                        Update Dish Price
                    </h3>

                    <p class="option-text">
                        Change prices instantly and manage offers easily.
                    </p>

                    <a href="updatePrice.jsp"
                       class="action-btn">
                       Update Price
                    </a>

                </div>

            </div>

        </div>

    </div>

</section>

<!-- Bootstrap JS -->

<script
src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>
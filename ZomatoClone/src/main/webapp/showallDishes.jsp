<%@ page import="java.util.ArrayList" %>
<%@ page import="Beans.DishBean" %>

<%
ArrayList<DishBean> dishes =
(ArrayList<DishBean>)request.getAttribute("dishList");
%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Show All Dishes</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
rel="stylesheet">

<style>

body{
    font-family:'Poppins',sans-serif;
    background:#f5f5f5;
}

.navbar{
    background:#ff4d4d;
}

.navbar-brand{
    color:white !important;
    font-size:28px;
    font-weight:700;
}

.page-title{
    text-align:center;
    margin-top:30px;
    margin-bottom:30px;
    font-weight:700;
}

.dish-card{
    border:none;
    border-radius:20px;
    overflow:hidden;
    transition:0.3s;
    box-shadow:0 5px 15px rgba(0,0,0,0.1);
}

.dish-card:hover{
    transform:translateY(-8px);
}

.price{
    color:#28a745;
    font-size:20px;
    font-weight:600;
}

.back-btn{
    background:#ff4d4d;
    color:white;
    border:none;
}

.back-btn:hover{
    background:#e63946;
    color:white;
}

</style>

</head>

<body>

<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand" href="#">
            FoodieHub
        </a>
    </div>
</nav>

<div class="container">

```
<h2 class="page-title">
    Restaurant Menu
</h2>

<div class="row">

<%
if(dishes != null){
    for(DishBean d : dishes){
%>

    <div class="col-md-4 mb-4">

        <div class="card dish-card">

            <div class="card-body">

                <h4 class="card-title">
                    <%= d.getDishName() %>
                </h4>

                <p class="text-muted">
                    Dish ID:
                    <%= d.getDishId() %>
                </p>

                <p class="price">
                    ₹ <%= d.getDishPrice() %>
                </p>

            </div>

        </div>

    </div>

<%
    }
}
%>

</div>

<div class="text-center mb-5">

    <a href="HotelHome.jsp"
       class="btn back-btn px-4 py-2">
       Back to Dashboard
    </a>

</div>
```

</div>

</body>
</html>

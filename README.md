## Java Projects

# 🍽️ Zomato Clone

## About the Project

FoodieHub is a simple Zomato Clone web application that I developed to practice **Java Full Stack Development** concepts. While building this project, I learned how to connect a Java web application with a MySQL database using **JDBC**, create dynamic web pages using **JSP**, and handle client requests using **Servlets**.

In this project, hotel owners can register, log in, and manage their restaurant menu by adding and viewing dishes.

---

![image alt](https://github.com/juturudeepthi/Java-Projectsc/blob/bfce7d2c2cc2b94704c0fb54862d00cefe282020/Screenshot%202026-08-01%20211455.png)
## Features

* Hotel Registration
* Hotel Login
* Hotel Logout
* Add New Dishes
* View All Dishes
* Update Dish Details
* Update Dish Price
* Responsive User Interface using Bootstrap
* MySQL Database Integration

---

## Technologies Used

### Frontend

* HTML
* CSS
* Bootstrap
* JSP

### Backend

* Java
* Servlets
* JDBC

### Database

* MySQL

### Server

* Apache Tomcat

### IDE

* Eclipse IDE

---

## Project Structure

```text
ZomatoClone

├── Beans
├── DAO
├── DatabaseDetails
├── Servlets
├── JSP Files
├── HTML Files
└── MySQL Database
```

---

## How the Project Works

### Step 1

The hotel owner registers by entering hotel details such as hotel name, address, hotel ID, and password.

### Step 2

After registration, the hotel owner can log in using the registered Hotel ID and Password.

### Step 3

Once the login is successful, the hotel dashboard opens.

### Step 4

From the dashboard, the hotel owner can:

* Add new dishes
* View all dishes
* Update dish details
* Update dish prices

### Step 5

All the data is stored and retrieved from the MySQL database using JDBC.

---

## Database Tables

### Hotel Table

* Hotel Name
* Hotel Address
* Hotel ID
* Hotel Password

### Dish Table

* Dish Name
* Dish ID
* Hotel ID
* Dish Price

---

## What I Learned

While working on this project, I gained hands-on experience with:

* Java Servlets
* JSP
* JDBC
* JavaBeans
* DAO Pattern
* MVC Architecture
* CRUD Operations
* MySQL Database Connectivity
* Bootstrap for responsive design

This project also helped me understand how the frontend, backend, and database work together in a Java web application.

---

## How to Run the Project

1. Clone this repository.
2. Import the project into Eclipse IDE.
3. Configure Apache Tomcat.
4. Create the **ZomatoClone** database in MySQL.
5. Update the database details in `DbInfo.java`.
6. Add the MySQL JDBC Driver.
7. Run the project on the Tomcat server.

---

## Future Improvements

I would like to add more features in the future, such as:

* User Registration and Login
* Online Food Ordering
* Cart and Checkout
* Restaurant Search
* Food Images
* Order History
* Ratings and Reviews
* Online Payment

---

This project was built as part of my Java Full Stack learning journey to improve my backend development skills and understand how real-world web applications are developed.


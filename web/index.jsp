<%--
  Created by IntelliJ IDEA.
  User: marikajeziorna
  Date: 2019-03-12
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset=“utf-8”>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style type="text/css">
        .card-card {
            background: url("https://cdn1.medicalnewstoday.com/content/images/articles/323/323446/bmi-takes-into-account-height-and-weight.jpg");
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 775px;
            background-size: cover;
        }
        .title {
            font-family: "American Typewriter";
            color: black;
            font-size: 50px;
            padding-left: 100px;
            padding-top: 50px;
        }
        .form-input {
            padding-left: 120px;
            padding-top: 35px;
            padding-bottom: 35px;
            width: 250px;
        }
        .form-row {
            font-family: "Arial";
            color: black;
            font-size: 18px;
        }
        .form-control {
            font-size: 14px;
            color: darkgray;
            margin: 0 auto 15px;
        }
        .button {
            font-size: 16px;
            font-family: "Arial";
            color: white;
            background: darkgreen;
            padding: 0 20px;
        }


    </style>
    <title>Body mass index BMI</title>
</head>
<body>
<div class="card-card">
    <h1 class="title"> Body mass index BMI </h1>
    <form action="/calculatorBMI" method="get"/>
    <div class="form-row">
        <div class="form-input">
            <label for="inputWeight">Weight</label>
            <input type="number" id="inputWeight" class="form-control" placeholder="kg" name="Weight"/>
            <label for="inputHeight">Height</label>
            <input type="number" id="inputHeight" class="form-control" placeholder="cm" name="Height"/>
            <div>
            <button type="submit" class="button" name="save">Count</button>
            </div>
        </div>
    </div>
    </form>
</div>
</body>
</html>

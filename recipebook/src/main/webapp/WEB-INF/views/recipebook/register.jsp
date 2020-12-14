<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8" />
    <title>sign up</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="text/javascript" src="/recipe.js"></script>
    <style>
        body,
        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            font-family: "Karma", sans-serif;
            -ms-user-select: none;
            -moz-user-select: -moz-none;
            -webkit-user-select: none;
            -khtml-user-select: none;
            user-select: none;
        }

        /* a {
            text-decoration: none;
        } */

        /* Full-width input fields */
        input[type=text],
        input[type=password],
        input[type=email],
        input[type=tel] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        input[type=radio] {
            margin-left: 8px;
        }

        /* Set a style for all buttons */
        button {
            background-color: black;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            opacity: 0.8;
            transition-duration: 0.4s;
        }

        /* Center the image and position the close button */
        .imgcontainer {
            text-align: center;
            margin: 0 0 12px 0;
            position: relative;
        }

        .container {
            padding: 16px;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }

        /* The Modal (background) */
        .modal {
            left: 0;
            top: 0;
            width: 100%;
            /* Full width */
            height: 100%;
            /* Full height */
            overflow: auto;
            /* Enable scroll if needed */
            padding-top: 30px;
        }

        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 1% auto 15% auto;
            /* 5% from the top, 15% from the bottom and centered */
            border: 1px solid #888;
            width: 400px;
            /* Could be more or less, depending on screen size */
        }

        #home {
            margin-top: 30px;
            font-size: 25px;
        }

        .radio-items {
            display: table;
            width: 100%;
            border: 1px solid #454a60;
            border-radius: 4px;
            box-sizing: border-box;
            margin: 8px 0;
        }

        .radio {
            display: table-cell;
            width: 50%;
            height: 49px;
            line-height: 47px;
            text-align: center;
        }

        .radio:hover {
            opacity: 0.8;
            transition-duration: 0.4s;
        }

        input[type="radio"] {
            display: none;
        }

        input[type="radio"]:checked+label {
            background-color: black;
            color: #fff;
        }

        label {
            display: block;
            width: 100%;
            height: 100%;
            color: black;
            vertical-align: middle;
            box-sizing: border-box;
            cursor: pointer;
        }

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 600px) {
            span.psw {
                display: block;
                float: right;
            }

            .cancelbtn {
                width: 100%;
            }

            .modal-content {
                background-color: #fefefe;
                margin: 5% 5% 15% 5%;
                /* 5% from the top, 15% from the bottom and centered */
                border: 1px solid #888;
                width: 90%;
                /* Could be more or less, depending on screen size */
            }
        }

        @include ie8 {

            /* ie8 에서는 :checked 미지원 */
            .radio-items {
                input[type="radio"].checked+label {
                    background-color: #454a60;
                    color: #fff;
                }
            }
    </style>

</head>

<body>

    <div id="id01" class="modal">

        <form class="modal-content animate" method="post">
            <div id="home" class="w3-center w3-padding-16"><a href="/main1.html"
                    style="text-decoration: none;">Recipe Book</a></div>
            <div class="imgcontainer">Sign Up</div>

            <div class="container">
                <input type="text" placeholder="Username" name="uname" required>
                <input type="password" placeholder="Password" name="psw" required>
                <input type="text" placeholder="Age" name="age" required>
                <div class="radio-items">
                    <div class="radio"><input type="radio" name="gender" value="male" checked />
                        <label for="male">Male</label></div>
                    <div class="radio"><input type="radio" name="gender" value="female" />
                        <label for="female">Female</label></div>
                </div>
                <button type="submit">Sign up</button>
            </div>

            <div class="container" style="background-color:#f1f1f1">
                <span class="psw" style="float: left;"><a href="login">sign in</a></span>
            </div>
        </form>
    </div>

</body>

</html>
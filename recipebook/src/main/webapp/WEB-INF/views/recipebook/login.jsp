<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="utf-8" />
<title>sign in</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="/recipe.js"></script>
<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Karma", sans-serif
}

/* a {
            text-decoration: none;
        } */

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
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
	margin: 5% auto 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 1px solid #888;
	width: 400px;
	/* Could be more or less, depending on screen size */
}

#home {
	margin-top: 30px;
	font-size: 25px;
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
</style>

<script type="text/javascript">
	$(document).ready(function() {
		$("#logoutBtn").on("click", function() {
			location.href = "member/logout";
		})

	})
</script>

</head>

<body>

	<div id="id01" class="modal">

		<form class="modal-content animate" method="post" name='loginForm' action="/recipebook/login">
			<div id="home" class="w3-center w3-padding-16">
				<a href="home" style="text-decoration: none;">Recipe Book</a>
			</div>

			<div class="imgcontainer">Sign In</div>


			<div class="container">
				<input type="text" placeholder="Username" name="uname" required>
				<input type="password" placeholder="Password" name="psw" required>
				<button type="submit">Sign in</button>
				<label>
					<input type="checkbox" checked="checked" name="remember">
					Remember me
				</label>
			</div>

			<div class="container" style="background-color: #f1f1f1">
				<span class="psw" style="float: left;">
					<a href="register">sign up</a>
				</span>
				<span class="psw">
					Forgot <a href="#">password?</a>
				</span>
			</div>

			<c:if test="${msg == false}">
				<p style="color: #f00;">로그인에 실패했습니다.</p>
			</c:if>
		</form>
	</div>

</body>

</html>
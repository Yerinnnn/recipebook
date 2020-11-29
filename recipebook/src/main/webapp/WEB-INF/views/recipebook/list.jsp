<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Karma">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--   <link rel="stylesheet" href="<c:url value="/resources/css/list.css" />">  -->
<script type="text/javascript" src="/recipe.js"></script>
<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Karma", sans-serif
}

a {
	text-decoration: none;
}

nav {
	-ms-overflow-style: none;
}

nav::-webkit-scrollbar {
	display: none;
}

/* #home {
        font-weight: 800;
    } */
.w3-bar-block .w3-bar-item {
	padding: 20px
}

.w3-button {
	transition-duration: 0.4s;
}

.search-container {
	width: 100%;
	height: 70px;
	padding: 5px;
}

.search-container input#search {
	width: 200px;
	height: 30px;
	padding: 10px;
	margin-top: 12px;
	vertical-align: middle;
	font-size: 14px;
	float: left;
}

#hamburger-icon {
	background: none;
	border: 0;
	outline: none;
	cursor: pointer;
}

#hamburger-icon:hover {
	color: darkgrey;
	transition-duration: 0.4s;
}

#search-icon {
	float: left;
	margin: 10px;
}

#close-icon {
	float: right;
	margin: 10px;
	width: 30px;
}

.hide-menu {
	font-size: 20px;
	display: block;
	padding: 15px
}

.hide-menu:hover {
	color: darkgrey;
	transition-duration: 0.4s;
}

.more-button {
	float: right;
	cursor: pointer;
	vertical-align: middle;
}

.side-menu {
	margin-top: 70px;
	margin-left: 40px;
	width: 200px;
	height: 500px;
	float: left;
}

.side-menu a {
	background-color: #eee;
	color: black;
	display: block;
	padding: 12px;
	text-decoration: none;
}

.side-menu a:hover {
	background-color: #ccc;
}

.side-menu a.active {
	background-color: #000000;
	color: white;
}

.category {
	margin-left: 40px;
	margin-top: 150px;
	font-size: 50px;
}

.title {
	margin-top: 10px;
	font-size: 23px;
}

.sub_title {
	margin-top: 5px;
	font-size: 18px;
}

.foodname {
	margin-top: 5px;
	display: inline;
	float: left;
}

.cooking_time {
	display: inline;
	float: left;
	margin-top: 5px;
	margin-left: 5px;
}

.username {
	margin-top: 5px;
	display: inline;
	float: right;
}

@media screen and (max-width: 600px) {
	.side-menu {
		display: none;
	}
	.side-menu a {
		background-color: #eee;
		color: black;
		display: block;
		padding: 12px;
		text-decoration: none;
	}
	.side-menu a:hover {
		background-color: #ccc;
	}
	.side-menu a.active {
		background-color: #000000;
		color: white;
	}
	.category {
		margin-left: 30px;
		margin-top: 70px;
		font-size: 20px;
	}
}
</style>
</head>
<body>

	<!-- Hamburger Menu -->
	<nav
		class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left"
		style="display: none; z-index: 2; width: 40%; min-width: 300px"
		id="mySidebar">
		<!-- search -->
		<div class="search-container">
			<a href="javascript:void(0)" onclick="w3_close()"><img
				id="close-icon" src="img/btn_back.png"></a>
			<sapn>
			<form action="/action_page.php">
				<span id="search-icon"><i class="fa fa-search"></i></span> <input
					id="search" type="text" placeholder="Search.." name="search">
			</form>
			</sapn>
		</div>
		<!-- rice menu -->
		<a href="#food" onclick="openMenu('rice-menu')"
			class="w3-bar-item w3-button">밥 요리</a>
		<div id="rice-menu" class="w3-container w3-hide">
			<a href="" class="hide-menu">볶음밥</a> <a href="" class="hide-menu">덮밥</a>
			<a href="" class="hide-menu">나물밥</a> <a href="" class="hide-menu">죽</a>
		</div>
		<!-- noodle menu -->
		<a href="#about" onclick="openMenu('noodle-menu')"
			class="w3-bar-item w3-button">국수 요리</a>
		<div id="noodle-menu" class="w3-container w3-hide">
			<a href="" class="hide-menu">볶음밥</a> <a href="" class="hide-menu">덮밥</a>
			<a href="" class="hide-menu">나물밥</a>
		</div>
		<!-- soup menu -->
		<a href="#about" onclick="openMenu('soup-menu')"
			class="w3-bar-item w3-button">국물 요리</a>
		<div id="soup-menu" class="w3-container w3-hide">
			<a href="" class="hide-menu">국/탕/스프</a>
		</div>
		<!-- steamed/boiled/roasted  menu -->
		<a href="#about" onclick="openMenu('steamed-menu')"
			class="w3-bar-item w3-button">찜/조림/구이 요리</a>
		<div id="steamed-menu" class="w3-container w3-hide">
			<a href="" class="hide-menu">볶음밥</a> <a href="" class="hide-menu">덮밥</a>
			<a href="" class="hide-menu">나물밥</a>
		</div>
		<!-- fried menu -->
		<a href="#about" onclick="openMenu('fried-menu')"
			class="w3-bar-item w3-button">볶음/튀김/부침 요리</a>
		<div id="fried-menu" class="w3-container w3-hide">
			<a href="" class="hide-menu">볶음밥</a> <a href="" class="hide-menu">덮밥</a>
			<a href="" class="hide-menu">나물밥</a>
		</div>
		<!-- dessert menu -->
		<a href="#about" onclick="openMenu('dessert-menu')"
			class="w3-bar-item w3-button">홈카페(디저트, 베이킹 요리)</a>
		<div id="dessert-menu" class="w3-container w3-hide">
			<a href="" class="hide-menu">볶음밥</a> <a href="" class="hide-menu">덮밥</a>
			<a href="" class="hide-menu">나물밥</a>
		</div>
	</nav>

	<!-- Top menu -->
	<div class="w3-top">
		<div class="w3-white w3-xlarge" style="max-width: 95%; margin: auto">
			<div class="w3-padding-16 w3-left">
				<button id="hamburger-icon" onclick="w3_open()">☰</button>
			</div>
			<div class="w3-right w3-padding-16" style="margin-right: 10px;">
				<a href="/signin.html">sign in</a>
			</div>
			<div id="home" class="w3-center w3-padding-16">
				<a href="#home">Recipe</a>
			</div>
		</div>
	</div>

	<div class="category">밥 메뉴</div>

	<!-- Side menu -->
	<!--<nav class="side-menu">
		<a href="#" class="active">밥 메뉴</a> <a href="#">볶음밥</a> <a href="#">덮밥</a>
		<a href="#">나물밥</a> <a href="#">죽</a>
	</nav> -->


	<!-- !PAGE CONTENT! -->
	<!-- <div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:100px"> -->



	<div class="w3-main w3-content w3-padding"
		style="max-width: 1200px; margin-top: 100px">


		<!-- First Photo Grid-->
		<div class="w3-row-padding w3-padding-16 w3-center" id="food">
			<c:forEach items="${list}" var="list">
				<tr>
					<div class="w3-quarter">
						<img class="thumbImg" src="/resources/img/1.jpg" alt="Sandwich"
							style="width: 100%">

						<div class="title">${list.title}</div>
						<div class="sub_title">${list.sub_title}</div>
						<div>
							<div class="foodname">${list.food_name}</div>
							<div class="cooking_time">${list.time}</div>
							<div class="username">by ${list.username}</div>
						</div>
					</div>
				</tr>
			</c:forEach>
		</div>
	</div>



	<!-- Pagination -->
	<div class="w3-center w3-padding-32">
		<div class="w3-bar">
			<a href="#" class="w3-bar-item w3-button w3-hover-black">«</a> <a
				href="#" class="w3-bar-item w3-black w3-button">1</a> <a href="#"
				class="w3-bar-item w3-button w3-hover-black">2</a> <a href="#"
				class="w3-bar-item w3-button w3-hover-black">3</a> <a href="#"
				class="w3-bar-item w3-button w3-hover-black">4</a> <a href="#"
				class="w3-bar-item w3-button w3-hover-black">»</a>
		</div>
	</div>

	<hr id="about">

	<!-- Footer -->
	<footer class="w3-row-padding w3-padding-32">
		<div class="w3-third">
			<h3>FOOTER</h3>
			<p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo
				condimentum, porta lectus vitae, ultricies congue gravida diam non
				fringilla.</p>
			<p>
				Powered by <a href="https://www.w3schools.com/w3css/default.asp"
					target="_blank">w3.css</a>
			</p>
		</div>

		<div class="w3-third">
			<h3>BLOG POSTS</h3>
			<ul class="w3-ul w3-hoverable">
				<li class="w3-padding-16"><img src="/w3images/workshop.jpg"
					class="w3-left w3-margin-right" style="width: 50px"> <span
					class="w3-large">Lorem</span><br> <span>Sed mattis nunc</span>
				</li>
				<li class="w3-padding-16"><img src="/w3images/gondol.jpg"
					class="w3-left w3-margin-right" style="width: 50px"> <span
					class="w3-large">Ipsum</span><br> <span>Praes tinci sed</span>
				</li>
			</ul>
		</div>

		<div class="w3-third w3-serif">
			<h3>POPULAR TAGS</h3>
			<p>
				<span class="w3-tag w3-black w3-margin-bottom">Travel</span> <span
					class="w3-tag w3-dark-grey w3-small w3-margin-bottom">New
					York</span> <span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Dinner</span>
				<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Salmon</span>
				<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">France</span>
				<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Drinks</span>
				<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Ideas</span>
				<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Flavors</span>
				<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Cuisine</span>
				<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Chicken</span>
				<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Dressing</span>
				<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Fried</span>
				<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Fish</span>
				<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Duck</span>
			</p>
		</div>
	</footer>

	<!-- End page content -->
	</div>

	<script>
		// Script to open and close sidebar
		function w3_open() {
			document.getElementById("mySidebar").style.display = "block";
		}

		function w3_close() {
			document.getElementById("mySidebar").style.display = "none";
		}
	</script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>
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

.recipe_title {
	font-size: 40px;
	display: inline;
}

.bookmark_img {
	float: right;
}

.recipe_title {
	
}

.recipe_photo {
	display: inline;
	width: 33%;
}

.recipe_fname {
	font-size: 35px;
}

.recipe_uname {
	font-size: 20px;
}

tr #ingredients {
	font-size: 25px;
}

.recipe_ingredients {
	margin-top: 10%;
}

td {
	width: 0%;
}

.icons {
	width: 100%;
	margin-top: 10px;
}

.icons img {
	width: 3%;
}

.recipe_contents {
	margin: 60px 0 100px 0;
}

.contents {
	font-size: 20px;
}

.recipe_comments {
	margin-bottom: 300px;
}

.comments_uname {
	font-size: 20px;
	font-weight: bold;
	margin-right: 10px;
}

.comments_contents {
	font-size: 20px;
}

@media ( max-width :600px) {
	.w3-container {
		padding: 0;
	}
	.w3-top {
		position: sticky;
	}
	body {
		padding: 0.01em 16px;
	}
	.recipe_title {
		font-size: 35px;
		width: 60%;
		height: 30%;
	}
	.bookmark_img img {
		width: 50px;
	}
	.recipe_photo {
		width: 100%;
	}
	.recipe_fname {
		display: inline-block;
		font-size: 25px;
		margin-top: 10px;
	}
	.recipe_uname {
		display: inline-block;
		float: right;
		font-size: 18px;
		margin-top: 10px;
	}
	tr #ingredients, .ingredients-amount, .ingredients-name {
		font-size: 18px;
	}
	.icons img {
		width: 8%;
	}
	.contents {
		font-size: 18px;
	}
}
</style>
</head>

<body>
	<!-- Hamburger Menu -->
	<nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="display: none; z-index: 2; width: 40%; min-width: 300px" id="mySidebar">
		<!-- search -->
		<div class="search-container">
			<a href="javascript:void(0)" onclick="w3_close()"><img id="close-icon" src="img/btn_back.png"></a>
			<sapn>
			<form action="/action_page.php">
				<span id="search-icon">
					<i class="fa fa-search"></i>
				</span>
				<input id="search" type="text" placeholder="Search.." name="search">
			</form>
			</sapn>
		</div>
		<!-- rice menu -->
		<a href="/list.html" onclick="openMenu('rice-menu')" class="w3-bar-item w3-button">밥 요리</a>
		<div id="rice-menu" class="w3-container w3-hide">
			<a href="" class="hide-menu">볶음밥</a> <a href="" class="hide-menu">덮밥</a> <a href="" class="hide-menu">나물밥</a> <a href="" class="hide-menu">죽</a>
		</div>
		<!-- noodle menu -->
		<a href="#about" onclick="openMenu('noodle-menu')" class="w3-bar-item w3-button">국수 요리</a>
		<div id="noodle-menu" class="w3-container w3-hide">
			<a href="" class="hide-menu">볶음밥</a> <a href="" class="hide-menu">덮밥</a> <a href="" class="hide-menu">나물밥</a>
		</div>
		<!-- soup menu -->
		<a href="#about" onclick="openMenu('soup-menu')" class="w3-bar-item w3-button">국물 요리</a>
		<div id="soup-menu" class="w3-container w3-hide">
			<a href="" class="hide-menu">국/탕/스프</a>
		</div>
		<!-- steamed/boiled/roasted  menu -->
		<a href="#about" onclick="openMenu('steamed-menu')" class="w3-bar-item w3-button">찜/조림/구이 요리</a>
		<div id="steamed-menu" class="w3-container w3-hide">
			<a href="" class="hide-menu">볶음밥</a> <a href="" class="hide-menu">덮밥</a> <a href="" class="hide-menu">나물밥</a>
		</div>
		<!-- fried menu -->
		<a href="#about" onclick="openMenu('fried-menu')" class="w3-bar-item w3-button">볶음/튀김/부침 요리</a>
		<div id="fried-menu" class="w3-container w3-hide">
			<a href="" class="hide-menu">볶음밥</a> <a href="" class="hide-menu">덮밥</a> <a href="" class="hide-menu">나물밥</a>
		</div>
		<!-- dessert menu -->
		<a href="#about" onclick="openMenu('dessert-menu')" class="w3-bar-item w3-button">홈카페(디저트, 베이킹 요리)</a>
		<div id="dessert-menu" class="w3-container w3-hide">
			<a href="" class="hide-menu">볶음밥</a> <a href="" class="hide-menu">덮밥</a> <a href="" class="hide-menu">나물밥</a>
		</div>
	</nav>

	<!-- Top menu -->
	<div class="w3-top">
		<div class="w3-white w3-xlarge" style="max-width: 1200px; margin: auto">
			<div class="w3-padding-16 w3-left">
				<button id="hamburger-icon" onclick="w3_open()">☰</button>
			</div>
			<div class="w3-right w3-padding-16" style="margin-right: 10px;">
				<a href="/signin.html">sign in</a>
			</div>
			<div id="home" class="w3-center w3-padding-16">
				<a href="/main1.html">Recipe Book</a>
			</div>
		</div>
	</div>

	<!-- !PAGE CONTENT! -->

	<div class="w3-main w3-content w3-padding" style="max-width: 1200px; margin-top:60px">
		<div style="">
			<a href="/recipebook/modify?recipe_id=${read.recipe_id}">수정</a> | <a href ="/recipebook/delete?recipe_id=${read.recipe_id}">삭제</a>
		</div>
		<div>
			<div class="recipe_title">${read.title}</div>
			<div class="bookmark_img">
				<img src="/img/bookmark.png" alt="북마크">
			</div>
		</div>

		<div class="w3-row" style="margin-top: 30px;">
			<div class="w3-third recipe_photo">
				<img src="/img/sweetpotato.jpg" style="width: 100%;">
			</div>
			<div class="w3-twothird w3-container">
				<div class="recipe_fname">${read.sub_title}</div>
				<div class="recipe_uname">by ${read.username}</div>
				<div class="recipe_ingredients">
					<table>
						<tr>
							<td id="ingredients">ingredients</td>
							<td></td>
						</tr>
						<tr>
							<td class="ingredients_name">고구마</td>
							<td class="ingredients_amount">1개</td>
						</tr>
					</table>
				</div>
			</div>
		</div>

		<div class="icons">
			<img src="/img/bookmark_checked.png" alt="">
			288
			<img src="/img/star.png" alt="">
			150
			<img src="/img/timer.png" alt="">${read.amount}인분
			<img src="/img/timer.png" alt="">${read.time}분
		</div>
		<div class="recipe_contents">
			<h1>Recipe</h1>
			<div class="contents">
				<p>${read.content}</p>
			</div>
		</div>
		<hr>
		<div class="recipe_comments">
			<div>
				<h1 style="display: inline;">comments &nbsp&nbsp&nbsp 1</h1>
			</div>
			<span class="comments_uname">yerin</span>
			<span class="comments_contents">look so good!</span>
		</div>
		<input type="text" name="" id="">
		<button>입력</button>

	</div>

	<!-- Footer -->
	<footer class="w3-row-padding w3-padding-32">
		<div class="w3-third">
			<h3>FOOTER</h3>
			<p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
			<p>
				Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a>
			</p>
		</div>

		<div class="w3-third">
			<h3>BLOG POSTS</h3>
			<ul class="w3-ul w3-hoverable">
				<li class="w3-padding-16"><img src="/w3images/workshop.jpg" class="w3-left w3-margin-right" style="width: 50px"> <span class="w3-large">Lorem</span><br> <span>Sed mattis nunc</span></li>
				<li class="w3-padding-16"><img src="/w3images/gondol.jpg" class="w3-left w3-margin-right" style="width: 50px"> <span class="w3-large">Ipsum</span><br> <span>Praes tinci sed</span></li>
			</ul>
		</div>

		<div class="w3-third w3-serif">
			<h3>POPULAR TAGS</h3>
			<p>
				<span class="w3-tag w3-black w3-margin-bottom">Travel</span>
				<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">New York</span>
				<span class="w3-tag w3-dark-grey w3-small w3-margin-bottom">Dinner</span>
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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	font-family: "Karma", sans-serif;
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

.more-button {
	float: right;
	cursor: pointer;
	vertical-align: middle;
}

input[type=text], input[type=file] {
	width: 100%;
	padding: 15px 15px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

textarea {
	border: 1px solid #ccc;
}

.label {
	width: 17%;
	font-size: large;
}

.w3-main {
	margin: 100px auto 100px auto;
}

button, .filebox label {
	background-color: black;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	max-width: 710px;
}

button:hover, .filebox label:hover {
	opacity: 0.8;
	transition-duration: 0.4s;
}

.food-info {
	font-size: 13px;
}

.filebox input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

.select_img {
	margin: 20px
}

td {
	height: 130px;
}

@media ( max-width :600px) {
	.label {
		width: 19%;
		font-size: 11px;
	}
	input[type=text], input[type=file] {
		width: 100%;
		padding: 8px 8px;
		margin: 8px 0;
		font-size: 12px;
		display: inline-block;
		border: 1px solid #ccc;
		box-sizing: border-box;
	}
	.food-info {
		font-size: 10px;
	}
	table td {
		height: 80px;
	}
}
</style>
</head>

<body>
	<!-- Hamburger Menu -->
	<nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="display: none; z-index: 2; width: 40%; min-width: 300px" id="mySidebar">
		<!-- search -->
		<div class="search-container"><a href="javascript:void(0)" onclick="w3_close()"><img id="close-icon" src="img/btn_back.png"></a> <sapn>
			<form action="/action_page.php">
				<span id="search-icon"><i class="fa fa-search"></i></span> <input id="search" type="text" placeholder="Search.." name="search">
			</form>
			</sapn></div>
		<!-- rice menu -->
		<a href="#food" onclick="openMenu('rice-menu')" class="w3-bar-item w3-button">밥 요리</a>
		<div id="rice-menu" class="w3-container w3-hide"><a href="" class="hide-menu">볶음밥</a> <a href="" class="hide-menu">덮밥</a> <a href="" class="hide-menu">나물밥</a> <a href="" class="hide-menu">죽</a></div>
		<!-- noodle menu -->
		<a href="#about" onclick="openMenu('noodle-menu')" class="w3-bar-item w3-button">국수 요리</a>
		<div id="noodle-menu" class="w3-container w3-hide"><a href="" class="hide-menu">볶음밥</a> <a href="" class="hide-menu">덮밥</a> <a href="" class="hide-menu">나물밥</a></div>
		<!-- soup menu -->
		<a href="#about" onclick="openMenu('soup-menu')" class="w3-bar-item w3-button">국물 요리</a>
		<div id="soup-menu" class="w3-container w3-hide"><a href="" class="hide-menu">국/탕/스프</a></div>
		<!-- steamed/boiled/roasted  menu -->
		<a href="#about" onclick="openMenu('steamed-menu')" class="w3-bar-item w3-button">찜/조림/구이 요리</a>
		<div id="steamed-menu" class="w3-container w3-hide"><a href="" class="hide-menu">볶음밥</a> <a href="" class="hide-menu">덮밥</a> <a href="" class="hide-menu">나물밥</a></div>
		<!-- fried menu -->
		<a href="#about" onclick="openMenu('fried-menu')" class="w3-bar-item w3-button">볶음/튀김/부침 요리</a>
		<div id="fried-menu" class="w3-container w3-hide"><a href="" class="hide-menu">볶음밥</a> <a href="" class="hide-menu">덮밥</a> <a href="" class="hide-menu">나물밥</a></div>
		<!-- dessert menu -->
		<a href="#about" onclick="openMenu('dessert-menu')" class="w3-bar-item w3-button">홈카페(디저트, 베이킹 요리)</a>
		<div id="dessert-menu" class="w3-container w3-hide"><a href="" class="hide-menu">볶음밥</a> <a href="" class="hide-menu">덮밥</a> <a href="" class="hide-menu">나물밥</a></div>
	</nav>

	<!-- Top menu -->
	<div class="w3-top">
		<div class="w3-white w3-xlarge" style="max-width: 1200px; margin: auto">
			<div class="w3-padding-16 w3-left">
				<button id="hamburger-icon" onclick="w3_open()">☰</button>
		</div>
			<div class="w3-right w3-padding-16" style="margin-right: 10px;"><a href="/signin.html">sign in</a></div>
			<div id="home" class="w3-center w3-padding-16"><a href="#home">Recipe Book</a></div>
	</div>
	</div>

	<!-- !PAGE CONTENT! -->
	<div class="w3-main w3-content w3-padding" style="max-width: 1200px">
		<form method="post">
			<!-- 넣고 싶은 정보만 넣어주세요! -->
			<table>
				<tr>
					<td class="label">
						<div>제목</div>
					</td>
					<td>
						<div><input type="text" name="title" id="title" placeholder="제목" required></div> <!-- <div class="input-error">
                            <p class="text-danger">제목은 필수 입력사항입니다.</p>
                        </div> -->
					</td>
				</tr>
				<tr>
					<div>
						<td class="label">한 줄 설명</td>
					</div>
					<td>
						<div><input type="text" name="sub_title" id="sub_title" placeholder="한 줄 설명" required></div>
					</td>
				</tr>
				<tr>
					<div>
						<td class="label">레시피 정보</td>
					</div>
					<td><label for="" class="food-info">음식 이름</label>
						<div><input type="text" name="food_name" id="foodname" placeholder="음식 이름" style="margin-top: 0px;" required></div></td>
				</tr>
				<tr>
					<td></td>
					<td><label for="" class="food-info">조리량</label>
						<div><input type="text" name="recipe[serving_for]" style="display: inline; width: 40%; margin-top: 0px;" placeholder="조리분량" required> 인분</div></td>
				</tr>
				<tr>
					<td class="label"></td>
					<td>
						<div><label for="" class="food-info">조리 시간</label></div> 총 <input type="text" placeholder="조리시간" name="time" value="" style="width: 70%; margin: 0 6px;" required /> 분 소요
					</td>
				</tr>
				<tr>
					<td class="label"></td>
					<td><label for="" class="food-info">재료 정보</label> <input type="text" name="recipe[ingredients_name]" id="ingredients_name" placeholder="재료 이름" style="margin-top: 0px;" required> <input type="text" name="recipe[ingredients_amount]" id="ingredients_amount" placeholder="재료 양" required> <a href="javascript:;" class="btn_plus" onclick="add_ingredient()" style="float: right;" required>+ 재료추가하기</a></td>
				</tr>
				<tr>
					<div>
						<td class="label"></td>
					</div>
					<td>
						<div class="filebox"><label for="photo" class="food-info">레시피 사진</label> <input type="file" class="recipe[photo]" name="thumbImg" id="photo"></div>
						<div class="inputArea"><label for="gdsImg">이미지</label> <input type="file" id="gdsImg" name="file" />
							<div class="select_img"><img src="" /></div> <script>
								$("#gdsImg").change(function() {
									if (this.files && this.files[0]) {
										var reader = new FileReader;
										reader.onload = function(data) {
											$(".select_img img").attr("src", data.target.result).width(500);
										}
										reader.readAsDataURL(this.files[0]);
									}
								});
							</script> <%=request.getRealPath("/")%></div>
					</td>
				</tr>
				<tr>
					<div>
						<td class="label"></td>
					</div>
					<td>
						<div><label for="" class="food-info">레시피 내용</label></div> <textarea class="recipe[contents]" id="contents" name="content" style="width: 100%; resize: none; min-height: 300px;" cols="40" rows="15"></textarea>
					</td>
				</tr>
				<tr>
					<div>
						<td class="label">해시태그</td>
					</div>
					<td><input class="recipe[hashtag]" type="text" name="hashtag" id="hashtag" placeholder="해시태그"></td>
				</tr>
			</table>
			<button type="submit">작성 완료</button>
		</form>
	</div>

	<script>
		$("textarea").on('keydown keyup', function() {
			$(this).height(1).height($(this).prop('scrollHeight') + 12);
		});
	</script>

</body>

</html>
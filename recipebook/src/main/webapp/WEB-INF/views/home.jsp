<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="레시피,해먹,요리,레시피,레시피 추천,레시피 공유 사이트,요리법,음식,레시피검색,레시피 사이트,
    레시피 프로그램,초간단요리,혼밥요리,간단한 요리,쉬운레시피,쉬운요리,초보요리,LHCF,다이어트 레시피,
    건강 레시피,면역력 강화 음식,면역력 올려주는 음식,면역력 높이는 음식,면역력에좋은음식,저탄고지 다이어트,
    오프라 윈프리 다이어트,살안찌는 다이어트,건강한 다이어트,맛있는 다이어트,음식 효능,건강 레시피,
    동영상 레시피,바이러스 면역력,면역 음식,면역력높이는방법,면역력저하,면역력비타민,Recipes,K-Food,
    Korean Recipes,K-Food Recipes,Foodiest,Fire Noodle Recipe,Korean Ramen Recipes,면역력에 좋은 음식,
    면역력 높이는 방법,면역력 높이는 약,면역력 강화,칼로리 계산,영양소 계산,레시피 칼로리,키토 다이어트,
    키토제닉 다이어트,키토제닉 식단,면역력에 좋은 요리,다이어트 식단,초간단요리,이지레시피,간단하게해먹기,
    건강하게먹기,건강요리법,삼시세끼,오늘뭐먹지,냉장고를 부탁해,차승원,강레오,최현석,쉐프,셰프,야간매점,
    마리텔,백종원,야식,디저트,간식,떡볶이,마약옥수수,허니버터칩,한식대첩,올리브TV,요섹남,요리하는 남자,
    해먹남,해먹녀,음식남녀,맛집,쿡방,먹방,먹스타그램,쿡스타그램,키친,이밥차,만개의 레시피,레시피,오마이셰프,
    건강,다이어트,저칼로리,저염식,레시피 추천,레시피 사이트 추천,해먹요리,요리콘텐츠,요리사이트,재료별요리,
    엘본,렌틸콩,다음미즈쿡,메뉴판닷컴,요리콘텐츠,레시피검색,간식,간단한,한끼식사,소주안주,렌틸콩,해먹자,
    요섹남,샘킴,황금레시피,수요미식회,김풍,마리텔 백종원,백주부,슈가보이,맛스타그램,초간단,간단요리,치맥,
    김치볶음밥,덮밥,볶음밥,김치찌개,집밥,과자,편의점 요리,삼시세끼,곱창볶음밥,먹스타그램,매운요리,불족,라면,
    스팸,야식,삼겹살,슈가보이,치즈덕후,녹차,계란말이,깻잎 모히또,처음처럼,순하리,야간매점,이연복,술안주,
    집들이,꿀호떡,피자 토스트,피자,갈비만두,치킨,뿌링클 치킨,도시락,김밥,피크닉,자취생,초코,누텔라,
    함박스테이크,일본가정식,연남동,서촌,홍대,명동,가로수길,경리단길, 장진우식당,해방촌,집밥,김구라,신동엽,
    파닭,밥도둑,주먹밥,아기 간식,시어머니,고추장,냉면,냉모밀,콩국수,칼국수,파스타,스파게티,크림 파스타,만두,
    닭갈비,곱창,가라아케,로제 소스,치즈 스틱,식빵,츄러스,샌드위치,크레페,기사식당,부처스컷,식샤를 합시다,
    푸드코트,벼룩시장,내장파괴버거,나물,해독쥬스,한라봉 주스,불닭볶음면,통조림,아가베시럽,닭가슴살,
    다이어트 식단,헬스보이,김수영 식단,볶음라면,백주부,할아버지치킨,맹기용,생계형 식사,초간단 주먹밥,야유회,
    고급진 요리,소울푸드,맹셰프,황광희,최고의 요리비결,빅마마,서태화,잔치국수,코다리 조림,황금레시피,
    생생정보통,대단한레시피,카레밥어묵,어묵밥,비빔밥와플,레인보우어묵,카르보돈가스,비빔밥뻥튀기,한끼의품격,
    사연이있는레시피,레이먼킴,사유리,조세호,홍진경,스스무요나구니,후라이드치킨탕,고칼로리악마면,노치즈케이크,
    마요네즈레시피,백종원 탕수육,찹쌀탕수육,백종원 규동,돼지고기덮밥,닭고기덮밥,오야꼬동,기미작가,슈갑질,
    삼둥이 삼계탕,성시경 미역수프,성시경 냉파스타,차돌박이샐러드,맹기용,이롤슈가,김풍,흥칫풍,흥칩풍,흠칫풍,
    집밥백선생,만능간장,백종원 간장소스,달래간장,밥도둑,밀크쉐이크,최현석,오세득,황요한,남성렬,톳짜장,해장국수,
    기러기국수,짬뽕냉면,백종원 수박소주,화채,기미작가,함박스테이크,울외장아찌,누르삼,양파 캐러멜 커리,셰프테이너,
    모히토,감자채볶음,오이무침,오이냉국,오시지,박준우,코드네임써니,김치부침개,김치전,된장베이스,삼겹살된장찌개,
    수박화채,만능육수,함흥냉면,모리오카냉면,아바이순대,복분자단자,백치즈롤,콩곱창,분자요리,수박주,수박소주,
    참치조림,참치감자조림,고추장찌개,꽃게탕,마파두부,두부김치,캠핑요리,토달토달,복침개,잔치국수,비빔국수,
    열무국수,냉동만두,족발,부드러어,뽀빠이롤,허니버터징,오린기,꽁치통조림,통조림꽁치구이,통조림고등어구이,
    고등어조림,꽁치조림,메로조림,꽁치간장조림,생선통조림,갈치무조림, 바지락칼국수,콩국수,마파두부,바나나쉐이크,
    캠핑요리,면요리,튀김요리,두부반죽,셰프테이너,소고기볶음면,보양식,닭갈비볶음밥,치킨스테이크,닭갈비양념장,
    옛날통닭,김가루,해장라면,다이어트라면,짜파게티,비빔면,꼬빔면,새우탕면,농심,삼양,팔도,심영순,수박국수,
    심심수수,볶음라면,랍스터,비스크,낙지,닭,요리무식자,셰프끼리,정창욱,이탈리아,묵은지김치찜,새우젓,스크램블에그,
    묵은지라면,묵은지전,묵은지찌개,먹선수,옛날통닭,만능육수,신김치,꽃게탕,알차게,가을요리,가을레시피,제철요리,
    배즙,원기충만,설탕폭포수,캐비아,푸아그라,트러플,과일맛소주,유자,3대천왕,전주비빔밥,칼국수,치밥,통닭,부산치킨,
    닭발,케첩,핫소스,낙곱새,떡볶이,돼지불고기,돈가스,최고의한끼,야들야들,살코기,폭풍먹방,매콤한양념,비주얼깡패,
    닭볶음탕,분식메뉴,먹선수,국민음식,떡볶이홀릭,궁극의맛,시원한국물,호로록,식욕자극,낙지볶음,백설명,양푼비빔밥,
    돌솥비빔밥,육회,돼지비계,선짓국,보들보들,중화요리,견과류,땅콩,삼불점,오레오튀김,김치찌개황금레시피,
    된장찌개황금레시피,자취메뉴,간단메뉴,초간단레시피,간단레시피,백종원레시피,백주부레시피,치라밥,굽네치킨치밥,
    굽네치킨볼케이노,굽네치킨볼케이노치밥,굽네치킨볼케이노치라밥,볼케이노치밥, 계란밥, 규동, 김치볶음밥,팝콘새우, 
    홍꼬탕, 골목식당, 수미네반찬,펀스토랑,최현석,백종원,오세득,미슐랭가이드,단짠단짠,밥도둑,쉬운반찬,간편식,
    밥도둑,밥경찰,간단반찬,왕초보요리,교자,소룡포,찐만두,물만두,존맛탱,꿀맛탱,최자로드,에어프라이어요리,
    에어프라이어,빵순이,알토란,역대급레시피,비법레시피,황금비율,편스토랑,제철요리,제철먹방,먹방,안주추천,
    나폴리탄,브런치,편식추천,맵부심,건강식,월남쌈,점심메뉴,트러플,파스타,디저트,아보카도,명란,파티요리,핑거푸드,
    겨울간식,고구마요리,감자요리,홈쿡,집밥레시피,짜파구리,라면추천,토마토라면,참치요리,매콤해산물,달다구리,
    참치마요,참치와사비,매콤달달,맵스터,떡갈비,찹쌀탕수육,치즈덕후,몸보신,보양식,곱창,막창,스팸요리,별미,분식,
    저녁메뉴,일주일식단,저렴한식단,건강한 요리,혼밥 맛있게 먹기,집밥 요리법,양식의 양식,스트리트 푸드 파이터,
    도시어부,떡볶이 만드는 법,피자 레시피,김밥 레시피,라면 레시피,미역국 레시피,스테이크 레시피,쌀국수 레시피,
    냉면 레시피">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Karma">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

@media ( max-width :600px) {
	.w3-quarter {
		width: 33.3%;
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
				id="close-icon" src="resources/img/btn_back.png"></a>
			<sapn>
			<form action="/action_page.php">
				<span id="search-icon"><i class="fa fa-search"></i></span> <input
					id="search" type="text" placeholder="Search.." name="search">
			</form>
			</sapn>
		</div>
		<!-- rice menu -->
		<a href="/recipebook/list?num=1" onclick="openMenu('rice-menu')"
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
		<div class="w3-white w3-xlarge"
			style="max-width: 1200px; margin: auto">
			<div class="w3-padding-16 w3-left">
				<button id="hamburger-icon" onclick="w3_open()">☰</button>
			</div>

				<div class="w3-right w3-padding-16" style="margin-right: 10px;">
					<a href="/recipebook/login">sign in</a>
				</div>
			
			<div id="home" class="w3-center w3-padding-16">
				<a href="">Recipe Book</a>
			</div>
		</div>
	</div>

	<!-- !PAGE CONTENT! -->
	<div class="w3-main w3-content w3-padding"
		style="max-width: 1200px; margin-top: 100px">

		<div>
			<span>
				<h1 style="display: inline;">TOP 50 Best Menu</h1>
			</span> <span class="more-button"><a href="/list.html">> 더보기</a></span>
		</div>

		<!-- First Photo Grid-->
		<div class="w3-row-padding w3-padding-16 w3-center" id="food">
			<div class="w3-quarter">
				<img src="/resources/img/1.jpg" alt="Sandwich" style="width: 100%">
				<h3>The Perfect Sandwich, A Real NYC Classic</h3>
				<p>Just some random text, lorem ipsum text praesent tincidunt
					ipsum lipsum.</p>
			</div>
			<div class="w3-quarter">
				<a href="/read.html"><img src="/resources/img/2.jpg" alt="Steak"
					style="width: 100%"></a>
				<h3>Let Me Tell You About This Steak</h3>
				<p>Once again, some random text to lorem lorem lorem lorem ipsum
					text praesent tincidunt ipsum lipsum.</p>
			</div>
			<div class="w3-quarter">
				<img src="/resources/img/3.jpg" alt="Cherries" style="width: 100%">
				<h3>Cherries, interrupted</h3>
				<p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
				<p>What else?</p>
			</div>
			<div class="w3-quarter">
				<img src="/resources/img/4.jpg" alt="Pasta and Wine"
					style="width: 100%">
				<h3>Once Again, Robust Wine and Vegetable Pasta</h3>
				<p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
			</div>
		</div>

		<!-- Second Photo Grid-->
		<div class="w3-row-padding w3-padding-16 w3-center">
			<div class="w3-quarter">
				<img src="/resources/img/5.jpg" alt="Popsicle" style="width: 100%">
				<h3>All I Need Is a Popsicle</h3>
				<p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
			</div>
			<div class="w3-quarter">
				<img src="/resources/img/6.jpg" alt="Salmon" style="width: 100%">
				<h3>Salmon For Your Skin</h3>
				<p>Once again, some random text to lorem lorem lorem lorem ipsum
					text praesent tincidunt ipsum lipsum.</p>
			</div>
			<div class="w3-quarter">
				<img src="/resources/img/7.jpg" alt="Sandwich" style="width: 100%">
				<h3>The Perfect Sandwich, A Real Classic</h3>
				<p>Just some random text, lorem ipsum text praesent tincidunt
					ipsum lipsum.</p>
			</div>
			<div class="w3-quarter">
				<img src="/resources/img/8.jpg" alt="Croissant" style="width: 100%">
				<h3>Le French</h3>
				<p>Lorem lorem lorem lorem ipsum text praesent tincidunt ipsum
					lipsum.</p>
			</div>
		</div>

		<div style="margin-top: 50px;">
			<span>
				<h1 style="display: inline;">오늘 날씨엔</h1>
			</span> <span class="more-button"><a>> 더보기</a></span>
		</div>

		<!-- First Photo Grid-->
		<div class="w3-row-padding w3-padding-16 w3-center" id="food">
			<div class="w3-quarter">
				<img src="/resources/img/9.jpg" alt="Sandwich" style="width: 100%">
				<h3>The Perfect Sandwich, A Real NYC Classic</h3>
				<p>Just some random text, lorem ipsum text praesent tincidunt
					ipsum lipsum.</p>
			</div>
			<div class="w3-quarter">
				<img src="/resources/img/10.jpg" alt="Steak" style="width: 100%">
				<h3>Let Me Tell You About This Steak</h3>
				<p>Once again, some random text to lorem lorem lorem lorem ipsum
					text praesent tincidunt ipsum lipsum.</p>
			</div>
			<div class="w3-quarter">
				<img src="/resources/img/11.jpg" alt="Cherries" style="width: 100%">
				<h3>Cherries, interrupted</h3>
				<p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
				<p>What else?</p>
			</div>
			<div class="w3-quarter">
				<img src="/resources/img/12.jpg" alt="Pasta and Wine"
					style="width: 100%">
				<h3>Once Again, Robust Wine and Vegetable Pasta</h3>
				<p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
			</div>
		</div>

		<div style="margin-top: 50px;">
			<span>
				<h1 style="display: inline;">20대, 여성</h1>
			</span> <span class="more-button"><a>> 더보기</a></span>
		</div>

		<!-- Second Photo Grid-->
		<div class="w3-row-padding w3-padding-16 w3-center">
			<div class="w3-quarter">
				<img src="/resources/img/13.jpg" alt="Popsicle" style="width: 100%">
				<h3>All I Need Is a Popsicle</h3>
				<p>Lorem ipsum text praesent tincidunt ipsum lipsum.</p>
			</div>
			<div class="w3-quarter">
				<img src="/resources/img/14.jpg" alt="Salmon" style="width: 100%">
				<h3>Salmon For Your Skin</h3>
				<p>Once again, some random text to lorem lorem lorem lorem ipsum
					text praesent tincidunt ipsum lipsum.</p>
			</div>
			<div class="w3-quarter">
				<img src="/resources/img/15.jpg" alt="Sandwich" style="width: 100%">
				<h3>The Perfect Sandwich, A Real Classic</h3>
				<p>Just some random text, lorem ipsum text praesent tincidunt
					ipsum lipsum.</p>
			</div>
			<div class="w3-quarter">
				<img src="/resources/img/8.jpg" alt="Croissant" style="width: 100%">
				<h3>Le French</h3>
				<p>Lorem lorem lorem lorem ipsum text praesent tincidunt ipsum
					lipsum.</p>
			</div>
		</div>
	</div>

	<hr id="about">

	<!-- 주석 About Section
        <div class="w3-container w3-padding-32 w3-center">
            <h3>About Me, The Food Man</h3><br>
            <img src="/w3images/chef.jpg" alt="Me" class="w3-image" style="display:block;margin:auto" width="800"
                height="533">
            <div class="w3-padding-32">
                <h4><b>I am Who I Am!</b></h4>
                <h6><i>With Passion For Real, Good Food</i></h6>
                <p>Just me, myself and I, exploring the universe of unknownment. I have a heart of love and an interest
                    of lorem ipsum and mauris neque quam blog. I want to share my world with you. Praesent tincidunt sed
                    tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non
                    fringilla. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae,
                    ultricies congue gravida diam non fringilla.</p>
            </div>
        </div>
        <hr> -->

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

<%@page import="model.recipeDTO"%>
<%@page import="java.util.List"%>
<%@page import="model.recipeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>제철식당</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
<%
	int F_NUM = Integer.parseInt(request.getParameter("F_NUM"));
	List<recipeDTO> list = new recipeDAO().getRecipe(F_NUM);
	
%>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="./recipeMain.jsp"><img src="img/logo.png" alt=""></a>
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__auth">
                
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li><a href="./recipeMain.jsp">홈</a></li>
                <li><a href="#"></a></li>
                <li><a href="./contact.html">주변마트 검색</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
    </div>
    <!-- Humberger End -->

     <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                    </div>
                    <div class="col-lg-6">
                        <div class="header__top__right">
                            <div class="header__top__right__auth">
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./recipeMain.jsp"><img src="img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="./recipeMain.jsp">홈</a></li>
                            <li><a href="#"></a></li>
                            <li><a href="./map.jsp">주변마트 검색</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- 버튼 클릭 시 색깔 바꾸는 script -->
    <header class="header">
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                var navLinks = document.querySelectorAll('.header__menu ul li a');
    
                navLinks.forEach(function (link) {
                    link.addEventListener('click', function (event) {
                        // Remove the 'active' class from all links
                        navLinks.forEach(function (innerLink) {
                            innerLink.parentElement.classList.remove('active');
                        });
    
                        // Add the 'active' class to the clicked link's parent list item
                        event.target.parentElement.classList.add('active');
                    });
                });
            });
        </script>
    </header>
    <!-- script 끝 -->

     <!-- Hero Section Begin -->
     <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>월별 제철요리</span>
                        </div>
                        <ul>
                            <li><a href="./recipeMain.jsp?month=All">전체보기</a></li>
                        <%for(int i=0; i<12; i++){ %>
							<li><a href="./recipeMain.jsp?month=<%=i+1%>"><%=i+1%>월</a></li>
						<%}%>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <input type="text" placeholder="레시피">
                                <button type="submit" class="site-btn">검색</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->


    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>레시피 모음</h2>
                        <div class="breadcrumb__option">
                            <span></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="col-lg-12 text-center">
        <div class="breadcrumb__text2">
            <h2>레시피 모음</h2>
        </div>
    </div>
    <!-- Breadcrumb Section End -->

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                    <div class="filter__item">

                    </div>
                    <div class="row">
                    
                    <%for(int i=0; i<list.size(); i++){ %>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="img/제철요리사진/<%=list.get(i).getR_PIC()%>" style="width:300px;">
                                    <ul class="product__item__pic__hover">
                                        보기
                                    </ul>
                                </div>
                                <div class="product__item__text" style="width: 300px;">
                                    <h6><a href="./shop_details.jsp?R_NUM=<%=list.get(i).getR_NUM()%>"><%=list.get(i).getR_NAME() %></a></h6>
                                    <h5>중</h5>
                                </div>
                            </div>
                        </div>
                        
                        <%} %>
                    </div>

            </div>
        </div>
    </section>
    <!-- Product Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="img/logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>주소: 광주광역시 동구 예술길 스마트인재개발원</li>
                            <li>전화번호: 010-0000-0000</li>                      </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>건의사항</h6>
                        <p>불편사항이나 제안사항이 있으신가요?
                            <br>
                            제철식당 레시피에 전하고 싶은 의견을 남겨주세요.
                        </p>
                        <form action="#" class="form-container">
                            <textarea name="board" cols="36" rows="5" style="resize: none;"></textarea>
                            <button type="submit" class="textarea_btn">
                                <span class="submit-text">의견제출</span>
                            </button>
                        </form>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved <i class="fa fa-heart" aria-hidden="true"></i> by <a href="#" target="_blank">제철식당</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>



</body>

</html>
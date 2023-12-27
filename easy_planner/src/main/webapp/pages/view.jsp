<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<meta name="viewport" content="width=device-width, initial-scale=1" >

<!--  네이버 마루부리 글씨체 css -->
<link rel="stylesheet" href="https://hangeul.pstatic.net/hangeul_static/css/maru-buri.css" >
<link href="https://hangeul.pstatic.net/hangeul_static/css/NanumJungHagSaeng.css" rel="stylesheet">
<!--  부트스트랩 & 제이쿼리 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!--  폰트어썸 -->
<script src="https://kit.fontawesome.com/5081dee0c3.js" crossorigin="anonymous"></script>
<!--  내가 만든 script -->
<script src="script/json_list.js" defer></script>
<script src="script/form_script.js" defer></script>
<script src="script/basic_script.js" defer></script>

<!--  내가 만든 css -->
<link rel="stylesheet" href="css/basic.css" >
<link rel="stylesheet" href="css/media_query.css" >

<title>My Calendar</title>
</head>
<body>
<div class="abc">
<svg width="100%" height="100%" id="svg" viewBox="0 0 1440 700" xmlns="http://www.w3.org/2000/svg"
            class="transition duration-300 ease-in-out delay-150">
            <style>
                .path-0 {
                    animation: pathAnim-0 3s;
                    animation-timing-function: linear;
                    animation-iteration-count: infinite;
                }

                @keyframes pathAnim-0 {
                    0% {
                        d: path("M 0,400 L 0,60 C 249,50 498,40 738,40 C 978,40 1209,50 1440,60 L 1440,400 L 0,400 Z");
                    }

                    25% {
                        d: path("M 0,400 L 0,60 C 290.5,55 581,50 821,50 C 1061,50 1250.5,55 1440,60 L 1440,400 L 0,400 Z");
                    }

                    50% {
                        d: path("M 0,400 L 0,60 C 243.5,69.5 487,79 727,79 C 967,79 1203.5,69.5 1440,60 L 1440,400 L 0,400 Z");
                    }

                    75% {
                        d: path("M 0,400 L 0,60 C 304.5,73.5 609,87 849,87 C 1089,87 1264.5,73.5 1440,60 L 1440,400 L 0,400 Z");
                    }

                    100% {
                        d: path("M 0,400 L 0,60 C 249,50 498,40 738,40 C 978,40 1209,50 1440,60 L 1440,400 L 0,400 Z");
                    }
                }
            </style>
            <defs>
                <linearGradient id="gradient" x1="50%" y1="100%" x2="50%" y2="0%">
                    <stop offset="5%" stop-color="#0693e3"></stop>
                    <stop offset="95%" stop-color="#8ED1FC"></stop>
                </linearGradient>
            </defs>
            <path d="M 0,400 L 0,60 C 249,50 498,40 738,40 C 978,40 1209,50 1440,60 L 1440,400 L 0,400 Z" stroke="none"
                stroke-width="0" fill="url(#gradient)" fill-opacity="0.265"
                class="transition-all duration-300 ease-in-out delay-150 path-0"></path>
            <style>
                .path-1 {
                    animation: pathAnim-1 6s;
                    animation-timing-function: linear;
                    animation-iteration-count: infinite;
                }

                @keyframes pathAnim-1 {
                    0% {
                        d: path("M 0,340 L 0,80 C 211,91 422,102 662,102 C 902,102 1171,91 1440,80 L 1440,340 L 0,340 Z");
                    }
                
                    25% {
                        d: path("M 0,340 L 0,80 C 251,85.5 502,91 742,91 C 982,91 1211,85.5 1440,80 L 1440,340 L 0,340 Z");
                    }
                
                    50% {
                        d: path("M 0,340 L 0,80 C 214,91.5 428,103 668,103 C 908,103 1174,91.5 1440,80 L 1440,340 L 0,340 Z");
                    }
                
                    75% {
                        d: path("M 0,340 L 0,80 C 193.5,82 387,84 627,84 C 867,84 1153.5,82 1440,80 L 1440,340 L 0,340 Z");
                    }
                
                    100% {
                        d: path("M 0,340 L 0,80 C 211,91 422,102 662,102 C 902,102 1171,91 1440,80 L 1440,340 L 0,340 Z");
                    }
                }
            </style>
            <defs>
                <linearGradient id="gradient" x1="50%" y1="100%" x2="50%" y2="0%">
                    <stop offset="5%" stop-color="#0693e3"></stop>
                    <stop offset="95%" stop-color="#8ED1FC"></stop>
                </linearGradient>
            </defs>
            <path d="M 0,400 L 0,140 C 211,151 422,162 662,162 C 902,162 1171,151 1440,140 L 1440,400 L 0,400 Z"
                stroke="none" stroke-width="0" fill="url(#gradient)" fill-opacity="0.4"
                class="transition-all duration-300 ease-in-out delay-150 path-1"></path>
            <style>
                .path-2 {
                    animation: pathAnim-2 9s;
                    animation-timing-function: linear;
                    animation-iteration-count: infinite;
                }

                @keyframes pathAnim-2 {
                    0% {
                        d: path("M 0,280 L 0,100 C 258,91.5 516,83 756,83 C 996,83 1218,91.5 1440,100 L 1440,280 L 0,280 Z");
                    }
                
                    25% {
                        d: path("M 0,280 L 0,100 C 181.5,103 363,106 603,106 C 843,106 1141.5,103 1440,100 L 1440,280 L 0,280 Z");
                    }
                
                    50% {
                        d: path("M 0,280 L 0,100 C 216,85 432,70 672,70 C 912,70 1176,85 1440,100 L 1440,280 L 0,280 Z");
                    }
                
                    75% {
                        d: path("M 0,280 L 0,100 C 292.5,103.5 585,107 825,107 C 1065,107 1252.5,103.5 1440,100 L 1440,280 L 0,280 Z");
                    }
                
                    100% {
                        d: path("M 0,280 L 0,100 C 258,91.5 516,83 756,83 C 996,83 1218,91.5 1440,100 L 1440,280 L 0,280 Z");
                    }
                }
            </style>
            <defs>
                <linearGradient id="gradient" x1="50%" y1="100%" x2="50%" y2="0%">
                    <stop offset="5%" stop-color="#0693e3"></stop>
                    <stop offset="95%" stop-color="#8ED1FC"></stop>
                </linearGradient>
            </defs>
            <path d="M 0,400 L 0,220 C 258,211.5 516,203 756,203 C 996,203 1218,211.5 1440,220 L 1440,400 L 0,400 Z"
                stroke="none" stroke-width="0" fill="url(#gradient)" fill-opacity="0.53"
                class="transition-all duration-300 ease-in-out delay-150 path-2"></path>
            <style>
                .path-3 {
                    animation: pathAnim-3 12s;
                    animation-timing-function: linear;
                    animation-iteration-count: infinite;
                }

                @keyframes pathAnim-3 {
                    0% {
                        d: path("M 0,2200 L 0,120 C 212,121.5 424,123 664,123 C 904,123 1172,121.5 1440,120 L 1440,2200 L 0,2200 Z");
                    }
                
                    25% {
                        d: path("M 0,2200 L 0,120 C 284.5,118.5 569,117 809,117 C 1049,117 1244.5,118.5 1440,120 L 1440,2200 L 0,2200 Z");
                    }
                
                    50% {
                        d: path("M 0,2200 L 0,120 C 286,129 572,138 812,138 C 1052,138 1246,129 1440,120 L 1440,2200 L 0,2200 Z");
                    }
                
                    75% {
                        d: path("M 0,2200 L 0,120 C 293.5,110.5 587,101 827,101 C 1067,101 1253.5,110.5 1440,120 L 1440,2200 L 0,2200 Z");
                    }
                
                    100% {
                        d: path("M 0,2200 L 0,120 C 212,121.5 424,123 664,123 C 904,123 1172,121.5 1440,120 L 1440,2200 L 0,2200 Z");
                    }
                }
            </style>
            <defs>
                <linearGradient id="gradient" x1="50%" y1="100%" x2="50%" y2="0%">
                    <stop offset="5%" stop-color="#0693e3"></stop>
                    <stop offset="95%" stop-color="#8ED1FC"></stop>
                </linearGradient>
            </defs>
            <path d="M 0,2200 L 0,120 C 212,301.5 424,303 664,303 C 904,303 1172,301.5 1440,300 L 1440,400 L 0,2200 Z"
                stroke="none" stroke-width="0" fill="url(#gradient)" fill-opacity="1"
                class="transition-all duration-300 ease-in-out delay-150 path-3"></path>
        </svg>
 </div>
    <div class=wrapper>
        <div class="header">
            <div class="logo">
                <a href="index.jsp"><!--<img src="images/logo.png" alt="">-->e`지 플래너</a>
            </div>
            <div class="menu">
                <ul>
                <c:choose>
				    <c:when test="${empty sessionScope.login_id}">
				        <!-- 로그인이 되어있지 않은 경우 -->
				        <li><a class="login_click" style="cursor:pointer">로그인</a></li>
				        <li><a class="join_click" style="cursor:pointer">회원가입</a></li>
				        <li><a href="users_logout.do" class="log_out" style="display:none">로그아웃</a></li>
				        <li><a href="users_info.do" class="my_info" style="display:none">내정보 보기</a></li>
				    	
				    </c:when>
				    <c:otherwise>
				        <!-- 로그인이 되어있는 경우 -->
				        <li><a class="login_click" style="display:none">로그인</a></li>
				        <li><a class="join_click" style="display:none">회원가입</a></li>
				        <li><a href="users_logout.do" class="log_out">로그아웃</a></li>
				        <li><a href="users_info.do" class="my_info">내정보 보기</a></li>
				     
				    </c:otherwise>
				</c:choose>
                </ul>
            </div>
        </div>

        <div class="body">

            <div class="side">
                <div class="br"></div>
                <div class="br"></div>
                <div class="br"></div>
                <div class="menu1">


                    <div class="dropdown">
                        <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">월별
                            보기</button>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li class="view_type"><a href="#">
                                    <div class="view_type_choice">
                                        <div>일</div>
                                        <div>1</div>
                                    </div>
                                </a></li>
                            <li class="view_type"><a href="#">
                                    <div class="view_type_choice">
                                        <div>주</div>
                                        <div>2</div>
                                    </div>
                                </a></li>
                            <li class="view_type"><a href="#">
                                    <div class="view_type_choice">
                                        <div>월</div>
                                        <div>3</div>
                                    </div>
                                </a></li>
                            <li class="view_type"><a href="#">
                                    <div class="view_type_choice">
                                        <div>년</div>
                                        <div>4</div>
                                    </div>
                                </a></li>
                        </ul>
                    </div>







                </div>
                <div class="menu2">
                    <ul>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                </div>
                <div class="menu3">
                    <ul>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>

                </div>


            </div>
            <div class="calendar">


                <div class="c_top">
                    <div class="c_top_left"></div>
                    <div class="c_top_center">
                        <div class="c_top_center_in left_arrow">&lt;</div>
                        <div class="c_top_center_in"></div>
                        <div class="c_top_center_in">
                            <div class="month_display"></div>
                        </div>
                        <div class="c_top_center_in"></div>
                        <div class="c_top_center_in right_arrow">&gt;</div>
                    </div>
                    <div class="c_top_right"></div>

                </div>
                <div class="list_column"></div>
                <div id="calendar_body"></div>
                <div style="height: 100px; padding : 20px;">
                	  	<div class="form-group">
					    
					    <div class="">
					      <input type="text" class="form-control" id="easy_prompt" placeholder="EZ prompt">
					    </div>

                </div>
            </div>

        </div>
    </div>


    <!-- default display none -->
    <div class="login_box">
        <div class="login_box_inner">
            <form action="users_login.do" method="post">
 				<fieldset>

                <div class="form-group">
                    <label for="id_login">아이디 </label> <input type="text" id="id_login" name="id_login"
                        class="form-control" />
                </div>

                <div class="form-group">
                    <label for="pass_login">비밀번호 </label> <input type="password" id="pass_login" name="pass_login"
                        class="form-control" />
                </div>

                <div class="form-group">
                	<div>
                    <input type="checkbox" id="remember_id" name="remember_id" />
                    <label for="remember_id"> 아이디 기억하기</label>
                    </div>
                	<div>
                    <input type="checkbox" id="remember_login" name="remember_login" />
                    <label for="remember_login"> 로그인 유지하기</label>
                    </div>
                </div>
                <br>
                <div class="form-group">
                    <input type="submit" value="로그인" class="btn btn-danger btn-block ">
                    <a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=5311dcef4df09cce6029d72479addf8c&redirect_uri=http://localhost:8080/easy_planner/Kakao_login" id="kakao_login_button" class="btn btn-success btn-warning ">카카오로 로그인</a>
                    <a href="#" id="naver_login_button" class="btn btn-success btn-block ">네이버로 로그인</a>
                    
                </div>
                
                <div class="form-group find_id_pass">
                    <span class="find_id_button"><a href="#">아이디 찾기</a></span> <span class="find_pass_button"><a
                            href="#">비밀번호 찾기</a></span>
                </div>

                </fieldset>
            </form>
        </div>
    </div>


    <!-- default display none -->
    <div class="join_box">
        <div class="join_box_inner">
            <form action="users_join.do" id="users_create_form" method="post">
                <fieldset>
                    <div class="form-group-first">
                        <div class="logo_join">
                           <!--   <img src="images/logo.png" class="logo_join">-->
                        e`지 플래너
                        </div>
                        <p>회원으로 가입해주셔서 감사합니다</p>
                    </div>

                    <div class="form-group">
                        <div class="id_check check_form">
                            <label for="id_join">아이디 </label> <label for="id_join"
                                class="check_message"></label>
                        </div>
                        <input type="text" id="id_join" name="id_join" class="form-control" />
                    </div>

                    <div class="form-group">
                        <div class="pass_check check_form">
                            <label for="pass_join">비밀번호 </label> <label for="pass_join"
                                class="check_message"></label>
                        </div>
                        <input type="password" id="pass_join" name="pass_join" class="form-control" />
                    </div>

                    <div class="form-group">
                        <div class="pass2_check check_form">
                            <label for="pass2_join">비밀번호 확인 </label> <label for="pass2_join"
                                class="check_message"></label>
                        </div>
                        <input type="password" id="pass2_join" name="pass2_join" class="form-control" />
                    </div>

                    <div class="form-group">
                        <div class="email_check check_form">
                            <label for="email_join">이메일 </label> <label for="email_join"
                                class="check_message"></label>
                        </div>
                        <input type="text" id="email_join" name="email_join" class="form-control" />
                    </div>

                    <div class="form-group">
                        <div class="birth_check check_form">
                            <label for="birth_join">생일 </label> <label for="birth_join"
                                class="check_message"></label>
                        </div>
                        <input type="date" id="birth_join" name="birth_join" class="form-control" />
                    </div>
                    <br>
                    <br>
                    <div class="form-group">
                        <input type="submit" value="회원가입" class="btn btn-danger btn-block ">
                    </div>

                </fieldset>
            </form>
        </div>
    </div>




    <!-- default display none -->
    <div class="find_id">
        <div class="subject">아이디 찾기</div>
        <div class="description">회원가입시 입력한 이메일로 인증번호를 보내드립니다.</div>
        <div class="content">
            <form action="#" method="post">
                <fieldset>
                    <div class="form-group">
                        <label for="email_f">이메일 </label> 
                        <input type="email" id="email_f" name="email_f" class="form-control" />
                    </div>
                    <div class="form-group">
                        <input type="submit" value="인증메일 보내기" class="btn btn-info btn-block ">
                    </div>
                </fieldset>

            </form>
            <br>
            <form action="#" method="post">
                <fieldset>
                    <div class="form-group">
                        <label for="number">인증번호 </label> <input type="text" id="number" name="number"
                            class="form-control" />
                    </div>
                    <div class="form-group">
                        <input type="submit" value="인증번호 확인" class="btn btn-success btn-block ">
                    </div>
                </fieldset>
            </form>
        </div>


    </div>



    <!-- default display none -->
    <div class="insert_schedule">
        <div class="subject">일정 추가</div>
        <div class="description">일정 내용과 시작 ~ 종료 시간을 설정해주세요</div>
        <div class="content">
            <form action="schedule_create.do" method="post">
                <fieldset>
                    <div class="form-group">
                        <label for="content">일정</label>
                        <textarea rows="5" id="content" name="content" class="form-control insert_schedule_write_form"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="start_date">시작 시간</label> 
                        <input type="datetime-local" id="start_date" name="start_date" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="end_date">종료 시간</label> 
                        <input type="datetime-local" id="end_date" name="end_date" class="form-control" />
                    </div>
                    <div class="form-group insert_schedule_end">
                        <input type="submit" value="저장" class="btn btn-info cancel btn_margin_left"> 
                        <a href="#" class="btn btn-danger cancel">취소</a>
					</div>
                </fieldset>
            </form>
        </div>
    </div>






    <!-- default display none -->
    <div class="update_schedule">
        <div class="subject">일정 수정</div>
        <div class="description">일정 내용과 시작 ~ 종료 시간을 설정해주세요</div>
        <div class="content">
            <form action="schedule_update.do" method="post">
                <fieldset>
                    <div class="form-group">
                    	<input type="hidden" id="s_index" name="s_index" class="form-control hidden" />
                        <label for="content">일정</label>
                        <textarea rows="5" id="content2" name="content2" class="form-control insert_schedule_write_form"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="start_date">시작 시간</label> 
                        <input type="datetime-local" id="start_date2" name="start_date2" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="end_date">종료 시간</label> 
                        <input type="datetime-local" id="end_date2" name="end_date2" class="form-control" />
                    </div>
                    <div class="form-group insert_schedule_end">
                        <input type="submit" value="저장" class="btn btn-info"> 
                        <a href="schedule_delete.do" class="btn btn-danger schedule_delete btn_margin_left">삭제</a>
                        <input type="reset" value="취소" class="btn btn-danger cancel btn_margin_left">
					</div>
                </fieldset>
            </form>
        </div>
    </div>

    <div class="black"></div>

<!-- 제미나이 ai api -->
<!-- 제미나이 ai api -->
<!-- 제미나이 ai api -->
<script type="importmap">
{"imports": {"@google/generative-ai": "https://esm.run/@google/generative-ai"}}
</script>
<script type="module" src="script/gemini_script.js"></script>
<!-- <script src="script/inthesea.js" type="module" defer="defer"></script> -->

</body>

</html>
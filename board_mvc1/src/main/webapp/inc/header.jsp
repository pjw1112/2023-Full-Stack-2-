<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<!-- Theme Made By www.w3schools.com -->
<title>board_mvc1</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
.wrapper {
	display: flex;
	flex-direction: column;
	height: 100vh;
	
}

.header {
	width: 100%;
	height: 100px;
	
	font-size: 30px;
	text-align: center;
	line-height: 100px;
	border-bottom: 1px solid gray;
}

.main {
	flex-grow: 1;
	
}

.footer {
	width: 100%;
	height: 100px;
	
	font-size: 30px;
	text-align: center;
	line-height: 100px;
	border-top: 1px solid gray;
}

table {
	width: 100%;
	text-align: center;
}

table tr>th {
	background-color: rgb(230, 230, 230);
	border: 1px solid rgb(200, 200, 200);
	padding: 10px;
	text-align: center;
}

table tbody tr {
	margin: 10px;
	
	

}

table>tbody>tr>td {
	margin: 10px;
	border: 1px solid rgb(200, 200, 200);
	padding: 3px;
	height: 20px;	
}
.board_main{
height : 600px;
margin : 50px auto;
}
.col_title{
width : 300px;!important
}
</style>
</head>

<body>
	<div class="wrapper">
		<div class="header">기본 게시판 ( board_mvc! ) header</div>
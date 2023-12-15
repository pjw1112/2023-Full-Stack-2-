<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title> 파일 업로드</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
   <div class="container panel panel-info">
      <h3 class="panel-heading">001. 파일 업로드</h3>
      <pre>
      1. cos.jar
         - http://www.servlets.com
         - COS File Upload Library
         - cos - 22.05.zip
         - cos.jar
      2. form
         - method="post"
         - enctype="multipart/form-data"
      3. MultipartRequest
      
      MODEL       - TABLE / DTO / DAO
      VIEW        - form.jsp(form)     result.jsp(결과창)
      CONTROLLER    - upload1.upload 
      
      form.jsp(form:method, enctype)   
      →  upload.upload(MultipartRequest)  
      →  result.jsp
      </pre>
      <form action="${pageContext.request.contextPath}/Upload001.upload" method="post" enctype="multipart/form-data">
         <fieldset>
         <legend>파일 업로드 BASIC001</legend>
         <div class="form-group">
            <label for="title">TITLE</label>
            <input type="text" id="title" name="title" class="form-control" />
         </div>
         <div class="form-group">
            <label for="file">FILE UPLOAD</label>
            <input type="file" id="file" name="file" class="form-control" />
         </div>
         
         <div class="form-group">
            <input type="submit" title="파일업로드" value="파일업로드" class="btn btn-danger" />
         </div>
         </fieldset>
      </form>
   </div>
</body>
</html>
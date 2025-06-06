<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배달의 민족</title>
<!-- 부트 스트랩 CDN -->
<!-- CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<!-- JS -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
		<div class="container">
			<h1>메뉴 검색</h1>
			<form method="get" action="/lesson02/quiz07_1.jsp"> <!-- action으로 /lesson01/quiz07_1.jsp 여기에 get 요청(request) 한다는 뜻! -->
				<div class="d-flex align-items-center">
					<input type="text" class="form-control col-3 mr-2" name="keyword" placeholder="치킨">
					<label>					
						<input type="checkbox" name="pointFilter" value="true">		
						<span>4점 이하 제외</span>
					</label>
				</div>		
					<button type="submit" class="btn btn-success mt-3" value="검색">검색</button> <!-- get 요청, 근데 post로 해도 O. -->
			</form>
		</div>
</body>
</html>
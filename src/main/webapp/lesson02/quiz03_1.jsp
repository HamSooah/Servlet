<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 계산</title>
</head>
<body>
	<%
		int weight = Integer.parseInt(request.getParameter("weight"));
		int height = Integer.valueOf(request.getParameter("height"));
		
		double bmi =  weight / ((height / 100.0) * (height / 100.0));
		// out.print(bmi);
		
		String result = null;
		
		if (bmi <= 20) {
			result = "저체중";
		} else if (bmi <= 25) {
			result = "정상";
		} else if (bmi <= 30) {
			result = "과체중";
		} else {
			result = "비만";
		}
	%>
	
	<div class="container">	
		BMI 측정 결과
		
		<div display-4>당신은<span class="text-info"> <%= result %> </span>입니다.</div>
		
		<p>BMI 수치 : <%=  %></p>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문과 자료 구조 사용</title>
</head>
<body>
	<%
		// map → table 나타내기
		// {"korean" = 85, "english" = 72, "math" = 90, "science" = 100}
	Map<String, Integer> scoreMap = new HashMap<>();
	
	score.put("korean", 85);
	score.put("english", 72);
	score.put("math", 90);
	score.put("science", 100);
	out.print(scoreMap);
	%>
	
	<table border = "1">
	<%
		Set<String> keys = scoreMap.keySet(); 
		Iterator<String> iter = keys.iterator();
		Iterator<String> iter = scoreMap.keySet().iterator();
		while (iter.hasNext()) {
			String key = iter.Next(); // key = 과목명
		}
	%>
	
		<tr>
			<th>
				if (key.equals("korean")) {
					out.print("국어");
				} else if (key.equals("english")) {
					out.print("영어");
				} (key.equals("math")) {
					out.print("수학");
				} (key.equals("science")) {
					out.print("과학");
				}
			</th>
			<td><%= scoreMap.get(key) %></td>
		</tr>
	</table>
</body>
</html>
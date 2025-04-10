<%@ page import="java.util.*, java.text.*" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%! 
    // 1. 1부터 n까지의 합계를 구하는 함수
    public int sumToN(int n) {
        int sum = 0;
        for (int i = 1; i <= n; i++) {
            sum += i;
        }
        return sum;
    }

    // 4. 생일로 나이 계산하는 함수
    public int calculateAge(String birthDay) {
        int birthYear = Integer.parseInt(birthDay.substring(0, 4));
        int birthMonth = Integer.parseInt(birthDay.substring(4, 6));
        int birthDate = Integer.parseInt(birthDay.substring(6, 8));

        Calendar today = Calendar.getInstance();
        int currentYear = today.get(Calendar.YEAR);
        int currentMonth = today.get(Calendar.MONTH) + 1;
        int currentDate = today.get(Calendar.DATE);

        int age = currentYear - birthYear;
        if (currentMonth < birthMonth || (currentMonth == birthMonth && currentDate < birthDate)) {
            age--;
        }
        return age;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>quiz01</title>
</head>
<body>
<h2>🧠 JSP Quiz 01 결과 🧠</h2>

<%
    // 1. 1부터 N까지의 합
    int n = 10;
    int sum = sumToN(n);
%>
<p>1부터 <strong><%=n%></strong>까지의 합 : <strong><%=sum%></strong></p>

<%
    // 2. 점수들의 평균 구하기
    int[] scores = {81, 90, 100, 95, 80};
    int total = 0;
    for (int i = 0; i < scores.length; i++) {
    	total += scores[i];
    }
    double average = total / (double) scores.length;
%>
<p>점수 평균 : <strong><%=average%></strong></p>

<%
    // 3. 채점 결과 계산 (O = 10점, X = 0점)
    List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
    int examScore = 0;
    for (int i = 0; i < scoreList.size(); i++) {
        if (scoreList.equals("O")) {
            examScore += 10;
        }
    }
%>
<p>채점 결과 점수 : <strong><%=examScore%></strong>점</p>

<%
    // 4. 나이 구하기
    String birthDay = "20010820";
    int age = calculateAge(birthDay);
%>
<p>생일이 <strong><%=birthDay%></strong>인 사람의 나이 : <strong><%=age%></strong>세</p>

</body>
</html>

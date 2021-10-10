<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
%><%@ page import="java.net.*, java.io.*"
%><%

    // 생성된 토큰 받음
    String g_recaptcha_response = request.getParameter("g-recaptcha-response");
    System.out.println(g_recaptcha_response);
    
    // 토큰과 보안키를 가지고 성공 여부를 확인 함
    HttpURLConnection conn = (HttpURLConnection) new URL("https://www.google.com/recaptcha/api/siteverify").openConnection();
    String params = "secret=6LftCXwcAAAAAPm8VzgycecTwUjkwD4rtTeJbxiQ" + "&response=" + g_recaptcha_response;
    conn.setRequestMethod("POST");
    conn.setDoOutput(true);
    DataOutputStream wr = new DataOutputStream(conn.getOutputStream());
    wr.writeBytes(params);
    wr.flush();
    wr.close();
    
    // 결과코드 확인(200 : 성공)
    int responseCode = conn.getResponseCode();
    StringBuffer responseBody = new StringBuffer();
    if (responseCode == 200) {
        
        // 데이터 추출
        BufferedInputStream bis = new BufferedInputStream(conn.getInputStream());
        BufferedReader reader = new BufferedReader(new InputStreamReader(bis));
        String line;
        while ((line = reader.readLine()) != null) {
            responseBody.append(line);
        }
        bis.close();
        
        // JSON으로 변환 하여야 하지만 기본 모듈에서 처리하기위하여 아래와 같이 진행 합니다
        if(responseBody.toString().indexOf("\"success\": true") > -1)
            out.println("인증 되었습니다...");
    }
    
%>
<html>
<head>
<script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer></script>
<title>google, reCAPTCHA - reCAPTCHA2 Type</title>
<script type="text/javascript">
    var correctCaptcha = function(response) {
        console.log();
    };
    var onloadCallback = function() {
        grecaptcha.render('html_element', {
            'sitekey' : '6LftCXwcAAAAAF31Nv3kU1hZ-CYVOKG9yr6RZkkl',
            'callback' : correctCaptcha
        });
    };
</script>
</head>
<body>
    <form action="" method="get">
        <div id="html_element"></div>
        <input type="submit" value="Submit">
    </form>
    <!-- JSON String 찍어보기 -->
    <%=responseBody != null ? responseBody.toString() : ""%>
</body>
</html>
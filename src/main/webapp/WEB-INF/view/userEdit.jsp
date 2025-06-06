<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.User" %>

<%
  // 로그인한 사용자 정보를 가져옴
  User user = (User) session.getAttribute("user");
  if (user == null) {
    response.sendRedirect("login.jsp");
    return;
  }
%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>개인정보 수정</title>
  <link rel="stylesheet" href="/assets/css/userEdit.css"> <!-- 필요하면 CSS 따로 연결 -->
</head>
<body>

<div class="form-box">
  <h1>개인정보 수정</h1>

  <form action="/update-user" method="post">
    <div class="row">
      <span>아이디</span>
      <input type="text" name="userid" value="<%= user.getUserid() %>" readonly />
    </div>

    <div class="row">
      <span>기존 비밀번호</span>
      <input type="password" name="currentPassword" placeholder="현재 비밀번호 입력" required />
    </div>

    <div class="row">
      <span>새 비밀번호</span>
      <input type="password" name="newPassword" placeholder="새 비밀번호 입력" />
    </div>

    <div class="row">
      <span>Email</span>
      <input type="email" name="email" value="<%= user.getEmail() %>" required />
    </div>

    <div class="row">
      <span>주소</span>
      <input type="text" name="address" value="<%= user.getAddress() %>" required />
    </div>

    <div class="row">
      <span>우편번호</span>
      <input type="text" name="postnum" value="<%= user.getPostnum() %>" required />
    </div>

    <div class="row">
      <span>전화번호</span>
      <input type="tel" name="tel" value="<%= user.getTel() %>" required />
    </div>

    <div class="row">
      <button type="submit" class="submit-btn">저장</button>
    </div>
  </form>
</div>

</body>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h3>JSTL out 출력객체 EL사용</h3>
 <c:out value="<p>문단 태그</p>"/>
 <hr>
 &lt;p&gt; 태그문 문단 태그

 <hr>
 <h3>JSTL 예외처리</h3>
 <!-- 
 	c:catch 안에서 예외가 발생하면 예외객체가 생성되고
 	예외객체 정보를 msg변수가 받는다
 	
 	catch(Exeption e)
  -->
 <c:catch var ="msg">
 name : <%= request.getParameter("name") %>
 <%
 	if(request.getParameter("name").equals("hong")){
 		out.print("당신의 이름은: " +request.getParameter("name"));
 	}
 %>
 </c:catch>
 <c:if test="${msg != null}">
 	<h3>예외발생</h3>
 	오류메시지 : ${msg}<br>
 </c:if>
 











</body>
</html>
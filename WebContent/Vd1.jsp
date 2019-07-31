<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Lập trình JsP</title>
<%-- Lập trình code hjava trong này nhé --%>
 <%! 
  int a =7; int b=6;
  int Cong(int a, int b){
	  return a+b;
  }
 %>

</head>
<body>
Tổng : <%=a %>+<%=b %>=<%=Cong(a,b)%>
</body>
</html>
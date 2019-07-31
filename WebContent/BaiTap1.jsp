<%@page import="controller.Controller"%>
<%@page import="model.infoMilk"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thông tin hãng sữa</title>
<%!
   ArrayList<infoMilk> arrayList = new ArrayList();
   Controller controller = new Controller("qlbansua");
   String sql ="select * from hang_sua";
%>
<%
    arrayList = controller.CRUDdatabase(sql, null, 4);
%>

</head>
<body>
<table border="1">
 <caption style="font-size: 40px; color: cyan">Thong Tin Hang Sua</caption>
 <tr>
 <th> Ma HS</th>
  <th> Ten hang sua </th>
   <th> Dia chi </th>
    <th> Dien Thoai</th>
     <th> Email</th>
 </tr>
<% for(int i=0;i<arrayList.size();i++){%>
   <tr>
	<td><%=arrayList.get(i).getCodeMilk() %></td> 
    <td><%=arrayList.get(i).getNameMilk() %></td> 
    <td><%=arrayList.get(i).getAddressMilk() %></td> 
    <td><%=arrayList.get(i).getPhoneMilk() %></td> 
    <td><%=arrayList.get(i).getEmailMilk() %></td> 
    </tr>
<%} %>


</table>
</body>
</html>
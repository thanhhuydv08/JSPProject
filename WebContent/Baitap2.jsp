<%@page import="controller2.Controller"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài tập 2</title>
<%! Connection connection;
    Statement statement ;
    ResultSet resultSet;
   String sql ="select * from khach_hang";
%>
<%
connection = new Controller().CSDL("qlbansua");
statement = connection.createStatement();
resultSet = statement.executeQuery(sql)  ;
%>
<link rel="stylesheet" type="text/css" href="css/bt2.css">
</head>
<body>
<table border="1"> 
<caption> Thông tin khách hàng </caption>
  <tr>
     <th>Ma kh</th>
     <th>Ten KH</th>
     <th>Gioi tính</th>
     <th>Dịa chỉ</th>
     <th> điện thoại</th>
      <th>Email</th>
  </tr>
<% while(resultSet.next()){ %>
   <tr>
   <td><%=resultSet.getString("ma_khach_hang") %></td>
    <td> <%=resultSet.getString("ten_khach_hang") %></td>
     <td><img  src="images/<%=resultSet.getBoolean("phai")?"nu.jpg":"nam.jpg" %>"> </td>
      <td><%=resultSet.getString("dia_chi") %></td>
       <td><%=resultSet.getString("dien_thoai") %></td>
        <td><%=resultSet.getString("email") %></td>
   
   </tr>
  
  
<%} %>
</table>
</body>
</html>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="controller2.Controller"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài tập 5</title>
<link rel="stylesheet" type="text/css" href="css/BT5.css">

<%!
	Connection connection;
	Statement stm;
	ResultSet rs = null;
	String sql = "select s.Ten_sua,h.Ten_hang_sua,l.Ten_loai,s.Trong_luong,s.Don_gia from sua s " 
			+"inner join hang_sua h on h.Ma_hang_sua=s.Ma_hang_sua "
			+"inner join loai_sua l on l.Ma_loai_sua=s.Ma_loai_sua";
	int soDongTrang=5, tongSoTrang, trang=1;
%>
<%
	if(rs == null){
		connection = new Controller().CSDL("qlbansua");
		stm = connection.createStatement();
		
		rs = stm.executeQuery(sql);
		rs.last();
		int tongSoDong = rs.getRow();
		tongSoTrang = tongSoDong/soDongTrang + (tongSoDong%soDongTrang!=0?1:0);
	}
	if(request.getParameter("trang")!=null)
		trang = Integer.parseInt(request.getParameter("trang"));
	int viTri = (trang-1)*5;
	rs = stm.executeQuery(sql+ " limit "+viTri+","+soDongTrang);
	int stt=viTri+1;
%>
</head>
<body>
<table border="1">
	<caption>THÔNG TIN SỮA</caption>
	<tr>
		<th>Số TT</th>
		<th>Tên sữa</th>
		<th>Hãng sữa</th>
		<th>Loại sữa</th>
		<th>Trọng lượng</th>
		<th>Đơn giá</th>
	</tr>
	<%while(rs.next()){ %>
		<tr>
			<td><%=stt++ %></td>
			<td><%=rs.getString("ten_sua") %></td>
			<td><%=rs.getString("ten_hang_sua") %></td>
			<td><%=rs.getString("ten_loai") %></td>
			<td><%=rs.getInt("trong_luong") %></td>
			<td><%=rs.getInt("don_gia") %></td>
		</tr>
	<%} %>
</table>
<p>
	<a href = "BT5_phantrang.jsp?trang=1">&lt;&lt;</a>
	<a href = "BT5_phantrang.jsp?trang=<%=trang-1<1?1:trang-1%>">&lt;</a>
	<%for(int i=1; i<=tongSoTrang; i++){ %>
		<a href="BT5_phantrang.jsp?trang=<%=i%>" "><%=i%></a>
	<%} %>
	
	<a href = "BT5_phantrang.jsp?trang=<%=trang+1<tongSoTrang?trang+1:tongSoTrang%>">&gt;</a>
	<a href = "BT5_phantrang.jsp?trang=<%=tongSoTrang %>">&gt;&gt;</a>
</p>


<script>
function myFunction(elmnt,clr) {
  elmnt.style.color = clr;
}
</script>
</body>
</html>
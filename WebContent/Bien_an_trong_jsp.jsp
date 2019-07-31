<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="controller2.Controller"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm loại sữa</title>
<%!


%>

<% 
Connection connection;
	String maLoai="", tenLoai="";
	if(request.getParameter("btnThem")!=null){
		maLoai = request.getParameter("txtMaLoai");
		tenLoai= request.getParameter("txtTenLoai");
		
		String sql = "insert into loai_sua(ma_loai_sua, ten_loai) values (?,?)";
		connection = new Controller().CSDL("qlbansua");
		PreparedStatement pst = connection.prepareStatement(sql);
		pst.setString(1,maLoai);
		pst.setString(2,tenLoai);
		pst.executeUpdate();
	}
%>
</head>
<body>
<form action="" method="get">
	Mã loại: <input type="text" name="txtMaLoai" value="<%=maLoai%>"/><br>
	Tên loại: <input type="text" name="txtTenLoai" value="<%=tenLoai%>"/><br>
	<input type="submit" name="btnThem" value="Thêm"/>
</form>
</body>
</html>
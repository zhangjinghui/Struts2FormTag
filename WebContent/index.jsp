<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*,com.zjh.struts2formtag.entity.*"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		List<City> list = new ArrayList<City>();
		list.add(new City(1, "AA"));
		list.add(new City(2, "BB"));
		list.add(new City(3, "CC"));
		list.add(new City(4, "DD"));
		request.setAttribute("citys", list);
	%>
	<s:debug></s:debug>
	<s:form action="User_login">
		<s:hidden name="id"></s:hidden>
		<br>
		<s:textfield name="username" label="Username"></s:textfield>
		<br>
		<s:password name="password" label="Password"></s:password>
		<br>
		<s:textarea name="desc" label="Desc"></s:textarea>
		<br>
		<s:checkbox name="married" label="Married"></s:checkbox>
		<s:radio name="gender" label="Gender"
			list="#{'1':'Male','0':'Female' }"></s:radio>
		<br>
		<s:checkboxlist name="city" label="City" list="#request.citys"
			listKey="cityId" listValue="cityName"></s:checkboxlist>
		<br>
		<s:select list="{11,12,13,14,15,16,17,18,19}" headerKey=""
			headerValue="请选择" name="age" label="Age">
			<s:optgroup label="20-30" list="#{21:21,22:22 }"></s:optgroup>
			<s:optgroup label="30-40" list="#{31:31,32:32 }"></s:optgroup>
		</s:select>
		<br>
		<s:submit></s:submit>
	</s:form>
</body>
</html>
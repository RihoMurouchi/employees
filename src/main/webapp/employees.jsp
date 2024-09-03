<%@page import="model.entity.*"%>
<%@page import="model.dao.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
List<AttendanceBean> attendanceList = (List) request.getAttribute("attendanceList");
UserBean user = (UserBean) session.getAttribute("user");
String error = (String) request.getAttribute("error");
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>勤怠一覧画面</title>
</head>

<body>
	<div class="wrapper">
		<!--main-->
		<main>
			<div class="main">
				<div class="main__box">
					<div class="main__search">
						<h2 class="main__listTitle">従業員一覧</h2>
						<br>
						<div class="main__searchButton">
							<form action="attendance-list" method="post">
								<label for="date"></label><br> <input type="date" name="date" id="date" required> <input
									class="main__button" type="submit" name="searchButton" value="検索"><br>
								</button>
							</form>
						</div>
					</div>
					<div class="main__listBox">
						<div class="main__errorMessage">
							<!-- 検索結果の表示 または一覧表示 -->
							<%
							if (employees == null) {
							%>

							<p class="err">
								<%=error%>
							</p>
							<%
							} else if (employees.size() == 0) {
							%>
							<p class="err">
								<%=error%>
							</p>
						</div>
						<div class="main__register">
							<form action="register-confirm" method="get">
								<input class="main__button" type="submit" name="button" value="勤怠登録"><br>
							</form>
							<form action="attendance-list" method="post">
								<input class="main__button" type="submit" name="button" value="勤怠一覧へ">
							</form>
							<%
							} else {
							%>
							<table>
								<thead>
									<tr>
										<th>従業員id</th>
										<th>従業員名(姓)</th>
										<th>従業員名(名)</th>
										<th>性別</th>
										<th>生年月日</th>
										<th>電話番号</th>
										<th>部署</th>
										<th>経験言語</th>
										<th>入社日</th>
									</tr>
								</thead>
								<tbody>
									<%
									for (EmployeeBean employee : employees) {
									%>
									<tr>
										<td><%=attendance.getId()%></td>
										<td><%=attendance.getLastName()%></td>
										<td><%=attendance.getfFrstName()%></td>
										<td><%=attendance.getGender()%></td>
										<td><%=attendance.getBirthDate()%></td>
										<td><%=attendance.getPhoneNumber()%></td>
										<td><%=attendance.getDepartmentId()%></td>
										<td><%=attendance.getLanguageId()%></td>
										<td><%=attendance.getHireDate()%></td>
										<!-- 編集と削除のリンク -->
										<td><a class="main__button" href="edit-attendance?id=<%=employees.getId()%>">詳細</a></td>
										<form action="delete-attendance-confirm" method="post">
											<td><button class="main__button" type="submit">削除</button></td> <input type="hidden" name="id"
												value="<%=employees.getId()%>">
										</form>
									</tr>
									<%
									}
									%>
									<%
									}
									%>
									</div>
								</tbody>
							</table>
						</div>
					</div>
				</div>
		</main>
		<!--footer-->
		<footer class="footer">
			<form action="menu" method="get">
				<input class="main__button" type="submit" name="button" value="メニュー画面へ">
			</form>
		</footer>
	</div>
</body>

</html>
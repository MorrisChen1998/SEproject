<%@ page contentType="text/html;charset=big5"%>
<%@ page import="defult.UserInfoBean"%>
<jsp:useBean id="userInfo" class="defult.UserInfoBean" scope="session" />

<html>
<head>
<title>Welcome</title>
<style>
input[type="button"] {
	border: 1px #7878FF solid;
	cursor: pointer;
	font-family: Microsoft JhengHei;
	font-weight: bold;
}

input[type="submit"] {
	border: 1px #7878FF solid;
	cursor: pointer;
	font-family: Microsoft JhengHei;
	font-weight: bold;
}
</style>
</head>
<body bgcolor="#FFFAF2">
	<table align="center" style="width: 1000px;">
		<tr>
			<td>
				<table style="width: 750px;">
					<tr>
						<td>
							<form method="post" action="main">
								<span style="float: left;"> <input type="button"
									value="��d" name="GetCardButton"> <input type="button"
									value="�ӤH���" name="Profile"> <input type="button"
									value="���p�]�w" name="Secrecy">
								</span>
							</form>
						</td>
						<td>
							<form method="post" action="main">
								<span style="float: right;"> <input type="button"
									value="����" name="HomePage"> <input type="button"
									value="���i��" name="Board"> <input type="button"
									value="�a�ڭ�" name="Family"><input type="hidden" name="action" value="logout"> <input
			type="submit" value="�n�X" name="logoutButton">
								</span>
							</form>
						</td>
					</tr>
				</table>
				<table style="width: 750px;">
					<tr>
						<td>
							<table
								style="border: 2px #7878FF solid; width: 332px; height: 455px"
								cellpadding="10" border='0' BGCOLOR=#FFFAF2>
								<tr style="width: 150px; height: 71px;">
									<td valign="middle"><img src="https://ppt.cc/fLreBx@.png"
										border="1" alt="PPT.cc�Y�ϪA��" title="PPT.cc�Y�ϪA��"
										style="width: 73px; height: 71px;"> <font size="4"
										face="�L�n������"> <b> <%
 	UserInfoBean user = (UserInfoBean) session.getAttribute("userInfo");
 	String name = user.getName();
 	out.println(name);
 %>
										</b>
									</font></td>
								</tr>
								<tr>
									<td><font size="4" face="�L�n������"> <b> <%
 	String mail = user.getName();
 	String institute = user.getInstitute();
 	String depart = user.getDepart();
 	String birthday = user.getBirthday();
 	out.println("�ͤ� : " + birthday + "<br>");
 	out.println("�H�c : " + mail + "<br>");
 	out.println("�ǰ| : " + institute + "<br>");
 	out.println("�t�� : " + depart + "<br>");
 %>
										</b>
									</font></td>
								</tr>
								<tr>
							</table>
						</td>
						<td>�ʺA��<br>�K���
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

</body>
</html>

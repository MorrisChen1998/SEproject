<%@ page language="java" contentType="text/html;charset=big5"%>
<%@ page import="controller.DBController"%>
<%@ page import="controller.Data"%>
<%@ page import="java.util.ArrayList"%>
<html>
<head>
<title>SignUp</title>
<style>
input[type="submit"] {
	border: 2px black solid;
	cursor: pointer;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	font-family: Microsoft JhengHei;
}

input[type="text"] {
	padding: 5px 15px;
	border: 2px black solid;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	font-family: Microsoft JhengHei;
}

input[type="password"] {
	padding: 5px 15px;
	border: 2px black solid;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	font-family: Microsoft JhengHei;
}

input[type="date"] {
	padding: 5px 15px;
	border: 2px black solid;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	font-family: Microsoft JhengHei;
}
input[type="email"] {
	padding: 5px 15px;
	border: 2px black solid;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	font-family: Microsoft JhengHei;
}
.demo1 {
	padding-top: 50px;
	text-align: center
}
</style>

</head>
<body bgcolor="#81F781" style="height: 960px;">
	<Form method="post" action="main" style="height: 960px;">
		<input type="hidden" name="action" value="authenticate">
		<center>
			<br> <br>
			<table BGCOLOR=#E8E8E8 BORDERCOLOR=##000000
				style="height: 540px; width: 960px">
				<center>
						<b><font size="6" face="�L�n������">SIGN UP</font></b>
				</center>
				<tr>
					<td width: 400 align="right">				
						<b><font size="2" face="�L�n������">Account name:</font></b>
						<input type="text" name="username" BGCOLOR="#F5F5F5"
							HTML_CTL="Text" maxLength="10" size="15"
							placeholder="��J6-10��^��r���μƦr" style="width: 175px;">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td width: 160>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td width: 400 align="left">
								
						<b><font size="2" face="�L�n������">Gender:</font></b>
						<input type="radio" id="male" name="gender" value="male" checked>
						<label for="male">Male</label>
						<input type="radio" id="female" name="gender" value="female">
						<label for="male">Female</label>						
					</td>		
				</tr>
				<tr>
					<td width: 400 align="right">				
						<b><font size="2" face="�L�n������">Password:</font></b>
						<input type="password" name="password" BGCOLOR="#F5F5F5"
							HTML_CTL="Text" maxLength="10" size="15" placeholder="��J6-20��^��r���μƦr"
							style="width: 175px;">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>			
					<td width: 160>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
						
					<td width: 400 align="left">			
						<b><font size="2" face="�L�n������">Birthday:</font></b>
						<input type="date" name="birthday">
					</td>		
				</tr>
				<tr>
					<td width: 400 align="right">				
						<b><font size="2" face="�L�n������">E-mail:</font></b>
								<input type="email" name="email"placeholder="XXX@gmail.com�BXXX@yahoo.com.tw">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>				
					<td width: 160>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
								
					<td width: 400 align="left">			
								<b><font size="2" face="�L�n������">Department:</font></b>
								<select name="department">
�@								<option value="CSIE">��T�u�{�t</option>
								<option value="ECE">�q�l�u�{�t</option>
								<option value="EE">�q���u�{�t</option>
								<option value="ECO">�g�٨t</option>
								</select>
					</td>		
				</tr>
				<tr>
					<td width: 400 align="right">				
						<b><font size="2" face="�L�n������">Real name:</font></b>
							<input type="text" name="RealName" BGCOLOR="#F5F5F5"
								HTML_CTL="Text" maxLength="10" size="15"
								placeholder="�ж�J�A���u��m�W" style="width: 175px;">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>				
					<td width: 160>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
						
					<td width: 400 align="left">
						<b><font size="2" face="�L�n������">Grade:</font></b>
						<select name="YourLocation">
�@						<option value="1">freshman</option>
						<option value="2">sophomore</option>
						<option value="3">junior</option>
						<option value="4">senior</option>
						</select>
					</td>		
				</tr>
				<tr>
					<td align="center" colspan=3>				
							<b><font size="2" face="�L�n������">Select your profile photo:</font></b>
								<input type="file" name="photo">
					</td>		
				</tr>			
				<tr>
					<td  align="center" colspan=3>				
								<input type=submit value="Sign up">
					</td>		
				</tr>
						
			</table>
		</center>
	</Form>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project_Glados_master.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
	<style>

	.div1 {float: left;}
	
	input[type=text]{
		height: 30px;
		width: 25%;
		border: none;
		background-color:DarkOrange;
		color: Black;
		}

	    input[type=password] {
	        height: 30px;
			width: 25%;
			border: none;
			background-color:DarkOrange;
			color: Black;
	    }
	</style>

<title>Project Glados Login Page</title>
</head>

<body style="background-color:#181818;">



<div class="div1">
        <img src="https://www.publicdomainpictures.net/pictures/260000/velka/portal.jpg" alt="Aperture Programming" width="150" height="150"/>
    </div>

	<font color="RoyalBlue">

	<div style="text-align:center; color:RoyalBlue">
	<h1>Aperture Programming</h1>
	<h2>Project Glados</h2>
	<h3>Login</h3>
	<br/>
	
	</div>

	<div style="text-align:right">
	<button class="button">Back to Main</button>
	</div>
	<br/>
	<br/>

	<form runat ="server">
		<div style="color:RoyalBlue">
		<label for="UserName">Username:</label>
		<br/>
		<asp:TextBox ID="Username"  placeholder="Username" runat = "server"></asp:TextBox>
		<br/>
		<br/>
		<label for="pW">Password:</label>
		<br/>
		<asp:TextBox  ID="txtPassword"  placeholder="Password" runat = "server" TextMode = "Password" ></asp:TextBox>
		<br/>
		<br/>
		<asp:Button ID ="BtnLogin" runat ="server" OnClick="BtnLogin_Click" Text ="Login" style ="background-color: DarkOrange; text-align:center; color: black; cursor: pointer; border: none;"/>
		<br/>
		<br/>
		<asp:Label ID = "lblErrorMessage" runat = "server"  Text = "incorrect user credentials" ForeColor ="White"></asp:Label>
		</div>
	</form>

</body>
</html>


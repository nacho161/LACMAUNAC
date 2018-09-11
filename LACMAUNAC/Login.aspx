<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LACMAUNAC.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>.:LACMA:.</title>
    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Stylesheets -->
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <!--online fonts-->
    <link href="//fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
</head>
<body>
    <h1>LACMA Login</h1>
    <div class="w3ls-login box">
    <img src="images/logo.png" alt="logo_img" />
    <!-- form starts here -->
    <form id="form1" runat="server">
        <div class="agile-field-txt">
            <asp:TextBox ID="userTextBox" runat="server" CssClass="textbox" placeholder="Usuario"></asp:TextBox>
        </div>
        <div class="agile-field-txt" runat="server">
            <asp:TextBox ID="passTextBox" runat="server" CssClass="textbox" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
				<div class="agile_label">
                    <asp:CheckBox ID="check3" runat="server" value="show password"/>
                    <asp:Label ID="Label1" runat="server" Text="Label" class="check">Recordarme</asp:Label>
                    <asp:Label ID="msjErrorLabel" runat="server" Text="Label"></asp:Label>
				</div>
		</div>
            <div class="w3ls-bot">
                <asp:Button ID="aceptarButton" runat="server" Text="Entrar" OnClick="aceptarButton_Click" />
			</div>
    </form>
    </div>
    <!--copyright-->
	<div class="copy-wthree">
		<p>© 2018 LACMA. Derechos Reservados.| Diseñado por
				<a>Jhohan y Saaibi</a></p>
	</div>
</body>
</html>

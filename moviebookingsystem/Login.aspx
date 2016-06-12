<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
   
       

 <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
 <div class="container-fluid">

<a class="navbar-brand" href="#"><img src="images/IMG-20150401-WA0003.jpg"
 style="height: 45px; width: 236px; top: 2px; line-height: normal; position: absolute; z-index: auto;" /></a>
  
  <div class="navbar-header navbar-right">
  <ul class="nav navbar-nav" nav-tabs>
  <li><a href="index.aspx">Home</a></li>
  <li><a href="aboutus.html">About us</a></li>
   <li><a href="booking.aspx">Booking</a></li>
  </ul>
  </div>
  </div>
  
</nav>
<br><br>
<br><br>

<div>
<asp:Label id="Label1" runat="server" Text="Username"></asp:Label>

&nbsp;&nbsp;&nbsp;<asp:TextBox id="TextBox1" runat="server"></asp:TextBox>

<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1">
</asp:RequiredFieldValidator>

<BR />

<asp:Label id="Label2" runat="server" Text="Password"></asp:Label>&nbsp;&nbsp;


<asp:TextBox id="TextBox2" runat="server" TextMode="Password"></asp:TextBox>&nbsp;&nbsp;

<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>

<br />
<br />

&nbsp;&nbsp; <asp:Button id="Button1" runat="server" Text="SignIn" OnClick="Button1_Click"></asp:Button>
    
    </div>
    </form>
</body>
</html>

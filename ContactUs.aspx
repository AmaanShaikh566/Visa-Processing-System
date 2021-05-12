<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Home_Page.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       
body
{
	margin:0;
	padding: 0;
	text-align: center;
	background-color:black;
	background-size: cover;
	font-family: 'Open Sans', sans-serif;
}

.title
{
	margin-top: 100px;
	color:#fff;
}

.title h1
{
	font-size: 32px;
	line-height: 10px;
}

form
{
	margin-top: 50px;
}

.l1
{
color: white;
}

.TextBox
{
	width:600px;
	background: transparent;
	border:none;
	outline:none;
	
	border-bottom: 1px solid gray;
	color: #fff;
	font-size: 18px;
	margin-bottom: 16px;
}

input
{
	height: 45px;
}
.logo {
       
	text-decoration: none;
            display: inline-block;
            color: white;
            padding: 5px 20px;
            border: 1px solid transparent;
            transition: 0.6s ease;
          margin-top: -70px;
            float: left;
            margin-left: 20px;
        }

            .logo:hover {
                background-color: #fff;
                color: #000;
            }

#B1
{
	background-color: #ff5722;
	border-color: transparent;
	color:#fff;
	font-size: 20px;
	letter-spacing: 2px;
	height:50px;
	margin-top: 20px;
	transition: 0.4s ease;
}
 ul
{
	float:right;
	list-style-type: none;
	margin-top: -70px;
}

ul li
{
	display: inline-block;
}

ul li a
{
	text-decoration: none;
	color:#fff;
	padding: 5px 20px;
	border:1px solid transparent;
	transition: 0.6s ease;
}

ul li a:hover
{
	background-color: #fff;
	color:#000;
}
#B1
{
	background-color: #f44336;
	cursor: pointer;
}

    </style>
</head>
<body>
	<a href="#" class="logo">Bucket List</a>
    <div class="anchor">
	  <ul>
                        
                        <li><a href="HomePage.html">Home</a></li>
                        <li><a href="Abouts.html">About</a></li>
                        <li><a href="HomeLogin.aspx">Login</a></li>
                        <li><a href="HomeSignup.aspx">Sign Up</a></li>
                        <li><a href="ContactUs.aspx">Contact Us</a></li>
                </ul>
        </div>
    <form id="form1" runat="server">
        <div class="title">
		<h1>CONTACT US</h1>
	</div>
        	<div class="box">
                <asp:TextBox runat="server" ID="T1" CssClass="TextBox" placeholder="Name" />   <br />
                <asp:TextBox runat="server" ID="T2" CssClass="TextBox" placeholder="Email"/> <br />
                <asp:TextBox runat="server" ID="T3" CssClass="TextBox" placeholder="Message" rows="5" TextMode="MultiLine"/><br />
                <asp:Button Text="Submit" runat="server" CssClass="TextBox" ID="B1" OnClick="B1_Click" />
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="l1"></asp:Label>
             </div>
    </form>
</body>
</html>

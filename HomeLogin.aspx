<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeLogin.aspx.cs" Inherits="Home_Page.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
{
	margin:0;
	padding:0;
	font-family: sans-serif;
	 background-image:url('Image/loginn.jpg'); 
    background-repeat:no-repeat;
     background-attachment: fixed;
    background-size: cover;
}
      
        .Box
        {
            width:280px;
	    
            position: absolute;
	top:35%;
	left: 50%;
	transform: translate(-50%,-50%);
	color: white;
        }
        .Box h1
{
	float: left;
	font-family:cursive;
	font-size: 40px;
	
	padding: 13px 0;
}

        .textbox
{
	width:100%;
	overflow: hidden;
	font-size: 20px;
	padding: 8px 0;
	margin: 8px 0;
	border-bottom: 1px solid #4caf50;
 border-color:black;
    
}


		.btn
{
	width:100%;
	background:none;
	border:2px solid white;
	color:antiquewhite;
	padding: 5px;
	font-size: 18px;
    font-weight: bold;
	cursor: pointer;
	margin: 12px 0;
}
		           ul {
                float: right;
                list-style-type: none;
                margin-top: 25px;
            }

                ul li {
                    display: inline-block;
                }

                    ul li a {
                        text-decoration: none;
                        color: #fff;
                        padding: 5px 20px;
                        border: 1px solid transparent;
                        transition: 0.6s ease;
                    }

                        ul li a:hover {
                            background-color: #fff;
                            color: #000;
                        }
                        .logo {
                text-decoration: none;
                display: inline-block;
                color: white;
                padding: 5px 20px;
                border: 1px solid transparent;
                transition: 0.6s ease;
                
                margin-top: 25px;
                float: left;
                margin-left:20px;
            }

                .logo:hover {
                    background-color: #fff;
                    color: #000;
                }
    </style>
</head>
<body>
                         <a href="#" class="logo">Bucket List</a>
						<ul>
						<li><a href="HomePage.html">Home</a></li>
                        <li><a href="Abouts.html">About</a></li>
                        <li><a href="HomeLogin.aspx">Login</a></li>
                        <li><a href="HomeSignup.aspx">Sign Up</a></li>
                        <li><a href="ContactUs.aspx">Contact Us</a></li>
                </ul>
	
	<form id="form1" runat="server">
        <div class="Box">
            <center>
                <h1>Login</h1>
            <asp:TextBox ID="T1" runat="server"  class="textbox" placeholder="Email ID"/><br />
            <asp:TextBox ID="T2" runat="server"  class="textbox" TextMode="Password" placeholder="Password" /><br />
            <asp:radiobutton text="User" GroupName="A" runat="server" ID="R1" />
                <asp:radiobutton text="Admin" GroupName="A" runat="server" ID="R2" />
                <asp:Button ID="B1" runat="server" Text="Login"  CssClass="btn" OnClick="B1_Click"/><br />
                <asp:RequiredFieldValidator ErrorMessage="Username Field Is Empty" ControlToValidate="T1" runat="server" ForeColor="Red" />
                <asp:RegularExpressionValidator ErrorMessage="Email ID Is Not Valid" ControlToValidate="T1" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"/>
                <asp:RequiredFieldValidator ErrorMessage="Password Field Is Empty" ControlToValidate="T1" runat="server" ForeColor="Red" />
           
                </center>
                </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeSignup.aspx.cs" Inherits="Home_Page.WebForm4" %>

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
	background-image:url('Image/Signup2.jpeg');
    background-repeat:no-repeat;
    background-attachment: fixed;
    background-size: cover;
}
      
.Box
{
    width:280px;
	position: absolute;
	top:45%;
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
	background:none;
	border:2px solid black;
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
    
                #B1
                {
                    background-color: #f44336;
	                cursor: pointer;
                   font-size:22px;
	              
                   
                }
                
</style>
</head>
<body>
     <form id="form1" runat="server">
	<a href="#" class="logo">Bucket List</a>
						<ul>
						<li><a href="HomePage.html">Home</a></li>
                        <li><a href="Abouts.html">About</a></li>
                        <li><a href="HomeLogin.aspx">Login</a></li>
                        <li><a href="HomeSignup.aspx">Sign Up</a></li>
                        <li><a href="ContactUs.aspx">Contact Us</a></li>
                </ul>
   
        <div class="Box">
            <h1>Sign Up</h1>
            <asp:TextBox ID="T1" runat="server"  class="textbox" placeholder="First Name"/><br />
            <asp:TextBox ID="T2" runat="server"  class="textbox" placeholder="Last Name"/><br />
            <asp:TextBox ID="T3" runat="server"  class="textbox" placeholder="Email ID"/><br />
            <asp:TextBox ID="T4" runat="server"  class="textbox" placeholder="Password" TextMode="Password"/><br />
            <asp:TextBox ID="T5" runat="server"  class="textbox" placeholder="Confirm Password" TextMode="Password"/><br />
            <asp:Button ID="B1" runat="server" Text="Sign Up"  CssClass="btn" OnClick="B1_Click" Height="50px" Width="285px"/>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeedBack.aspx.cs" Inherits="Home_Page.FeedBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap');

*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  list-style: none;
  text-decoration: none;
  font-family: 'Josefin Sans', sans-serif;
}

body{
   background-color: #f3f5f9;
}

.wrapper{
  display: flex;
  position: relative;
}

.wrapper .sidebar{
   width: 260px;
  height: 100%;
   background-color:#325670;
  padding: 30px 0px;
  position: fixed;
  background-repeat: no-repeat;
  background-position: center center;
      

            background-size: cover;
   background-image: url('Image/2.jpg');
   box-shadow: 0 16px 38px -12px rgba(0, 0, 0, 0.56), 0 4px 25px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.2);
}

.wrapper .sidebar h2{
  color: #fff;
  text-transform: uppercase;
  text-align: center;
  margin-bottom: 30px;
}

.wrapper .sidebar ul li{
  padding: 15px;
  border-bottom: 1px solid #bdb8d7;
  border-bottom: 1px solid rgba(0,0,0,0.05);
  border-top: 1px solid rgba(255,255,255,0.05);
}    
a:not([href]):not([tabindex]) {
  color: inherit;
  text-decoration: none;
}

a:not([href]):not([tabindex]):hover,
a:not([href]):not([tabindex]):focus {
  color: inherit;
  text-decoration: none;
}

a:not([href]):not([tabindex]):focus {
  outline: 0;
}


.wrapper .sidebar ul li a{
    color:white;
  display: block;
   background-color: transparent;
}

.wrapper .sidebar ul li a .fas{
  width: 25px;
}

.wrapper .sidebar ul li:hover{
  background-color: #594f8d;
}
    
.wrapper .sidebar ul li:hover a{
  color: #fff;
}
 



.wrapper .main_content{
  width: 100%;
  margin-left: 200px;
  text-align:center;
}

.wrapper .main_content .header{
 
  background: #fff;
  color: #717171;
    text-align:center;
    padding:15px;
  font-size:31px;
}

.wrapper .main_content .info{
  margin: 20px;
  color: #717171;
  line-height: 25px;
}
.textbox
{
     	background: transparent;
	width:30%;
	overflow: hidden;
	font-size: 20px;
	padding: 8px 0;
	margin: 8px 0;
	border-bottom: 1px solid #4caf50;
    border-color:black;
    
}
.B1
{
	color:black;
	margin: 12px 0;
    font-size:large;
    transition: 0.6s ease;   
    padding: 5px 20px;
    border: 1px solid white; 
}
::placeholder
{
    color:white;
}
.D1
{
    margin-top:30px;
    width:82%;
    left:50%;
    margin-left:230px;
    text-align:center;
}

.TextArea1
{
    background: transparent;
    width:60%;
    height: 199px;
    width: 357px;
    overflow: hidden;
	font-size: 20px;
	padding: 8px 0;
	margin: 8px 0;
	border-bottom: 1px solid #4caf50;
    border-color:black;
}

.main
{
    background-color:#325670;
}

h1
{
    color:white;
}
    </style>
</head>
<body>
    <div class="main">
    <form id="form1" runat="server">
        <div class="wrapper">
    <div class="sidebar">
        <h2>Bucket List</h2>
        <ul>
           
            <li><a href="Registration_Signup.aspx"><i class="fas fa-address-card"></i>Registration</a></li>
            <li><a href="Profile_User.aspx"><i class="fas fa-user"></i>Profile</a></li>
            <li><a href="Fee.aspx"><i class="fas fa-money-check-alt"></i>Fee</a></li>
            <li><a href="FeedBack.aspx"><i class="fas fa-comment-alt"></i>FeedBack</a></li>
            <li><a href="Appointment.aspx"><i class="fas fa-window-close"></i>Appointment</a></li>
            <li><a href="LogoutUser.aspx"><i class="fas fa-sign-out-alt"></i>Logout</a></li>
        </ul> 
        </div>
            </div>
         
              <div class="D1">
             <h1>FEEDBACK</h1>
             <asp:TextBox runat="server" ID="T1" class="textbox" placeholder="NAME"/><br />
             <asp:TextBox runat="server" ID="T2" class="textbox" placeholder="SUBJECT"/><br />
             <asp:TextBox runat="server" ID="T3" class="textbox" placeholder="EMAIL"/><br />
             <asp:TextBox TextMode="MultiLine" runat="server" ID="T4" CssClass="TextArea1" placeholder="TELL US ABOUT YOUR EXPERIENCE...." /><br />
             <asp:Button Text="SUBMIT" runat="server" class="B1" ID="BB" OnClick="BB_Click1" Height="46px" Width="360px"   />
             
             <br />
             <asp:Label ID="Label1" runat="server"></asp:Label>
             <br />
             
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
             
          </div>
      
    </form>
          </div>
</body>
</html>

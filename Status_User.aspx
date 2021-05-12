<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Status_User.aspx.cs" Inherits="Home_Page.Status_User" %>

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

.main
{
    background-color:#325670;
}
.D1
{
    margin-top:30px;
    width:82%;
    left:50%;
    margin-left:280px;
    text-align:center;
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
            <br />
            <h1>Sanction</h1>
            <br />
            <br />
            <br />
            
            <asp:Label ID="Label1" runat="server" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
           <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
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

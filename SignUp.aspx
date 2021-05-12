<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Home_Page.SignUp" %>

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





.main_content{
 
  margin-left: 200px;
   
    background-color:#325670;
    padding:300px;
}
.sidebar[data-background-color="black"] {
  background-color: #191919;
}
.main_content .h{
   
 
  color: white;
  text-align:center;
  
  font-size:35px;
}

.main_content .info{
    
  color: #717171;
  line-height: 25px;

}

.B1
{
     position: absolute;
      
        font-size: 23px;
      margin-right:520px;
        cursor: pointer;
            top: 345px;
            left: 720px;
            width: 194px;
        margin-top:25px;
      
            height: 38px;
            text-decoration: none;
                        color: black;
                        padding: 5px 20px;
                        border: 1px solid transparent;
                        transition: 0.6s ease;
        }

    </style>
</head>
   
<body>
    
       
    <form id="form1" runat="server">
    
       
<div class="wrapper">
    <div class="sidebar">
        <h2>Bucket List</h2>
        <ul>
            
            <li><a href="#"><i class="fas fa-address-card"></i>Registration</a></li>
            <li><a href="#"><i class="fas fa-user"></i>Profile</a></li>
            <li><a href="#"><i class="fas fa-money-check-alt"></i>Fee</a></li>
            <li><a href="#"><i class="fas fa-comment-alt"></i>FeedBack</a></li>
            <li><a href="#"><i class="fas fa-window-close"></i>Rescission</a></li>
            <li><a href="#"><i class="fas fa-sign-out-alt"></i>Logout</a></li>
        </ul> 
    
    </div>
    </div>
    <div class="main_content">
      <div class="h">&nbsp;&nbsp;&nbsp; Welcome
          <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></div>
          <br />
          <br />
          <br />
          <asp:Button ID="Button1" class="B1" runat="server" Text="Start" OnClick="Button1_Click" />
      
           
    </div>

 
          
    </form>

 
          
</body>
</html>

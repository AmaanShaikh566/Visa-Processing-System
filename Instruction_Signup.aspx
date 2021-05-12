<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Instruction_Signup.aspx.cs" Inherits="Home_Page.Instruction_Signup" %>

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
}

.wrapper .main_content .header{
 
  background: #fff;
  color: #717171;
  
  padding: 20px;
  font-size:31px;
}

details[open] summary ~ * {
  animation: open 0.3s ease-in-out;
}

@keyframes open {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
details summary::-webkit-details-marker {
  display: none;
}

details summary {
  width: 100%;
  padding: 0.5rem 0;
  border-top: 1px solid black;
  position: relative;
  cursor: pointer;
  font-size: 30px;
  font-weight: 300;
  list-style: none;
}

details summary:after {
  content: "+";
  color: black;
  position: absolute;
  font-size: 30px;
  line-height: 0;
  margin-top: 0.75rem;
  right: 0;
  font-weight: 200;
  transform-origin: center;
  transition: 200ms linear;
}
details[open] summary:after {
  transform: rotate(45deg);
  font-size: 2rem;
}
details summary {
  outline: 0;
}



        .main_content {
            background-color:#325670;
         
    margin-left: 200px;
  width:85.5%;
             padding:300px;
            
           
        }

        .main_content .h
        {
           position:absolute;
            margin-top:-295px;
            font-size:20px;
             color:white;
        }
        .main_content p {
            font-size: 0.95rem;
            margin-top:6px;
             text-align:left;
              display: inline-block;
              color:white;

}
        .main_content .PP
        {
            margin-top:-195px;
            margin-left:-180px;
            width:170%;
        }
        
        .Button1
        {
           border: 1px solid white;
            color: black;
             padding: 5px 20px; 
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
            
            <li><a href="Registration_Signup.aspx"><i class="fas fa-address-card"></i>Registration</a></li>
            <li><a href="#"><i class="fas fa-user"></i>Profile</a></li>
            <li><a href="#"><i class="fas fa-money-check-alt"></i>Fee</a></li>
            <li><a href="FeedBack.aspx"><i class="fas fa-comment-alt"></i>FeedBack</a></li>
            <li><a href="#"><i class="fas fa-window-close"></i>Rescission</a></li>
            <li><a href="LogoutUser.aspx"><i class="fas fa-sign-out-alt"></i>Logout</a></li>
        </ul> 
    </div>
    
      </div>
    
    
    <div class="main_content">
        <div class="h"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; INSTRUCTIONS </h1></div>
       
            <div class="PP">
          <p> The documents required for completing the eVisa application is indicated against each type of eVisa. 
              Please keep all these documents ready at hand before beginning to fill your eVisa application. 
              All documents including Business cards, Invitation letters etc. must be in English language, 
              failing which the application would be liable for rejection. 
              The entire process may take 10 to 15 minutes to complete the application and make the payment.
           </p>
            <p>
                Applicants must be fill eVisa application himself/herself and give correct information in each column and take responsibility 
                for the correctness of information provided.
            </p>
        <p>Types of Visa:-</p>
        <p>1) For e-Tourist Visa
Scanned Bio Page of the passport showing the Photograph and Details.
For short term courses, copy of letter from the institute/organization/hospital etc. concerned on its letter-head.
For voluntary work of short duration, copy of letter from the organization concerned on its letter-head.</p>
        <p>2) For e-Medical Visa
Scanned Bio Page of the passport showing the Photograph and Details.
Copy of Letter from the Hospital concerned in India on its letterhead which including the date / tentative date which admission have been suggested .</p>          
        <p>3) For e-Business Visa
Scanned Bio Page of the passport showing the Photograph and Details.
Copy of Business Card
Any letter of invitation if applicable from Indian parties which wish you conduct the business (optional).</p>
        <p >Photo Specifications:-</p>
        <p>Scanned Bio Page of the passport showing the Photograph and Details.
Format -PDF
Size : Minimum 10 KB ,Maximum 300 KB
Other document for Business/Medical Purpose
Format -PDF
Size : Minimum 10 KB ,Maximum 300 KB.</p>
        <p>&nbsp;</p><br />
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton1" runat="server"  GroupName="A"/>&nbsp;AGREE&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="A"/>&nbsp;DISAGREE <br />
            &nbsp;</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Submit" Width="121px" Height="37px" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;</p>
        </div>
       
    </div>
    </form>
</body>
</html>

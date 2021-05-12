<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration_Signup.aspx.cs" Inherits="Home_Page.Registration_Signup" %>

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

 
html
{
    scroll-behavior:smooth;
}


.wrapper .main_content{
  width: 100%;
  margin-left: 200px;
}

.wrapper .main_content .header{
 
  background: #fff;
  color: #717171;
  text-align: center;
  padding: 200px;
  font-size:31px;
}

.wrapper .main_content .info{
  margin: 20px;
  color: #717171;
  line-height: 25px;
}

.B1
{
     position: absolute;
        color: green;
        font-size: 20px;
      margin-right:520px;
        cursor: pointer;
            top: 232px;
            left: 749px;
            width: 99px;
        margin-top:25px;
        display: block;
         transition: 0.3s ease;
            height: 38px;
        }
.P1
{
    width:78%;
    left:50%;
    margin-left:280px;
    border-style:double;
    color:white;
    border-color:black;
}

.P2
{
       margin-top:20px;
  width:78%;
    left:50%;
    margin-left:280px;
    border-style:double;
    color:white;
     border-color:black;
}

.P3
{
       margin-top:20px;
  width:78%;
    left:50%;
    margin-left:280px;
    border-style:double;
    color:white;
     border-color:black;
}
.P4
{
       margin-top:20px;
  width:78%;
    left:50%;
    margin-left:280px;
    border-style:double;
    color:white;
     border-color:black;
}

.P5
{
      margin-top:20px;
  width:78%;
    left:50%;
    margin-left:280px;
    border-style:double;
    color:white;
     border-color:black;
}

.P6
{   margin-top:20px;
  width:78%;
    left:50%;
    margin-left:280px;
    border-style:double;
    color:white;
     border-color:black;
}
.P7
{
    margin-top:20px;
  width:78%;
    left:50%;
    text-align:center;
     margin-left:280px;
     color:white;
      border-color:black;
}
#B1
{
        font-size:large;
        color: black;
        padding: 5px 20px;
        border: 1px solid transparent;
        transition: 0.6s ease;
}
#B2
{
     font-size:large;
        color: black;
        padding: 5px 20px;
        border: 1px solid transparent;
        transition: 0.6s ease;
}

h1{
    margin-top:9px;
    text-align:center;
    color:white;
}

.TextBox
{
    border:none;
	outline:none;
	color: black;
	font-size: 18px;
	border: 1px solid white;
    background: transparent;
}
.main
{
    background-color:#325670;
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
       
      <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REGISTRATION</h1>
        <p>&nbsp;</p>
        <div class="P1">
            <h1>BASIC DETAILS</h1>
            <br />
&nbsp;PASSPORT TYPE: <asp:DropDownList runat="server" ID="T1" CssClass="TextBox">
    <asp:ListItem Text="" />            
    <asp:ListItem Text="Ordinary Passport" />
                <asp:ListItem Text="Official Passport" />
                <asp:ListItem Text="Diplomatic Passport" />
            </asp:DropDownList>&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="T1" ErrorMessage="Select an Item" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />
            &nbsp;NATIONALITY: <asp:DropDownList runat="server" CssClass="TextBox" ID="T2">
                <asp:ListItem Text="" />
                <asp:ListItem Text="Indian" />
                <asp:ListItem Text="Austrian" />
                <asp:ListItem Text="British" />
                <asp:ListItem Text="American" />
                <asp:ListItem Text="German" />
                <asp:ListItem Text="New Zealander" />
                <asp:ListItem Text="Vietnamese" />
            </asp:DropDownList>&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="T2" ErrorMessage="Select an Item" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />
            &nbsp;EMAIL: <asp:Label runat="server" CssClass="TextBox"  ID="T3"  /><br /><br />
            &nbsp;VISA SERVICE: <asp:DropDownList CssClass="TextBox" runat="server" ID="T4">
                <asp:ListItem Text="" />
                <asp:ListItem Text="Medical" />
                <asp:ListItem Text="Student" />
                 <asp:ListItem Text="Business" />
            </asp:DropDownList>&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="T4" ErrorMessage="Select an Item" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
         
        </div>
        <div class="P2">
                <h1>APPLICANT DETAILS</h1>
            &nbsp;<br />
&nbsp;FIRST NAME: <asp:TextBox runat="server" CssClass="TextBox" ID="T5"/>&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ControlToValidate="T5" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />
            &nbsp;LAST NAME: <asp:TextBox runat="server" CssClass="TextBox" ID="T6"/>&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator10" ControlToValidate="T6" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />
            &nbsp;GENDER: <asp:DropDownList runat="server" CssClass="TextBox" ID="T7">
                <asp:ListItem Text="" />
                <asp:ListItem Text="MALE" />
                <asp:ListItem Text="FEMALE" />
                 <asp:ListItem Text="TRANSGENDER" />
            </asp:DropDownList>&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ControlToValidate="T7" ErrorMessage="Select an Item" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />
            &nbsp;DATE OF BIRTH(DD/MM/YYYY): <asp:TextBox runat="server" CssClass="TextBox" ID="T8" />&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator11" ControlToValidate="T8" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />
            &nbsp;FATHER NAME: <asp:TextBox runat="server" CssClass="TextBox" ID="T9"/>&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator12" ControlToValidate="T9" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />
            &nbsp;MOTHER NAME: <asp:TextBox runat="server" CssClass="TextBox" ID="T10"/>&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator13" ControlToValidate="T10" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />
            &nbsp;CITY/TOWN: <asp:TextBox runat="server" CssClass="TextBox" ID="T11"/>&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator14" ControlToValidate="T11" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />
            &nbsp;COUNTRY: <asp:DropDownList runat="server" CssClass="TextBox" ID="T12">
                <asp:ListItem Text="" />
                <asp:ListItem Text="India" />
                <asp:ListItem Text="Bhutan" />
                 <asp:ListItem Text="China" />
                <asp:ListItem Text="Russia" />
                <asp:ListItem Text="Sri Lanka" />
            </asp:DropDownList>&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ControlToValidate="T12" ErrorMessage="Select an Item" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />
            &nbsp;RELIGION: <asp:DropDownList runat="server" CssClass="TextBox" ID="T13">
                <asp:ListItem Text="" />
                <asp:ListItem Text="HINDU" />
                <asp:ListItem Text="MUSLIM" />
                <asp:ListItem Text="SIKH" />
                <asp:ListItem Text="CHRISTIAN" />
                <asp:ListItem Text="OTHER" />
            </asp:DropDownList>&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ControlToValidate="T13" ErrorMessage="Select an Item" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            <br />
        </div>
        <div class="P3">
            <h1>PASSPORT DETAILS</h1>
            <p>&nbsp;</p>
            &nbsp;PASSPORT NUMBER: <asp:TextBox runat="server" CssClass="TextBox" ID="T14"/>&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator15" ControlToValidate="T14" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;PLACE OF ISSUE: <asp:TextBox runat="server" CssClass="TextBox" ID="T15"/>&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator16" ControlToValidate="T15" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;DATE OF ISSUE(DD/MM/YYYY): <asp:TextBox runat="server"  CssClass="TextBox" ID="T16" />  
    &nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator17" ControlToValidate="T16" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;COUNTRY OF ISSUE: <asp:DropDownList runat="server" ID="T17" CssClass="TextBox">
                <asp:ListItem Text="" />
                <asp:ListItem Text="India" />
                <asp:ListItem Text="Bhutan" />
                 <asp:ListItem Text="China" />
                <asp:ListItem Text="Russia" />
                <asp:ListItem Text="Sri Lanka" />
            </asp:DropDownList>&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ControlToValidate="T17" ErrorMessage="Select an Item" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />
        </div>

        <div class="P4">
            <h1>APPLICANT ADDRESS DETAILS</h1>
            <p>&nbsp;</p>
            &nbsp;HOUSE NUMBER: <asp:TextBox runat="server" ID="T18" CssClass="TextBox" />&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator18" ControlToValidate="T18" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;COUNTRY: <asp:DropDownList runat="server" CssClass="TextBox" ID="T19" >
                <asp:ListItem Text="" />
                <asp:ListItem Text="INDIA" />
                
            </asp:DropDownList>&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator19" ControlToValidate="T19" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;STATE: <asp:DropDownList runat="server" CssClass="TextBox" ID="T20" >
                <asp:ListItem Text="" />
                <asp:ListItem Text="Maharashtra" />
                <asp:ListItem Text="Goa" />
                <asp:ListItem Text="Gujarat" />
                <asp:ListItem Text="Kerala" />

                 </asp:DropDownList>
                &nbsp;&nbsp; <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator26" ControlToValidate="T20" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;CITY/TOWN:<asp:TextBox runat="server" CssClass="TextBox" ID="T21" />
                 
            &nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator21" ControlToValidate="T21" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;PIN CODE: <asp:TextBox runat="server" ID="T22" CssClass="TextBox"/>&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator22" ControlToValidate="T22" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;PHONE NUMBER: <asp:TextBox runat="server" ID="T23" CssClass="TextBox"/>&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator23" ControlToValidate="T23" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
        </div>
        <div class="P5">
            <h1>VISA DETAILS</h1>
            <p>&nbsp;</p>
            &nbsp;PLACE TO BE VISITED: <asp:TextBox runat="server" ID="T24" CssClass="TextBox"/>&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator24" ControlToValidate="T24" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;DURATION OF VISA: <asp:DropDownList runat="server" ID="T25" CssClass="TextBox">
                 <asp:ListItem Text="" />
                <asp:ListItem Text="15 Days" />
                <asp:ListItem Text="1 MONTH" />
                <asp:ListItem Text="3 MONTH" />
                <asp:ListItem Text="1 YEAR" />
            </asp:DropDownList>&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ControlToValidate="T25" ErrorMessage="Select an Item" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;NUMBER OF ENTRIES: <asp:TextBox runat="server" ID="T26" CssClass="TextBox"/>&nbsp;&nbsp;<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator25" ControlToValidate="T26" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
        </div>

        <div class="P6">
            <h1>DOCUMENTS</h1>
            <p>&nbsp;</p>
            &nbsp;UPLOAD PHOTO: <asp:FileUpload  runat="server" ID="T27" />
            <br />
            <br />
            &nbsp;UPLOAD DOCUMENTS: <asp:FileUpload  runat="server" ID="T28" />
            <br />
            <br />
            &nbsp;UPLOAD COVID TEST REPORT: <asp:FileUpload  runat="server" ID="T29" />
            <br />
            <br />
        </div>
            <div class="P7">
                <asp:Button Text="SUBMIT" runat="server" ID="B1" Width="171px" Height="41px" OnClick="B1_Click" />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" ></asp:Label>
                <br />
                <br />
                <br />
                <br />
                
                <br />
                <br />
                <br />
            </div>
    </form>
   
    <p>
        &nbsp;</p>
   </div>
</body>
</html>

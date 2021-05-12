<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_ContactUs.aspx.cs" Inherits="Home_Page.Admin_ContactUs" %>

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
   background-color:#DAA520;
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
   background-image: url('Image/Admin4.jpg');
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
    background-color:#DAA520;
}
.D1
{
    margin-top:30px;
    width:78%;
    left:50%;
    margin-left:280px;
    text-align:center;
}
.RowStyle {
  height: 50px;
}
.AlternateRowStyle {
  height: 50px;
}
.HeaderStyle {
  height: 50px;
}

.GridView1
{
    margin-top:30px;
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
           
           
            <li><a href="Date_Fee_Approval.aspx"><i class="fas fa-user"></i>Appointment Approval</a></li>
            <li><a href="Admin_FeedBack2.aspx"><i class="fas fa-money-check-alt"></i>FeedBack Details</a></li>
            <li><a href="Admin_ContactUs.aspx"><i class="fas fa-comment-alt"></i>Contact Us</a></li>
            <li><a href="Admin_Logout.aspx"><i class="fas fa-sign-out-alt"></i>Logout</a></li>
        </ul> 
        </div>
            </div>
           <div class="D1">
               <center>
               <h1>CONTACT US VIEW</h1>
               <br />
               <br />
                    <br />
               <asp:GridView runat="server"  DataKeyNames="emailid" DataSourceID="SqlDataSource1"  Height="70%" Width="75%" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" >
                   <Columns>
                       <asp:BoundField DataField="name" HeaderText="NAME" SortExpression="name" />
                       <asp:BoundField DataField="emailid" HeaderText="EMAIL ID" ReadOnly="True" SortExpression="emailid" />
                       <asp:BoundField DataField="msg" HeaderText="MESSAGE" SortExpression="msg" />
                   </Columns>
                   <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                   <rowstyle cssclass="RowStyle" BackColor="White" /> 
                     <FooterStyle BackColor="#CCCCCC" />
                     <headerstyle cssclass="HeaderStyle" BackColor="#800000" Font-Bold="True" ForeColor="White" />
                 <alternatingrowstyle cssclass="AlternateRowStyle" />
                   <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                   <SortedAscendingCellStyle BackColor="#F1F1F1" />
                   <SortedAscendingHeaderStyle BackColor="#808080" />
                   <SortedDescendingCellStyle BackColor="#CAC9C9" />
                   <SortedDescendingHeaderStyle BackColor="#383838" />
               </asp:GridView>
                   <br />
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ContactUs %>" SelectCommand="SELECT * FROM [contactus] ORDER BY [emailid]"></asp:SqlDataSource>
                   
               </center>
                    
           </div>
    </form>
          </div>
</body>
</html>

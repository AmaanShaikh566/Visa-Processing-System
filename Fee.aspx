<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fee.aspx.cs" Inherits="Home_Page.Fee" %>

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
 
.main
{
    background-color:#325670;
}
 
.p1
{
     width:78%;
    left:50%;
    margin-left:280px;
    text-align:center;
    color:white;
    border-color:black;
    height:615px;
    margin-top:40px;

}

#B1
{
    font-size:large;
        color: black;
        padding: 5px 20px;
        border: 1px solid transparent;
        transition: 0.6s ease;
}

#B3
{
    font-size:large;
        color: black;
        padding: 5px 20px;
        border: 1px solid transparent;
        transition: 0.6s ease;
}

#B4
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
         margin-top:18px;
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

.TextBox
{
border:none;
	outline:none;
	color: black;
	font-size: 18px;
	border: 1px solid white;
    background: transparent;
    margin-top:18px;
}
h1
{
    margin-top:40px;
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
       
        <div class="p1">
            <h1>FEE PAYMENT</h1>
            <br />
            <br />
            Dear, <asp:Label ID="Label1" runat="server" />&nbsp;<asp:Label ID="Label2" runat="server" /> Please Check The Payment Status Below<br />
            <br />
            <asp:Button Text="PAY FEES" runat="server" ID="B1" OnClick="B1_Click"  />&nbsp;&nbsp;<asp:Button Text="VIEW STATUS" runat="server" ID="B3" OnClick="B3_Click"  />
            <br />
            <br />
            <div>
             <br />
                <br />
              <asp:MultiView  ID="Multiview1" runat="server">
            <asp:View  ID="view1" runat="server">
            <table>
         
                <tr>
                    <td>Enter Full Name:<asp:TextBox ID="TextBox1" runat="server" CssClass="TextBox" />
                    </td>
                    <td>Enter Card Number:<asp:TextBox ID="TextBox2" runat="server" CssClass="TextBox" />
                    </td>
                    <td>Enter CVV:<asp:TextBox ID="TextBox3" runat="server" CssClass="TextBox" />
                    </td>
                    <td>Enter Card Expiry Date:<asp:TextBox ID="TextBox4" runat="server" CssClass="TextBox" />
                    </td>
                </tr>
           
            </table>
                  <br />
                <br />
                  Amount:<asp:Label ID="Label3" runat="server" />    
                <br />
                <asp:Button Text="Submit" ID="B2" runat="server" OnClick="B2_Click" />
                <br />
                <br />
                <asp:Label ID="Label4" runat="server"></asp:Label>
                <br />
        </asp:View>
                 
                  <asp:View runat="server" ID="view2">
                     <br />
                      <br />
                      <center>
                      <asp:GridView runat="server" ID="GridView1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="4px" width="80%" CellPadding="4"  CellSpacing="4" ForeColor="Black"  AutoGenerateColumns="False" >
                          <rowstyle cssclass="RowStyle" />
                          <headerstyle cssclass="HeaderStyle" />
                          <alternatingrowstyle cssclass="AlternateRowStyle" />
                          <FooterStyle BackColor="#CCCCCC" />
                          <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                          <RowStyle BackColor="White" />
                          <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                          <SortedAscendingCellStyle BackColor="#F1F1F1" />
                          <SortedAscendingHeaderStyle BackColor="#808080" />
                          <SortedDescendingCellStyle BackColor="#CAC9C9" />
                          <SortedDescendingHeaderStyle BackColor="#383838" />
                           <Columns>  
                <asp:BoundField DataField="eid" HeaderText="EMAIL ID"/>  
                <asp:BoundField DataField="fname" HeaderText="FIRST NAME"/>  
                <asp:BoundField DataField="lname" HeaderText="LAST NAME"/>  
                <asp:BoundField DataField="amt" HeaderText="AMOUNT"/>  
                <asp:BoundField DataField="status" HeaderText="STATUS"/>  
            </Columns> 
                      </asp:GridView>
                          <br />
                          <br />
                     <asp:button text="PRINT RECIEPT" runat="server" ID="B4" OnClick="B4_Click"/>
                      
                      </center>
                  </asp:View>
              
              
              </asp:MultiView>
                
            
            
            
            </div>
        </div>
      
        </form>
              </div>
</body>
</html>

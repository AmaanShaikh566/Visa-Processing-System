<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintBill.aspx.cs" Inherits="Home_Page.PrintBill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .RowStyle {
  height: 50px;
}
.AlternateRowStyle {
  height: 50px;
}
.HeaderStyle {
  height: 50px;
}
    </style>
</head>
<body onload="window.print();">
	<form id="form1" runat="server">
    <table border='1' align="center" width="80%">
		<tr>
			<td colspan="2" align="center">
		<br/>
			<b>BucketList</b><br/>
			<b>Visa Management </b>
				   <br/>
				<b>PAYMENT RECEIPT</b>
				<br />
			
		
			</td>	
		</tr>
	</table>
    &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <div style="margin-left: 170px">
            <asp:GridView runat="server" ID="GridView1" width="85%" AutoGenerateColumns="False" >
                <rowstyle cssclass="RowStyle" />
                          <headerstyle cssclass="HeaderStyle" />
                          <alternatingrowstyle cssclass="AlternateRowStyle" />
                <Columns>
                    <asp:BoundField DataField="eid" HeaderText="EMAIL ID"/>
                    <asp:BoundField DataField="fname" HeaderText="FIRST NAME"/>
                    <asp:BoundField DataField="lname" HeaderText="LAST NAME"/>
                    <asp:BoundField DataField="amt" HeaderText="AMOUNT"/>
                    <asp:BoundField DataField="status" HeaderText="STATUS"/>
                </Columns>
            </asp:GridView>
        </div>
        <a href="Fee.aspx">Back</a>
		</form>
</body>
</html>

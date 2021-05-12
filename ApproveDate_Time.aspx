<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApproveDate_Time.aspx.cs" Inherits="Home_Page.ApproveDate_Time" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
      .RowStyle {
  height: 40px;
}
.AlternateRowStyle {
  height: 40px;
}
.HeaderStyle {
  height: 40px;
}

.GridView1
{
    margin-top:30px;
}
         </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div>
            <h1>DATE TIME APPROVAL</h1>
            <br />
            <br />
            <asp:gridview runat="server" Height="70%" Width="75%" AutoGenerateColumns="False" DataKeyNames="eid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="eid" HeaderText="EMAIL ID" ReadOnly="True" SortExpression="eid" />
                    <asp:BoundField DataField="fname" HeaderText="FIRST NAME" SortExpression="fname" />
                    <asp:BoundField DataField="lname" HeaderText="LAST NAME" SortExpression="lname" />
                    <asp:BoundField DataField="amt" HeaderText="AMOUNT" SortExpression="amt" />
                    <asp:BoundField DataField="datee" HeaderText="DATE" SortExpression="datee" />
                    <asp:BoundField DataField="timee" HeaderText="TIME" SortExpression="timee" />
                </Columns>
                 <rowstyle cssclass="RowStyle" /> 
                <headerstyle cssclass="HeaderStyle" />
                 <alternatingrowstyle cssclass="AlternateRowStyle" />
            </asp:gridview>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Fee %>" SelectCommand="SELECT fees.eid, fees.fname, fees.lname, fees.amt, app.datee, app.timee FROM app INNER JOIN fees ON app.eid = fees.eid WHERE (app.eid = @eid)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="eid" QueryStringField="eid" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <asp:button text="BACK" runat="server" ID="B1" OnClick="B1_Click" />&nbsp;&nbsp;
            <asp:button text="APPROVE" runat="server" ID="B2" OnClick="B2_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" ></asp:Label>
        </div>
            </center>
    </form>
</body>
</html>

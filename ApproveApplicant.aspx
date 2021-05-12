<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApproveApplicant.aspx.cs" Inherits="Home_Page.ApproveApplicant" %>

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
        <div class="main">
           
            <center><h1>USER DETAILS</h1>
                <h2>BASIC DETAILS</h2>
            <asp:GridView runat="server" ID="GridView1" Height="70%" Width="75%" AutoGenerateColumns="False" DataKeyNames="eid" DataSourceID="SqlDataSource1">
             
                <Columns>
                    <asp:BoundField DataField="pass_type" HeaderText="PASSPORT TYPE" SortExpression="pass_type" />
                     <asp:BoundField DataField="nation" HeaderText="NATIONALITY" SortExpression="nation"  />
                     <asp:BoundField DataField="eid" HeaderText="EMAIL ID" ReadOnly="True" SortExpression="eid" />
                    <asp:BoundField  DataField="visa" HeaderText="VISA TYPE" SortExpression="visa" />
                </Columns>
                     <rowstyle cssclass="RowStyle" />
                 <headerstyle cssclass="HeaderStyle" />
                 <alternatingrowstyle cssclass="AlternateRowStyle" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [pass_type], [nation], [eid], [visa] FROM [register] WHERE ([eid] = @eid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="eid" QueryStringField="eid" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </center>
        <center>
        
         <h2>APPLICANT DETAILS</h2>
        <asp:GridView runat="server" ID="GridView2" Height="70%" Width="75%" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="f_name" HeaderText="FIRST NAME" SortExpression="f_name" />
                <asp:BoundField DataField="l_name" HeaderText="LAST NAME" SortExpression="l_name" />
                <asp:BoundField DataField="gender" HeaderText="GENDER" SortExpression="gender" />
                <asp:BoundField DataField="DOB" HeaderText="DATE OF BIRTH" SortExpression="DOB" />
                <asp:BoundField DataField="father" HeaderText="FATHER NAME" SortExpression="father" />
                <asp:BoundField DataField="mother" HeaderText="MOTHER NAME" SortExpression="mother" />
                <asp:BoundField DataField="city" HeaderText="CITY" SortExpression="city" />
                <asp:BoundField DataField="country" HeaderText="COUNTRY" SortExpression="country" />
                <asp:BoundField DataField="religion" HeaderText="RELIGION" SortExpression="religion" />
            </Columns>
              <rowstyle cssclass="RowStyle" />
                 <headerstyle cssclass="HeaderStyle" />
                 <alternatingrowstyle cssclass="AlternateRowStyle" />

        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [f_name], [l_name], [gender], [DOB], [father], [mother], [city], [country], [religion] FROM [register] WHERE ([eid] = @eid)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="eid" QueryStringField="eid" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </center>

        <center>
            <h2>PASSPORT DETAILS</h2>
            <asp:gridview runat="server" ID="GridView3" Height="70%" Width="75%" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="pass_no" HeaderText="PASSPORT NUMBER" SortExpression="pass_no" />
                    <asp:BoundField DataField="place_issue" HeaderText="PLACE OF ISSUE" SortExpression="place_issue" />
                    <asp:BoundField DataField="date_issue" HeaderText="DATE OF ISSUE" SortExpression="date_issue" />
                    <asp:BoundField DataField="country_issue" HeaderText="COUNTRY OF ISSUE" SortExpression="country_issue" />
                </Columns>
                <rowstyle cssclass="RowStyle" />
                 <headerstyle cssclass="HeaderStyle" />
                 <alternatingrowstyle cssclass="AlternateRowStyle" />
            </asp:gridview>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [pass_no], [place_issue], [date_issue], [country_issue] FROM [register] WHERE ([eid] = @eid)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="eid" QueryStringField="eid" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </center>
        
        <center>
            <h2>APPLICANT ADDRESS DETAILS</h2>
            <asp:gridview runat="server" ID="GridView4" Height="70%" Width="75%" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="house_no" HeaderText="HOUSE NUMBER" SortExpression="house_no" />
                    <asp:BoundField DataField="country_a" HeaderText="COUNTRY" SortExpression="country_a" />
                    <asp:BoundField DataField="state_a" HeaderText="STATE" SortExpression="state_a" />
                    <asp:BoundField DataField="city_a" HeaderText="CITY" SortExpression="city_a" />
                    <asp:BoundField DataField="pincode" HeaderText="PINCODE" SortExpression="pincode" />
                    <asp:BoundField DataField="p_no" HeaderText="PHONE NUMBER" SortExpression="p_no" />
                </Columns>
                  <rowstyle cssclass="RowStyle" />
                 <headerstyle cssclass="HeaderStyle" />
                 <alternatingrowstyle cssclass="AlternateRowStyle" />
            </asp:gridview>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [house_no], [country_a], [state_a], [city_a], [pincode], [p_no] FROM [register] WHERE ([eid] = @eid)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="eid" QueryStringField="eid" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </center>

        <center>
            <h2>VISA DETAILS</h2>
            <asp:gridview runat="server" Height="70%" Width="75%" AutoGenerateColumns="False" DataSourceID="SqlDataSource5">
                   
                   <Columns>
                       <asp:BoundField DataField="place_visit" HeaderText="PLACE TO VISIT" SortExpression="place_visit" />
                       <asp:BoundField DataField="duration_visa" HeaderText="DURATION" SortExpression="duration_visa" />
                       <asp:BoundField DataField="no_of_entry" HeaderText="NUMBER OF ENTRIES" SortExpression="no_of_entry" />
                   </Columns>
                <rowstyle cssclass="RowStyle" /> 
                <headerstyle cssclass="HeaderStyle" />
                 <alternatingrowstyle cssclass="AlternateRowStyle" />

            </asp:gridview>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [place_visit], [duration_visa], [no_of_entry] FROM [register] WHERE ([eid] = @eid)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="eid" QueryStringField="eid" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </center>

        <center>
            <h2>DOCUMENTS</h2>
            <asp:gridview runat="server" Height="70%" Width="75%" AutoGenerateColumns="False" DataSourceID="SqlDataSource6">
                <rowstyle cssclass="RowStyle" /> 
                <Columns>
                    <asp:ImageField DataImageUrlField="photos" HeaderText="PHOTOS" ></asp:ImageField>
                   <asp:ImageField DataImageUrlField="documents" HeaderText="DOCUMENTS" ></asp:ImageField>
                    <asp:ImageField DataImageUrlField="covid" HeaderText="COVID REPORT"></asp:ImageField>
                   
                </Columns>
                <headerstyle cssclass="HeaderStyle" />
                 <alternatingrowstyle cssclass="AlternateRowStyle" />
            </asp:gridview>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [photos], [documents], [covid] FROM [register] WHERE ([eid] = @eid)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="eid" QueryStringField="eid" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </center>
        <center>
            <br />
            <asp:button text="BACK" runat="server" ID="B1" OnClick="B1_Click"/>&nbsp;&nbsp;
            <asp:button text="APPROVE" runat="server" ID="B2" OnClick="B2_Click"/>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" ></asp:Label>
            <br />
            <br />
            <br />
        </center>
    </form>
</body>
</html>

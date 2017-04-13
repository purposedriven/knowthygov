<%@ Page Language="VB" AutoEventWireup="false" CodeFile="GovEvents.aspx.vb" Inherits="GovEvents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
            <asp:BoundField DataField="Start_Date" HeaderText="Start_Date" SortExpression="Start_Date" />
            <asp:BoundField DataField="Start_Time" HeaderText="Start_Time" SortExpression="Start_Time" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="URL" HeaderText="URL" SortExpression="URL" />
        </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ktgdbConnectionString %>" SelectCommand="SELECT [Subject], [Start Date] AS Start_Date, [Start Time] AS Start_Time, [Description], [Location], [URL] FROM [GovEvents2]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="GovEvents1" runat="server"></asp:SqlDataSource>
    </form>

</body>
</html>

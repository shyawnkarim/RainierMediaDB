<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Follow Up.aspx.cs" Inherits="Proto1.Follow_Up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:LinkButton ID="LinkButton1" runat="server">HOME</asp:LinkButton>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CommunicationID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="CommunicationType" HeaderText="CommunicationType" SortExpression="CommunicationType" />
                <asp:BoundField DataField="Outcome" HeaderText="Outcome" SortExpression="Outcome" />
                <asp:BoundField DataField="CommunicationDate" HeaderText="CommunicationDate" SortExpression="CommunicationDate" />
                <asp:BoundField DataField="CommunicationTime" HeaderText="CommunicationTime" SortExpression="CommunicationTime" />
                <asp:BoundField DataField="FollowUp" HeaderText="FollowUp" SortExpression="FollowUp" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Rainier MediaConnectionString9 %>" DeleteCommand="DELETE FROM [Communications] WHERE [CommunicationID] = @CommunicationID" InsertCommand="INSERT INTO [Communications] ([CommunicationType], [Outcome], [CommunicationDate], [CommunicationTime], [FollowUp], [AgentID], [ContactID]) VALUES (@CommunicationType, @Outcome, @CommunicationDate, @CommunicationTime, @FollowUp, @AgentID, @ContactID)" ProviderName="<%$ ConnectionStrings:Rainier MediaConnectionString9.ProviderName %>" SelectCommand="SELECT [CommunicationID], [CommunicationType], [Outcome], [CommunicationDate], [CommunicationTime], [FollowUp], [AgentID], [ContactID] FROM [Communications]" UpdateCommand="UPDATE [Communications] SET [CommunicationType] = @CommunicationType, [Outcome] = @Outcome, [CommunicationDate] = @CommunicationDate, [CommunicationTime] = @CommunicationTime, [FollowUp] = @FollowUp, [AgentID] = @AgentID, [ContactID] = @ContactID WHERE [CommunicationID] = @CommunicationID">
            <DeleteParameters>
                <asp:Parameter Name="CommunicationID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CommunicationType" Type="String" />
                <asp:Parameter Name="Outcome" Type="String" />
                <asp:Parameter DbType="Date" Name="CommunicationDate" />
                <asp:Parameter Name="CommunicationTime" Type="String" />
                <asp:Parameter DbType="Date" Name="FollowUp" />
                <asp:Parameter Name="AgentID" Type="Int32" />
                <asp:Parameter Name="ContactID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CommunicationType" Type="String" />
                <asp:Parameter Name="Outcome" Type="String" />
                <asp:Parameter DbType="Date" Name="CommunicationDate" />
                <asp:Parameter Name="CommunicationTime" Type="String" />
                <asp:Parameter DbType="Date" Name="FollowUp" />
                <asp:Parameter Name="AgentID" Type="Int32" />
                <asp:Parameter Name="ContactID" Type="Int32" />
                <asp:Parameter Name="CommunicationID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>

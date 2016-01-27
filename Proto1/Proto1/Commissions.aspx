<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Commissions.aspx.cs" Inherits="Proto1.Commissions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:LinkButton ID="LinkButtonCommHome" runat="server" OnClick="LinkButtonCommHome_Click" OnClientClick="doPostback" PostBackUrl="~/Navigation.aspx">HOME</asp:LinkButton>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="Panel1" runat="server" Height="186px">
            <asp:Panel ID="Panel2" runat="server" Height="43px" style="margin-top: 0px">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PolicyID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="PolicyNumber" HeaderText="PolicyNumber" SortExpression="PolicyNumber" />
                        <asp:BoundField DataField="Carrier" HeaderText="Carrier" SortExpression="Carrier" />
                        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                        <asp:BoundField DataField="Commissions" HeaderText="Commissions" SortExpression="Commissions" />
                        <asp:BoundField DataField="CarrierID" HeaderText="CarrierID" SortExpression="CarrierID" />
                        <asp:BoundField DataField="Subscribers" HeaderText="Subscribers" SortExpression="Subscribers" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Rainier MediaConnectionString8 %>" DeleteCommand="DELETE FROM [Policies] WHERE [PolicyID] = @PolicyID" InsertCommand="INSERT INTO [Policies] ([ContactID], [PolicyNumber], [Carrier], [Type], [Commissions], [CarrierID], [Subscribers]) VALUES (@ContactID, @PolicyNumber, @Carrier, @Type, @Commissions, @CarrierID, @Subscribers)" ProviderName="<%$ ConnectionStrings:Rainier MediaConnectionString8.ProviderName %>" SelectCommand="SELECT [PolicyID], [ContactID], [PolicyNumber], [Carrier], [Type], [Commissions], [CarrierID], [Subscribers] FROM [Policies]" UpdateCommand="UPDATE [Policies] SET [ContactID] = @ContactID, [PolicyNumber] = @PolicyNumber, [Carrier] = @Carrier, [Type] = @Type, [Commissions] = @Commissions, [CarrierID] = @CarrierID, [Subscribers] = @Subscribers WHERE [PolicyID] = @PolicyID">
                    <DeleteParameters>
                        <asp:Parameter Name="PolicyID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ContactID" Type="Int32" />
                        <asp:Parameter Name="PolicyNumber" Type="String" />
                        <asp:Parameter Name="Carrier" Type="String" />
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="Commissions" Type="Decimal" />
                        <asp:Parameter Name="CarrierID" Type="Int32" />
                        <asp:Parameter Name="Subscribers" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ContactID" Type="Int32" />
                        <asp:Parameter Name="PolicyNumber" Type="String" />
                        <asp:Parameter Name="Carrier" Type="String" />
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="Commissions" Type="Decimal" />
                        <asp:Parameter Name="CarrierID" Type="Int32" />
                        <asp:Parameter Name="Subscribers" Type="Int32" />
                        <asp:Parameter Name="PolicyID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </asp:Panel>
        </asp:Panel>
        <br />
&nbsp;</div>
    </form>
</body>
</html>

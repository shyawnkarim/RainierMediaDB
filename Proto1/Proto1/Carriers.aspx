<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Carriers.aspx.cs" Inherits="Proto1.Carriers_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:LinkButton ID="LinkButton1" runat="server">HOME</asp:LinkButton>
    
    </div>
        <asp:Panel ID="Panel1" runat="server" Height="382px" style="margin-top: 13px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CarrierID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="RepFirstName" HeaderText="Representative" SortExpression="RepFirstName" />
                    <asp:BoundField DataField="RepLastName" SortExpression="RepLastName" />
                    <asp:BoundField DataField="BusPhone" HeaderText="BusPhone" SortExpression="BusPhone" />
                    <asp:BoundField DataField="CellPhone" HeaderText="Cell Phone" SortExpression="CellPhone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Rainier MediaConnectionString2 %>" DeleteCommand="DELETE FROM [Carriers] WHERE [CarrierID] = @CarrierID" InsertCommand="INSERT INTO [Carriers] ([CarrierName], [Street], [City], [CarrierState], [Zip], [RepLastName], [BusPhone], [CellPhone], [Email], [RepFirstName]) VALUES (@CarrierName, @Street, @City, @CarrierState, @Zip, @RepLastName, @BusPhone, @CellPhone, @Email, @RepFirstName)" ProviderName="<%$ ConnectionStrings:Rainier MediaConnectionString2.ProviderName %>" SelectCommand="SELECT [CarrierID], [CarrierName], [Street], [City], [CarrierState], [Zip], [RepLastName], [BusPhone], [CellPhone], [Email], [RepFirstName] FROM [Carriers]" UpdateCommand="UPDATE [Carriers] SET [CarrierName] = @CarrierName, [Street] = @Street, [City] = @City, [CarrierState] = @CarrierState, [Zip] = @Zip, [RepLastName] = @RepLastName, [BusPhone] = @BusPhone, [CellPhone] = @CellPhone, [Email] = @Email, [RepFirstName] = @RepFirstName WHERE [CarrierID] = @CarrierID">
                <DeleteParameters>
                    <asp:Parameter Name="CarrierID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CarrierName" Type="String" />
                    <asp:Parameter Name="Street" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="CarrierState" Type="String" />
                    <asp:Parameter Name="Zip" Type="Int32" />
                    <asp:Parameter Name="RepLastName" Type="String" />
                    <asp:Parameter Name="BusPhone" Type="String" />
                    <asp:Parameter Name="CellPhone" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="RepFirstName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CarrierName" Type="String" />
                    <asp:Parameter Name="Street" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="CarrierState" Type="String" />
                    <asp:Parameter Name="Zip" Type="Int32" />
                    <asp:Parameter Name="RepLastName" Type="String" />
                    <asp:Parameter Name="BusPhone" Type="String" />
                    <asp:Parameter Name="CellPhone" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="RepFirstName" Type="String" />
                    <asp:Parameter Name="CarrierID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    </form>
</body>
</html>

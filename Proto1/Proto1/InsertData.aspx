<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertData.aspx.cs" Inherits="Proto1.InsertData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 451px;
            width: 235px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Rainier MediaConnectionString1 %>" DeleteCommand="DELETE FROM [Agents] WHERE [AgentID] = @AgentID" InsertCommand="INSERT INTO [Agents] ([FirstName], [LastName], [Street], [City], [AgentState], [Zip], [BusPhone], [CellPhone], [Email], [LicenseType1], [Type1Expiration], [LicenseType2], [Type2Expiration], [HireDate], [TerminationDate]) VALUES (@FirstName, @LastName, @Street, @City, @AgentState, @Zip, @BusPhone, @CellPhone, @Email, @LicenseType1, @Type1Expiration, @LicenseType2, @Type2Expiration, @HireDate, @TerminationDate)" ProviderName="<%$ ConnectionStrings:Rainier MediaConnectionString1.ProviderName %>" SelectCommand="SELECT [AgentID], [FirstName], [LastName], [Street], [City], [AgentState], [Zip], [BusPhone], [CellPhone], [Email], [LicenseType1], [Type1Expiration], [LicenseType2], [Type2Expiration], [HireDate], [TerminationDate] FROM [Agents]" UpdateCommand="UPDATE [Agents] SET [FirstName] = @FirstName, [LastName] = @LastName, [Street] = @Street, [City] = @City, [AgentState] = @AgentState, [Zip] = @Zip, [BusPhone] = @BusPhone, [CellPhone] = @CellPhone, [Email] = @Email, [LicenseType1] = @LicenseType1, [Type1Expiration] = @Type1Expiration, [LicenseType2] = @LicenseType2, [Type2Expiration] = @Type2Expiration, [HireDate] = @HireDate, [TerminationDate] = @TerminationDate WHERE [AgentID] = @AgentID">
                <DeleteParameters>
                    <asp:Parameter Name="AgentID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Street" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="AgentState" Type="String" />
                    <asp:Parameter Name="Zip" Type="Int32" />
                    <asp:Parameter Name="BusPhone" Type="String" />
                    <asp:Parameter Name="CellPhone" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="LicenseType1" Type="String" />
                    <asp:Parameter Name="Type1Expiration" Type="String" />
                    <asp:Parameter Name="LicenseType2" Type="String" />
                    <asp:Parameter Name="Type2Expiration" Type="String" />
                    <asp:Parameter DbType="Date" Name="HireDate" />
                    <asp:Parameter DbType="Date" Name="TerminationDate" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Street" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="AgentState" Type="String" />
                    <asp:Parameter Name="Zip" Type="Int32" />
                    <asp:Parameter Name="BusPhone" Type="String" />
                    <asp:Parameter Name="CellPhone" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="LicenseType1" Type="String" />
                    <asp:Parameter Name="Type1Expiration" Type="String" />
                    <asp:Parameter Name="LicenseType2" Type="String" />
                    <asp:Parameter Name="Type2Expiration" Type="String" />
                    <asp:Parameter DbType="Date" Name="HireDate" />
                    <asp:Parameter DbType="Date" Name="TerminationDate" />
                    <asp:Parameter Name="AgentID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="AgentID" DataSourceID="SqlDataSource1" GridLines="None" Height="50px" Width="125px">
                <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="AgentID" HeaderText="AgentID" InsertVisible="False" ReadOnly="True" SortExpression="AgentID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="AgentState" HeaderText="AgentState" SortExpression="AgentState" />
                    <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
                    <asp:BoundField DataField="BusPhone" HeaderText="BusPhone" SortExpression="BusPhone" />
                    <asp:BoundField DataField="CellPhone" HeaderText="CellPhone" SortExpression="CellPhone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="LicenseType1" HeaderText="LicenseType1" SortExpression="LicenseType1" />
                    <asp:BoundField DataField="Type1Expiration" HeaderText="Type1Expiration" SortExpression="Type1Expiration" />
                    <asp:BoundField DataField="LicenseType2" HeaderText="LicenseType2" SortExpression="LicenseType2" />
                    <asp:BoundField DataField="Type2Expiration" HeaderText="Type2Expiration" SortExpression="Type2Expiration" />
                    <asp:BoundField DataField="HireDate" HeaderText="HireDate" SortExpression="HireDate">
                    <ItemStyle Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TerminationDate" HeaderText="TerminationDate" SortExpression="TerminationDate" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            </asp:DetailsView>
            <asp:DetailsView ID="DetailsView5" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="PolicyID" DataSourceID="SqlDataSource5" GridLines="None" Height="50px" Width="125px">
                <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="PolicyID" HeaderText="PolicyID" InsertVisible="False" ReadOnly="True" SortExpression="PolicyID" />
                    <asp:BoundField DataField="ContactID" HeaderText="ContactID" SortExpression="ContactID" />
                    <asp:BoundField DataField="PolicyNumber" HeaderText="PolicyNumber" SortExpression="PolicyNumber" />
                    <asp:BoundField DataField="Carrier" HeaderText="Carrier" SortExpression="Carrier" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="Commissions" HeaderText="Commissions" SortExpression="Commissions" />
                    <asp:BoundField DataField="CarrierID" HeaderText="CarrierID" SortExpression="CarrierID" />
                    <asp:BoundField DataField="Subscribers" HeaderText="Subscribers" SortExpression="Subscribers" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            </asp:DetailsView>
            <asp:Panel ID="Panel5" runat="server">
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Rainier MediaConnectionString1 %>" DeleteCommand="DELETE FROM [Policies] WHERE [PolicyID] = @PolicyID" InsertCommand="INSERT INTO [Policies] ([ContactID], [PolicyNumber], [Carrier], [Type], [Commissions], [CarrierID], [Subscribers]) VALUES (@ContactID, @PolicyNumber, @Carrier, @Type, @Commissions, @CarrierID, @Subscribers)" ProviderName="<%$ ConnectionStrings:Rainier MediaConnectionString1.ProviderName %>" SelectCommand="SELECT [PolicyID], [ContactID], [PolicyNumber], [Carrier], [Type], [Commissions], [CarrierID], [Subscribers] FROM [Policies]" UpdateCommand="UPDATE [Policies] SET [ContactID] = @ContactID, [PolicyNumber] = @PolicyNumber, [Carrier] = @Carrier, [Type] = @Type, [Commissions] = @Commissions, [CarrierID] = @CarrierID, [Subscribers] = @Subscribers WHERE [PolicyID] = @PolicyID">
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
            <asp:Panel ID="Panel2" runat="server" Height="91px" Width="229px">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Rainier MediaConnectionString1 %>" DeleteCommand="DELETE FROM [Carriers] WHERE [CarrierID] = @CarrierID" InsertCommand="INSERT INTO [Carriers] ([CarrierName], [Street], [City], [CarrierState], [Zip], [RepLastName], [BusPhone], [CellPhone], [Email], [RepFirstName]) VALUES (@CarrierName, @Street, @City, @CarrierState, @Zip, @RepLastName, @BusPhone, @CellPhone, @Email, @RepFirstName)" ProviderName="<%$ ConnectionStrings:Rainier MediaConnectionString1.ProviderName %>" SelectCommand="SELECT [CarrierID], [CarrierName], [Street], [City], [CarrierState], [Zip], [RepLastName], [BusPhone], [CellPhone], [Email], [RepFirstName] FROM [Carriers]" UpdateCommand="UPDATE [Carriers] SET [CarrierName] = @CarrierName, [Street] = @Street, [City] = @City, [CarrierState] = @CarrierState, [Zip] = @Zip, [RepLastName] = @RepLastName, [BusPhone] = @BusPhone, [CellPhone] = @CellPhone, [Email] = @Email, [RepFirstName] = @RepFirstName WHERE [CarrierID] = @CarrierID">
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
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="CarrierID" DataSourceID="SqlDataSource2" GridLines="None" Height="50px" Width="125px">
                    <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="CarrierID" HeaderText="CarrierID" InsertVisible="False" ReadOnly="True" SortExpression="CarrierID" />
                        <asp:BoundField DataField="CarrierName" HeaderText="CarrierName" SortExpression="CarrierName" />
                        <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="CarrierState" HeaderText="CarrierState" SortExpression="CarrierState" />
                        <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
                        <asp:BoundField DataField="RepLastName" HeaderText="RepLastName" SortExpression="RepLastName" />
                        <asp:BoundField DataField="BusPhone" HeaderText="BusPhone" SortExpression="BusPhone" />
                        <asp:BoundField DataField="CellPhone" HeaderText="CellPhone" SortExpression="CellPhone" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="RepFirstName" HeaderText="RepFirstName" SortExpression="RepFirstName" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                </asp:DetailsView>
                <asp:Panel ID="Panel3" runat="server">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Rainier MediaConnectionString1 %>" DeleteCommand="DELETE FROM [Communications] WHERE [CommunicationID] = @CommunicationID" InsertCommand="INSERT INTO [Communications] ([CommunicationType], [Outcome], [CommunicationDate], [CommunicationTime], [FollowUp], [AgentID], [ContactID]) VALUES (@CommunicationType, @Outcome, @CommunicationDate, @CommunicationTime, @FollowUp, @AgentID, @ContactID)" ProviderName="<%$ ConnectionStrings:Rainier MediaConnectionString1.ProviderName %>" SelectCommand="SELECT [CommunicationID], [CommunicationType], [Outcome], [CommunicationDate], [CommunicationTime], [FollowUp], [AgentID], [ContactID] FROM [Communications]" UpdateCommand="UPDATE [Communications] SET [CommunicationType] = @CommunicationType, [Outcome] = @Outcome, [CommunicationDate] = @CommunicationDate, [CommunicationTime] = @CommunicationTime, [FollowUp] = @FollowUp, [AgentID] = @AgentID, [ContactID] = @ContactID WHERE [CommunicationID] = @CommunicationID">
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
                    <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="CommunicationID" DataSourceID="SqlDataSource3" GridLines="None" Height="50px" Width="125px">
                        <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:BoundField DataField="CommunicationID" HeaderText="CommunicationID" InsertVisible="False" ReadOnly="True" SortExpression="CommunicationID" />
                            <asp:BoundField DataField="CommunicationType" HeaderText="CommunicationType" SortExpression="CommunicationType" />
                            <asp:BoundField DataField="Outcome" HeaderText="Outcome" SortExpression="Outcome" />
                            <asp:BoundField DataField="CommunicationDate" HeaderText="CommunicationDate" SortExpression="CommunicationDate" />
                            <asp:BoundField DataField="CommunicationTime" HeaderText="CommunicationTime" SortExpression="CommunicationTime" />
                            <asp:BoundField DataField="FollowUp" HeaderText="FollowUp" SortExpression="FollowUp" />
                            <asp:BoundField DataField="AgentID" HeaderText="AgentID" SortExpression="AgentID" />
                            <asp:BoundField DataField="ContactID" HeaderText="ContactID" SortExpression="ContactID" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    </asp:DetailsView>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" style="margin-left: 352px">
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Rainier MediaConnectionString1 %>" DeleteCommand="DELETE FROM [Contacts] WHERE [ContactID] = @ContactID" InsertCommand="INSERT INTO [Contacts] ([AgentID], [Title], [FirstName], [LastName], [BusinessName], [NumEmployees], [ContactType], [Street], [City], [ContactState], [Zip], [BusPhone], [HomePhone], [CellPhone], [Fax], [Email], [Source], [Website], [Status], [Notes]) VALUES (@AgentID, @Title, @FirstName, @LastName, @BusinessName, @NumEmployees, @ContactType, @Street, @City, @ContactState, @Zip, @BusPhone, @HomePhone, @CellPhone, @Fax, @Email, @Source, @Website, @Status, @Notes)" ProviderName="<%$ ConnectionStrings:Rainier MediaConnectionString1.ProviderName %>" SelectCommand="SELECT [ContactID], [AgentID], [Title], [FirstName], [LastName], [BusinessName], [NumEmployees], [ContactType], [Street], [City], [ContactState], [Zip], [BusPhone], [HomePhone], [CellPhone], [Fax], [Email], [Source], [Website], [Status], [Notes] FROM [Contacts]" UpdateCommand="UPDATE [Contacts] SET [AgentID] = @AgentID, [Title] = @Title, [FirstName] = @FirstName, [LastName] = @LastName, [BusinessName] = @BusinessName, [NumEmployees] = @NumEmployees, [ContactType] = @ContactType, [Street] = @Street, [City] = @City, [ContactState] = @ContactState, [Zip] = @Zip, [BusPhone] = @BusPhone, [HomePhone] = @HomePhone, [CellPhone] = @CellPhone, [Fax] = @Fax, [Email] = @Email, [Source] = @Source, [Website] = @Website, [Status] = @Status, [Notes] = @Notes WHERE [ContactID] = @ContactID">
                <DeleteParameters>
                    <asp:Parameter Name="ContactID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="AgentID" Type="Int32" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="BusinessName" Type="String" />
                    <asp:Parameter Name="NumEmployees" Type="Int32" />
                    <asp:Parameter Name="ContactType" Type="String" />
                    <asp:Parameter Name="Street" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="ContactState" Type="String" />
                    <asp:Parameter Name="Zip" Type="Int32" />
                    <asp:Parameter Name="BusPhone" Type="String" />
                    <asp:Parameter Name="HomePhone" Type="String" />
                    <asp:Parameter Name="CellPhone" Type="String" />
                    <asp:Parameter Name="Fax" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Source" Type="String" />
                    <asp:Parameter Name="Website" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="Notes" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="AgentID" Type="Int32" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="BusinessName" Type="String" />
                    <asp:Parameter Name="NumEmployees" Type="Int32" />
                    <asp:Parameter Name="ContactType" Type="String" />
                    <asp:Parameter Name="Street" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="ContactState" Type="String" />
                    <asp:Parameter Name="Zip" Type="Int32" />
                    <asp:Parameter Name="BusPhone" Type="String" />
                    <asp:Parameter Name="HomePhone" Type="String" />
                    <asp:Parameter Name="CellPhone" Type="String" />
                    <asp:Parameter Name="Fax" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Source" Type="String" />
                    <asp:Parameter Name="Website" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="Notes" Type="String" />
                    <asp:Parameter Name="ContactID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="ContactID" DataSourceID="SqlDataSource4" GridLines="None" Height="50px" Width="125px">
                <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="ContactID" HeaderText="ContactID" InsertVisible="False" ReadOnly="True" SortExpression="ContactID" />
                    <asp:BoundField DataField="AgentID" HeaderText="AgentID" SortExpression="AgentID" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="BusinessName" HeaderText="BusinessName" SortExpression="BusinessName" />
                    <asp:BoundField DataField="NumEmployees" HeaderText="NumEmployees" SortExpression="NumEmployees" />
                    <asp:BoundField DataField="ContactType" HeaderText="ContactType" SortExpression="ContactType" />
                    <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="ContactState" HeaderText="ContactState" SortExpression="ContactState" />
                    <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
                    <asp:BoundField DataField="BusPhone" HeaderText="BusPhone" SortExpression="BusPhone" />
                    <asp:BoundField DataField="HomePhone" HeaderText="HomePhone" SortExpression="HomePhone" />
                    <asp:BoundField DataField="CellPhone" HeaderText="CellPhone" SortExpression="CellPhone" />
                    <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Source" HeaderText="Source" SortExpression="Source" />
                    <asp:BoundField DataField="Website" HeaderText="Website" SortExpression="Website" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            </asp:DetailsView>
        </asp:Panel>
    </form>
</body>
</html>

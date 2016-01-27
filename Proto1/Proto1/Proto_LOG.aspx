<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Proto_LOG.aspx.cs" Inherits="Proto1.Proto_LOG" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rainier Media</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="position: relative; top: 0px; left: 0px; height: 158px; width: 859px;">
            <asp:LinkButton ID="LinkButtonLogHome" runat="server" Font-Size="Large" ForeColor="#003300" OnClick="LinkButtonCommunications_Click" OnClientClick="doPostback" PostBackUrl="~/Navigation.aspx">HOME</asp:LinkButton>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Rainier MediaConnectionString %>" SelectCommand="SELECT [ContactID], [LastName] FROM [Contacts]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server"
                ConnectionString="<%$ ConnectionStrings:Rainier MediaConnectionString %>" SelectCommand="Update_Notes"
                SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="input" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True"
                AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="LastName"
                DataValueField="ContactID"
                Style="background-color: #CEDEDF; position: relative; top: 33px; left: 133px; width: 121px; height: 33px;"
                ToolTip="Search by Agents" Font-Size="X-Large">
            </asp:DropDownList>
        </div>
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="ContactID"
            DataSourceID="SqlDataSource2"
            EmptyDataText="There are no data records to display."
            AutoGenerateColumns="False" GridLines="None"
            Style="bottom: 5px; right: -30px; top: -5px; left: 115px; position: relative; height: 25px; width: 756px; margin-top: 20px; margin-left: 20px; font-size: medium; font-weight: 700; font-family: 'Times New Roman', Times, serif; color: #000066;"
            Caption="Log Contact Information" CaptionAlign="Left" ShowFooter="True"
            CellPadding="4" ForeColor="#333333" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" BorderStyle="Solid" Height="10px"
                HorizontalAlign="Left" Width="20px" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText=" " SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="" SortExpression="LastName" />
                <asp:BoundField DataField="BusinessName" HeaderText="Business" SortExpression="BusinessName" />
                <asp:BoundField DataField="ContactType" HeaderText="Contact Type" SortExpression="ContactType" />
                <asp:BoundField DataField="BusPhone" HeaderText="Business Phone" SortExpression="BusPhone" />
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
        <center style="margin-left: 80px">
            <asp:Panel ID="Panel1" runat="server" style="margin-top: 0px" Width="1061px">            
                <asp:Table ID="Table1" runat="server" style="margin-left: 0px" Width="296px">
                    <asp:TableRow ID="Last_A" runat="server">
                    </asp:TableRow>
                </asp:Table>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:Rainier MediaConnectionString6 %>" DeleteCommand="DELETE FROM [Contacts] WHERE [ContactID] = @ContactID" InsertCommand="INSERT INTO [Contacts] ([AgentID], [Title], [FirstName], [LastName], [BusinessName], [NumEmployees], [ContactType], [Street], [City], [ContactState], [Zip], [BusPhone], [HomePhone], [CellPhone], [Fax], [Email], [Source], [Website], [Status], [Notes]) VALUES (@AgentID, @Title, @FirstName, @LastName, @BusinessName, @NumEmployees, @ContactType, @Street, @City, @ContactState, @Zip, @BusPhone, @HomePhone, @CellPhone, @Fax, @Email, @Source, @Website, @Status, @Notes)" SelectCommand="last_A" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE [Contacts] SET [AgentID] = @AgentID, [Title] = @Title, [FirstName] = @FirstName, [LastName] = @LastName, [BusinessName] = @BusinessName, [NumEmployees] = @NumEmployees, [ContactType] = @ContactType, [Street] = @Street, [City] = @City, [ContactState] = @ContactState, [Zip] = @Zip, [BusPhone] = @BusPhone, [HomePhone] = @HomePhone, [CellPhone] = @CellPhone, [Fax] = @Fax, [Email] = @Email, [Source] = @Source, [Website] = @Website, [Status] = @Status, [Notes] = @Notes WHERE [ContactID] = @ContactID">
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
                &nbsp;</center>&nbsp;&nbsp;&nbsp;
            </asp:Panel>
            
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateInsertButton="True" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ContactID,AgentID" DataSourceID="SqlDataSource5" DefaultMode="Insert" ForeColor="Black" GridLines="Vertical" Height="50px" style="position: relative; top: 0px; left: 130px; width: 758px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="AgentID" HeaderText="Agent" SortExpression="AgentID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField AccessibleHeaderText="ContsactType" DataField="ContactType" HeaderText="Type Contact" SortExpression="ContactType">
                    <ItemStyle Wrap="False" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                    <asp:ButtonField ButtonType="Button" CommandName="Insert" Text="Insert" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            </asp:DetailsView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Rainier MediaConnectionString7 %>" DeleteCommand="DELETE FROM [Contacts] WHERE [ContactID] = @ContactID" InsertCommand="INSERT INTO [Contacts] ([AgentID], [Title], [FirstName], [LastName], [BusinessName], [NumEmployees], [ContactType], [Street], [City], [ContactState], [Zip], [BusPhone], [HomePhone], [CellPhone], [Fax], [Email], [Source], [Website], [Status], [Notes]) VALUES (@AgentID, @Title, @FirstName, @LastName, @BusinessName, @NumEmployees, @ContactType, @Street, @City, @ContactState, @Zip, @BusPhone, @HomePhone, @CellPhone, @Fax, @Email, @Source, @Website, @Status, @Notes)" ProviderName="<%$ ConnectionStrings:Rainier MediaConnectionString7.ProviderName %>" SelectCommand="SELECT [ContactID], [AgentID], [Title], [FirstName], [LastName], [BusinessName], [NumEmployees], [ContactType], [Street], [City], [ContactState], [Zip], [BusPhone], [HomePhone], [CellPhone], [Fax], [Email], [Source], [Website], [Status], [Notes] FROM [Contacts]" UpdateCommand="UPDATE [Contacts] SET [AgentID] = @AgentID, [Title] = @Title, [FirstName] = @FirstName, [LastName] = @LastName, [BusinessName] = @BusinessName, [NumEmployees] = @NumEmployees, [ContactType] = @ContactType, [Street] = @Street, [City] = @City, [ContactState] = @ContactState, [Zip] = @Zip, [BusPhone] = @BusPhone, [HomePhone] = @HomePhone, [CellPhone] = @CellPhone, [Fax] = @Fax, [Email] = @Email, [Source] = @Source, [Website] = @Website, [Status] = @Status, [Notes] = @Notes WHERE [ContactID] = @ContactID">
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Rainier MediaConnectionString %>" DeleteCommand="DELETE FROM [Contacts] WHERE [ContactID] = @ContactID" InsertCommand="INSERT INTO [Contacts] (@Notes)" SelectCommand="SELECT [ContactID], [FirstName], [LastName], [BusinessName], [ContactType], [BusPhone], [CellPhone], [Email], [Source], [Notes] FROM [Contacts] WHERE ([ContactID] = @ContactID)" UpdateCommand="UPDATE [Contacts] SET [FirstName] = @FirstName, [LastName] = @LastName, [BusinessName] = @BusinessName, [ContactType] = @ContactType, [BusPhone] = @BusPhone, [CellPhone] = @CellPhone, [Email] = @Email, [Source] = @Source, [Notes] = @Notes WHERE [ContactID] = @ContactID">
            <DeleteParameters>
                <asp:Parameter Name="ContactID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="BusinessName" Type="String" />
                <asp:Parameter Name="ContactType" Type="String" />
                <asp:Parameter Name="BusPhone" Type="String" />
                <asp:Parameter Name="CellPhone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Source" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="ContactID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="BusinessName" Type="String" />
                <asp:Parameter Name="ContactType" Type="String" />
                <asp:Parameter Name="BusPhone" Type="String" />
                <asp:Parameter Name="CellPhone" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Source" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />                
            </UpdateParameters>
        </asp:SqlDataSource>      
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"
            CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333"
            GridLines="None"
            Style="height: 35px; width: 757px; left: 130px; position: relative; bottom: -18px; right: -146px; top: 18px; margin-bottom: 15px" ShowFooter="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="communicationdate" SortExpression="communicationdate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("communicationdate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("communicationdate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="followup" SortExpression="followup">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("followup") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("followup") %>'></asp:Label>
                        <footertemplate>
                            <asp:LinkButton runat="server"></asp:LinkButton> 
                            <asp:TextBox runat="server"></asp:TextBox>
                        </footertemplate>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True">
                <ItemStyle Wrap="False" />
                </asp:CommandField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" BorderStyle="Groove" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" BorderStyle="Groove" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <div>
            <center style="font-size: medium; font-weight: 700; font-family: Verdana; background-color: #FFFFFF">
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Rainier MediaConnectionString %>" DataSourceMode="DataReader" DeleteCommand="DELETE FROM [Contacts] WHERE [ContactID] = @ContactID" InsertCommand="INSERT INTO [Contacts] ([Notes]) VALUES (@Notes)" SelectCommand="SELECT [Notes], [ContactID] FROM [Contacts]" UpdateCommand="UPDATE [Contacts] SET [Notes] = @Notes">
                <DeleteParameters>
                    <asp:Parameter Name="ContactID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Notes" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Notes" Type="String" />
                    <asp:Parameter Name="ContactID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </center>
        </div>
        <div>
        </div>
    </form>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</body>
</html>

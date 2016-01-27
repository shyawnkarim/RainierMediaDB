<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Navigation.aspx.cs" Inherits="Proto1.Navigation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 799px;
            height: 75px;
            margin-left: 186px;
        }
        .auto-style2 {
            border-style: solid;
            border-width: 0px;
            padding: 1px 4px;
        }
        .auto-style3 {
            font-family: "Times New Roman", Times, serif;
            font-variant: small-caps;
            color: #999999;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Panel ID="Panel3" runat="server" Height="967px" style="color: #FFFFCC; border-style: solid; border-width: 4px; background-color: #CCCCCC">
            <span class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <br class="auto-style2" />
            <asp:Panel ID="Panel4" runat="server" Height="78px">
                <img alt="Welcome" class="auto-style1" src="G2.ico" />
            </asp:Panel>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButtonAgents" runat="server" Font-Size="Large" ForeColor="#003300" CssClass="auto-style3">Agents</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:LinkButton ID="LinkButtonCarriers" runat="server" Font-Size="Large" ForeColor="#003300" OnClick="LinkButtonCommunications_Click" OnClientClick="doPostback" PostBackUrl="~/Carriers.aspx" CssClass="auto-style3">Carriers</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButtonCommunications" runat="server" Font-Size="Large" ForeColor="#003300" OnClick="LinkButtonCommunications_Click" OnClientClick="doPostback" PostBackUrl="~/Proto_LOG.aspx" CssClass="auto-style3">Communications</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButtonContacts" runat="server" Font-Size="Large" ForeColor="#003300" OnClick="LinkButtonCommunications_Click" OnClientClick="doPostback" PostBackUrl="~/Follow Up.aspx" CssClass="auto-style3">Follow Ups</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:LinkButton ID="linkCommissionButton" runat="server" Font-Size="Large" ForeColor="#003300" OnClick="LinkButtonCommunications_Click" OnClientClick="doPostback" PostBackUrl="~/Commissions.aspx" CssClass="auto-style3">Commissions</asp:LinkButton>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
    </form>
</body>
</html>

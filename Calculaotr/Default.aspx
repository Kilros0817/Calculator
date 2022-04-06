<%@ Page Title="Circular economy calculator" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Calculaotr.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Text1 {
            width: 153px;
        }
        #time {
            width: 183px;
        }
        #time0 {
            width: 183px;
        }
        #time1 {
            width: 183px;
        }
        #time2 {
            width: 183px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Time horizon"></asp:Label>
            <br />
            <input id="time" type="number" style="text-align: right; margin-right: 10px;" runat="server" value="0" /><asp:Label ID="Label2" runat="server" Height="28px" Text="years" Width="35px"></asp:Label>
            <br />

            <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Annual sales volume"></asp:Label>
            <br />
            <input id="annual" type="number" style="text-align: right; margin-right: 10px; width: 183px;" runat="server" value="0" /><asp:Label ID="Label4" runat="server" Height="28px" Text="units" Width="35px"></asp:Label>
            <br />

            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Growth rate"></asp:Label>
            <br />
            <input id="rate" type="number" style="text-align: right; margin-right: 10px; width: 183px;" runat="server" value="0"/><asp:Label ID="Label6" runat="server" Height="25px" Text="%" Width="35px"></asp:Label>
            <br />

            <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="System effectiveness"></asp:Label>
            <br />
            <input id="systemE" type="number" style="text-align: right; margin-right: 10px; width: 183px;" runat="server" value="0"/><asp:Label ID="Label8" runat="server" Height="25px" Text="%" Width="35px"></asp:Label>
            <br />
            <br />
            <asp:Button ID="evaluateBtn" runat="server" Text="Evaluate returns" OnClick="evaluateBtn_Click" />
            <br />
        </div>
        <p>&nbsp;</p>
    </form>
    <div id="resultDiv" runat="server">
    </div>
    </body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CalenderControl.aspx.cs" Inherits="AbidWebApplication1.CalenderControl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Year:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp; Month:<asp:DropDownList ID="DropDownList2" runat="server" 
            AutoPostBack="True" onselectedindexchanged="DropDownList2_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Get Selected Date" />
    
    </div>
    </form>
</body>
</html>

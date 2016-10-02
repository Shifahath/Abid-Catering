<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomControlsCalender.aspx.cs" Inherits="AbidWebApplication1.CustomControlsCalender" %>

<%@ Register Assembly="CustomControls" Namespace="CustomControls" TagPrefix="cc1" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <cc1:CustomCalendar ID="CustomCalendar1" runat="server" 
            ImageButtonImageUrl="Images/Calendar.jpg" />
    
    </div>
    </form>
</body>
</html>

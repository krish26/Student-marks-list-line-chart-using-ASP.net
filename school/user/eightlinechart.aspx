<%@ Page Title="" Language="C#" MasterPageFile="~/user_result.Master" AutoEventWireup="true" CodeBehind="eightlinechart.aspx.cs" Inherits="school.eightlinechart" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
        <asp:Label ID="Label1" runat="server" Text="Line chart for:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtline" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Label2" runat="server" Text="exam"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Txtexam" runat="server"></asp:TextBox>
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <ajaxToolkit:LineChart ID="LineChart1" runat="server" ChartHeight="500" chartwidth="600" AreaDataLabel="marks" >
    </ajaxToolkit:LineChart>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="&lt;&lt;BACK" />

</asp:Content>

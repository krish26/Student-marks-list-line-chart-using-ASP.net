<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.Master" AutoEventWireup="true" CodeBehind="sms.aspx.cs" Inherits="school.AddEvent_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .auto1{
            width:700px;
            height:320px;
            margin:0 auto;
            background-color:transparent;
            border-style:solid;
        }
        .auto-style2 {
            width: 100%;
        }
        .button{
            border-radius:14px;
            cursor:pointer;
        }
         .auto3{
             height: 75px;
            text-align: center;
            width: 393px;
            position:relative;
        }
        
       
    </style>
    <div class="auto1">

        <table class="auto-style2">
            <tr>
                <td  class="auto3">
                    <asp:Label ID="Label3" runat="server" Text="NUMBER(S)"></asp:Label>
                </td>
                <td  class="auto3">
                    <asp:TextBox ID="txtNum" runat="server" Width="283px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td  class="auto3">
                    <asp:Label ID="Label4" runat="server" Text="MESSAGE"></asp:Label>
                </td>
                <td  class="auto3">
                    <asp:TextBox ID="txtMessage" runat="server" Height="119px" TextMode="MultiLine" Width="305px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2"  class="auto3">
                    <asp:Button ID="btmSubmit" runat="server" Text="SEND" BackColor="Green" CssClass="button" ForeColor="Black" Height="30px" OnClick="btmSubmit_Click" Width="100px" BorderStyle="None" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" BackColor="Green" CssClass="button" ForeColor="Black" Height="30px" OnClick="Button1_Click" Text="CLEAR" Width="100px" BorderStyle="None" />
                </td>
            </tr>
        </table>

    </div>
     </asp:Content>

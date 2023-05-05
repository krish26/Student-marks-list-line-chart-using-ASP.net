<%@ Page Title="" Language="C#" MasterPageFile="~/user_result.Master" AutoEventWireup="true" CodeBehind="user_sevenresult.aspx.cs" Inherits="school.user_sevenresult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
      .auto1{
          width:100%;
          height:100px;
          margin-bottom:200px;
         

      }  
      td{
          width:400px;
          height:100px;
          text-align:center;
      }
      .auto3{
          text-align:center;
      }
      

        .auto-style3 {
            width: 550px;
        }

    </style>
    

    
    <div class="auto1">
        <div>
            <table  class="auto3">
                <tr>
                   
                    <td><asp:Label ID="LblNum" runat="server" Text="Roll Number/Name" Font-Bold="true" Font-Size="Large"></asp:Label></td>
                    <td></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="30px"></asp:TextBox></td>
                       
                 <td></td>
                
                    <td>
                        <asp:Label ID="LblSection" runat="server" Text="exam" Font-Bold="True" Font-Size="Large"></asp:Label></td>
                     <td></td>
                    <td>
                        <asp:DropDownList ID="Ddexam" runat="server" Width="150px" Height="30px">
                            <asp:ListItem>--SELECT--</asp:ListItem>
                            <asp:ListItem>mid1</asp:ListItem>
                            <asp:ListItem>mid2</asp:ListItem>
                            <asp:ListItem>mid3</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td colspan="7">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button CssClass="button" ID="BtnResult" runat="server" Text="GET RESULTS"  BackColor="Lime" Font-Size="medium" ForeColor="Black" Height="35px" Width="130px" OnClick="BtnResult_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="7">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button CssClass="button" ID="BtnChart" runat="server" Text="Generate LINE CHART"  BackColor="Lime" Font-Size="medium" ForeColor="Black" Height="35px" Width="190px" OnClick="BtnChart_Click" />
                    </td>
                </tr>
            </table>
        </div>
        </div>

</asp:Content>

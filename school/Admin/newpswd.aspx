<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newpswd.aspx.cs" Inherits="school.newpswd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>create new password</title>
    <style>
         #main{
    width:100%;
    height:100vh;
    background-image:url(../images/007.jpg);
    background-size:cover;
}
         .auto1{
            width:700px;
            height:250px;
           margin:0 auto;
          margin-top:10%;
          background-color:#0002;
           box-shadow:inset 0 1.5px 3px rgba(0,0,0,0.5);
          
        }
        .auto-style2 {
            width: 100%;
        }
        tr{
            text-align:center;
            height:50px;
        }
        .button{
           background-color:black;
           border-radius:14px;
           display:inline-block;
           cursor:pointer;

       }
    </style>
</head>
<body id="main">
    <form id="form1" runat="server">
        <div class="auto1">
            
            <table class="auto-style2">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label3" runat="server" Text="Change password " Font-Bold="true" Font-Size="Larger"></asp:Label>
                        <asp:Label ID="Label4" runat="server" Font-Size="Large" ForeColor="#FF0066"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="New Password:" Font-Bold="true" Font-Size="Large"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="400px" Height="20px" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Re-type password:" Font-Bold="true" Font-Size="Large"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="400px" Height="20px" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" Font-Bold="True" Font-Size="Medium" ForeColor="White" cssclass="button" Width="100px" Height="40px" runat="server" Text="Save" BorderStyle="None" OnClick="Button1_Click" /></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>

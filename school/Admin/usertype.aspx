<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usertype.aspx.cs" Inherits="school.usertype" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
         #main {
             width: 100%;
             height: 100vh;
             background-image: url('../../images/use.jpg');
             background-size:cover;
         }
         td{
             width:200px;
             height:40px;
         }
         .auto1{
             margin:0 auto;
             margin-top:40px;
             width:500px;
             height:100px;
            
          background-color:transparent;
         box-shadow:inset 0 0.5px 3px rgb(52, 177, 177);
           
           
            
        }

      
         .button{
             float:right;
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
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="UserType" Font-Bold="true" Font-Size="Large"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" Height="30px" AutoPostBack="True">
                            <asp:ListItem>--SELECT--</asp:ListItem>
                            <asp:ListItem Text="User" ></asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="button" BackColor="Black" BorderStyle="None" Font-Size="Medium" ForeColor="White" Height="30px" Width="100px" OnClick="Button1_Click" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

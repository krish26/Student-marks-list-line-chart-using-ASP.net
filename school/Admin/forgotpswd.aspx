<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpswd.aspx.cs" Inherits="school.forgotpswd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset password</title>
    <style>
         #main{
    width:100%;
    height:100vh;
    background-image:url(../images/007.jpg);
    background-size:cover;
}
         .auto1{
            width:400px;
            height:400px;
           margin:0 auto;
          margin-top:10%;
          background-color:#0002;
           box-shadow:inset 0 1.5px 3px rgba(0,0,0,0.5);
          
        }
         .auto-style5{
             height: 75px;
            text-align: center;
            width: 393px;
            position:relative;
            
        }
        .auto-style5 icon {
            padding-left:404px;
        }
        .auto-style5 i{
            position:absolute;
            left:280px;
            top:19px;
            padding:10px 8px;
            color:#aaa;
        }
        .auto-style4 {
            height: 50px;
            text-align: center;
            width: 393px;
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
            <table>
             <tr>
                    <td class="auto-style4" colspan="2"><asp:Label ID="lblHead" runat="server" Text="Reset password" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                        &nbsp;</td>
                </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="mobile number" Font-Bold="true" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TxtNum" runat="server" Width="231px" placeholder="Registered mobile number" TabIndex="2" CssClass="icon" Height="34px"></asp:TextBox>

                    </td>
                </tr>
                 <tr>
                    <td class="auto-style5" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Request OTP" OnClick="Button2_Click" />
                    </td>
                    
                     </tr>
             <tr>
                    <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Enter OTP" Font-Bold="true" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server" Width="231px" placeholder="OTP" TabIndex="2" CssClass="icon" Height="34px"></asp:TextBox>

                    </td>
                     </tr>
                <tr>
                    <td class="auto-style5" colspan="2">
                       
                        &nbsp;&nbsp;<asp:Button ID="Button1" CssClass="button" runat="server" Text="Submit" Width="100px"  Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="30px" BorderStyle="None" OnClick="Button1_Click" PostBackUrl="~/Admin/newpswd.aspx" />                    </td>
                </tr>
        </table>
        </div>
    </form>
</body>
</html>

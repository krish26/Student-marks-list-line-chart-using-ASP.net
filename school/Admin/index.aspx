<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="school.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>sign in</title>
    <script src="../js/loginvalidation.js" type="text/javascript"></script>
    <style>
       #main{
    width:100%;
    height:100vh;
    background-image:url(../images/007.jpg);
    background-size:cover;
}
       .auto1{
            width:400px;
            height:420px;
           margin:0 auto;
          margin-top:10%;
          background-color:#0002;
           box-shadow:inset 0 1.5px 3px rgba(0,0,0,0.5);
           
           
            
        }
        .auto2{
            width:400px;
            height:75px;
             text-align:center;
           
        }
        .auto-style4 {
            height: 50px;
            text-align: center;
           
            width: 393px;
        }
        .auto6{
             height: 75px;
            text-align: center;
        }
        .auto-style5{
             height: 75px;
            text-align: center;
            width: 393px;
            position:relative;
            color:transparent;
             
        }
        .auto-style5 icon {
            padding-left:404px;
            color:transparent;
           
        }
        .auto-style5 i{
            position:absolute;
            left:280px;
            top:19px;
            padding:10px 8px;
            color:#aaa;
        }
       .button{
           background-color:black;
           border-radius:14px;
           display:inline-block;
           cursor:pointer;

       }
       .auto7{
          
           margin-top:30px;
           width:10px;
           height:20px;
           border-radius:20px;
       }
      

   </style>

</head>
<body id="main">
    <form id="form1" runat="server">
        
        <div>
            <div class="auto1">
               
        
            <table>
                    <tr>
                    <td class="auto-style4"><asp:Label ID="lblHead" runat="server" Text="Login" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                        &nbsp;</td>
                </tr>
               
                <tr>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtuname" runat="server" Width="231px" placeholder="username" TabIndex="2" CssClass="icon" Height="34px"></asp:TextBox>
                   <span><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                       
                        <asp:TextBox ID="txtpwd" runat="server" Width="231px" placeholder="Password" TabIndex="2" CssClass="icon" Height="34px" TextMode="Password"></asp:TextBox>
                      <span><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                       
                        &nbsp;&nbsp;<asp:Button ID="Button1" CssClass="button" runat="server" Text="Login" Width="100px"  Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="30px" BorderStyle="None" OnClick="Button1_Click" OnClientClick="return validlog()"/></td>
                </tr>
                <tr>
                    <td  colspan="2" class="auto-style5">
                       
                                 
                        &nbsp;&nbsp;&nbsp;&nbsp;
                       
                                 
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Admin/forgotpswd.aspx">Forget Password?</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Admin/register.aspx">SignUp</asp:LinkButton>

                    </td>
                </tr>
                <tr>
                
                    <td >
                       
                                
                        
                    </td>
                </tr>
            </table>
                </div>

        </div>
    
       
    </form>
</body>
</html>

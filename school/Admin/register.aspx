<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="school.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>register</title>
    <script src="../js/registervalidation.js" type="text/javascript"></script>
    <style>
        #main{
    width:100%;
    height:100vh;
    background-image:url(../images/007.jpg);
    background-size:cover;
}
     
        .auto1{
            width:600px;
            height:750px;
            margin:0 auto;
            background-color:#0001;
            box-shadow:inset 0 0.5px 3px rgb(52, 177, 177);
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
            width: 340px;
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
        .button{
            background-color:black;
            border-radius:14px;
        }
     
    </style>
    
</head>
<body id="main">
    <form id="form1" runat="server">
       <div class="auto1">
            <table>
                
               
                <tr>
                    <td class="auto-style4" colspan="2">&nbsp;&nbsp;<asp:Label ID="lblHead" runat="server" Text="Sign-Up" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                        &nbsp;</td>
                </tr>
                 <tr>
                     <td class="auto-style5">
                         <asp:Label ID="Label1" runat="server" Text="userType:" Font-Size="Large" Font-Bold="true"></asp:Label></td> 
                     
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="231px" Height="34px">
                            <asp:ListItem>Select login type</asp:ListItem>
                            <asp:ListItem>Staff</asp:ListItem>
                            <asp:ListItem>principal</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;</td>
                </tr>
               
                <tr>
                    <td class="auto-style5">
                         <asp:Label ID="Label2" runat="server" Text="Name"  Font-Size="Large" Font-Bold="true"></asp:Label></td>

                    <td class="auto-style5">
                        <asp:TextBox ID="TxtBoxName" runat="server" Width="231px" placeholder="Full Name" TabIndex="2" CssClass="icon" Height="34px" ></asp:TextBox>
                   <span><i class="fa fa-user-circle fa-lg" aria-hidden="true" ></i></span>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                         <asp:Label ID="Label3" runat="server" Text="username"  Font-Size="Large" Font-Bold="true"></asp:Label></td>

                    <td class="auto-style5">
                        <asp:TextBox ID="TxtBoxId" runat="server" Width="231px" placeholder="Username" TabIndex="2" CssClass="icon" Height="34px"></asp:TextBox>
                   <span><i class="fa fa-user fa-lg" aria-hidden="true"></i></span>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                         <asp:Label ID="Label4" runat="server" Text="password"  Font-Size="Large" Font-Bold="true"></asp:Label></td>

                    <td class="auto-style5">
                       
                        <asp:TextBox ID="TxtBoxPs" runat="server" Width="231px" placeholder="Password" TabIndex="2" CssClass="icon" Height="34px" TextMode="Password"></asp:TextBox>
                      <span><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                         <asp:Label ID="Label5" runat="server" Text="confirm password"  Font-Size="Large" Font-Bold="true"></asp:Label></td>

                    <td class="auto-style5">
                       
                        <asp:TextBox ID="TextBoxPs1" runat="server" Width="231px" placeholder="Confirm Password" TabIndex="2" CssClass="icon" Height="34px" TextMode="Password"></asp:TextBox>
                      <span><i class="fa fa-unlock-alt fa-lg" aria-hidden="true"></i></span>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                         <asp:Label ID="Label6" runat="server" Text="Mobile Number"  Font-Size="Large" Font-Bold="true"></asp:Label></td>

                    <td class="auto-style5">
                       
                        <asp:TextBox ID="TxtBoxNum" runat="server" Width="231px" placeholder="Mobile Number" TabIndex="2" CssClass="icon" Height="34px"></asp:TextBox>
                      <span><i class="fa fa-mobile fa-lg" aria-hidden="true"></i></span>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                         <asp:Label ID="Label7" runat="server" Text="Security Question:"  Font-Size="Large" Font-Bold="true"></asp:Label></td>

                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="231px" Height="34px">
                            <asp:ListItem>&lt;---SELECT--&gt;</asp:ListItem>
                            <asp:ListItem>What is your first school name</asp:ListItem>
                            <asp:ListItem>what is your favourite pet</asp:ListItem>
                            <asp:ListItem>mothers surname</asp:ListItem>
                            <asp:ListItem>favourite teacher name </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                 <tr>
                     <td class="auto-style5">
                         <asp:Label ID="Label8" runat="server" Text="Answer"  Font-Size="Large" Font-Bold="true"></asp:Label></td>

                    <td class="auto-style5">
                        <asp:TextBox ID="TextBoxAns" runat="server" Width="231px" placeholder="Answer" TabIndex="2" CssClass="icon" Height="34px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">
                       
                    <asp:Button ID="Button1" runat="server" Text="Submit" Width="100px"  Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="40px" CssClass="button" BorderStyle="None" OnClick="Button1_Click" OnClientClick="return validsignup()"/>  

                    </td>
                </tr>
       
            </table>
        </div>
    </form>
</body>
</html>

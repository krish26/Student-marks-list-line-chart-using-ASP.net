<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eightresults.aspx.cs" Inherits="school.eightresults" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
     <style>
        .auto1{
            width:700px;
            height:640px;
            margin:0px auto;
            background-color:#f4f1f7;

        }
        .auto2{
            width:190px;
        }
        .lab{
            font-size:large;
        }
        .tabmarks{
            width:600px;
            height:400px;
            border:thick;
            margin:0 auto;
            text-align:center;    
        }
        auto3{
            width:300px;
            text-align:center;
        }
        .auto4{
            width:700px;
            height:100px;
            background-color:#3464c8;
            text-align:center;
            
        }
        .auto5{
            border:thin;
             border-style:solid;
             border-color:#3464c8;
             height:40px;
            width:695px;
           
        }
       .auto6{
           width:697px;
           height:50px;
           background-color:#3464c8;
       }
       .auto7{
           width:290px;
           height:300px;
           border:thin;
           border-style:solid;
            border-color:#3464c8;
            border-top:hidden;
            border-left:hidden;
             text-align:center;
           
       }
       .auto8{
           width:400px;
           height:300px;
           border:thin;
           border-style:solid;
            border-color:#3464c8;
               text-align:center;
               border-top:hidden;
       }
       .auto9{
           width:290px;
           height:50px;
           border:thin;
           border-style:solid;
            border-color:#3464c8;
            border-left:hidden;
             border-right:hidden;
             text-align:center;
       }
        
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="auto1">
            <div class="auto4">
                <br />
                <br />
                <asp:Label ID="LblExam" runat="server"  Font-Italic="True" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                 
                &nbsp;&nbsp;
                 
                <asp:Label ID="Lblhead" runat="server" Text="REPORT CARD"  Font-Italic="True" Font-Bold="True" Font-Size="X-Large"></asp:Label></div>
              <br />
            <div class="auto5">
                <br />
                &nbsp;
                <asp:Label ID="Lblname" runat="server" Text="STUDENT'S NAME :" Font-Size="Medium"></asp:Label>

                &nbsp;
                 <asp:Label ID="Lblnam" runat="server" Text="" Font-Size="Medium"></asp:Label>
            </div>
            <br />
             <div class="auto5">
                <br />
                &nbsp;
                <asp:Label ID="Lblclass" runat="server" Text="GRADE :" Font-Size="Medium"></asp:Label>
                 &nbsp;&nbsp;<asp:Label ID="Lblgrad" runat="server" Text="SIXTH" Font-Size="Medium"></asp:Label>

                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Lblroll" runat="server" Text="ROLL NO:" Font-Size="Medium"></asp:Label>
                 &nbsp;<asp:Label ID="Lblrollnumber" runat="server" Text="" Font-Size="Medium"></asp:Label>

                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Lblsection" runat="server" Text="SECTION :" Font-Size="Medium"></asp:Label>
                 &nbsp;&nbsp;&nbsp;<asp:Label ID="Lblsec" runat="server" Text="" Font-Size="Medium"></asp:Label>
                &nbsp;</div>
            <br />
            <div class="auto6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Lblsubjects" runat="server" Text="SUBJECTS" Font-Size="larger" Font-Bold="true"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Lblmarks" runat="server" Text="MARKS" Font-Size="larger" Font-Bold="true"></asp:Label>
            </div>
            <table>
                <tr>
                    <td class="auto8">
                        
                        <asp:Label ID="Lbltelugu" runat="server" Text="TELUGU"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Lblhindi" runat="server" Text="HINDI"></asp:Label>
                        <br />
                         <br />
                        <asp:Label ID="Lblenglish" runat="server" Text="ENGLISH"></asp:Label>
                        <br />
                         <br />
                        <asp:Label ID="Lblmaths" runat="server" Text="MATHS"></asp:Label>
                        <br />
                         <br />
                        <asp:Label ID="Lblscience" runat="server" Text="SCIENCE"></asp:Label>
                        <br />
                         <br />
                        <asp:Label ID="Lblsocial" runat="server" Text="SOCIAL"></asp:Label>
                        <br />
                        <br />
                  
                        <asp:Label ID="Lbltotal" runat="server" Text="TOTAL"></asp:Label>
                    </td>
                    <td class="auto7">
                      <asp:Label ID="Label1" runat="server" Text="TELUGU"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="HINDI"></asp:Label>
                        <br />
                         <br />
                        <asp:Label ID="Label3" runat="server" Text="ENGLISH"></asp:Label>
                        <br />
                         <br />
                        <asp:Label ID="Label4" runat="server" Text="MATHS"></asp:Label>
                        <br />
                         <br />
                        <asp:Label ID="Label5" runat="server" Text="SCIENCE"></asp:Label>
                        <br />
                         <br />
                        <asp:Label ID="Label6" runat="server" Text="SOCIAL"></asp:Label>
                    
                        <br />
                        <br />
                        <asp:Label ID="Label7" runat="server" Text="TOTAL" ForeColor="#003300" Font-Size="X-Large"></asp:Label>
                    
                         
                    </td>
                </tr>
            </table>
         
                 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Download </asp:LinkButton>
         
                 
        </div>
    </form>
</body>
</html>
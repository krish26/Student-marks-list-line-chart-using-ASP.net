<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.Master" AutoEventWireup="true" CodeBehind="sixth_admin.aspx.cs" Inherits="school.sixth_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script src="../js/registervalidation.js" type="text/javascript"></script>
    <style type="text/css">
        .auto-style1 {
            width: 400%;
            height: 500px;
            margin: 0 auto;
        }
        .auto2{
             width:700px;
            height:500px;
            margin:0 auto;
            background-color:#e4dddd
        }
        .auto3{
             height: 60px;
            text-align: center;
            width: 393px;
            position:relative;
        }
        
      
        </style>
     <script src="//code.jquery.com/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //Iterate through each Textbox and add keyup event handler
            $(".caltotal").each(function () {
                $(this).keyup(function () {
                    //Initialize total to 0
                    var total = 0;
                    $(".caltotal").each(function () {
                        // Sum only if the text entered is number and greater than 0
                        if (!isNaN(this.value) && this.value.length != 0) {
                            total += parseFloat(this.value);
                        }
                    });
                    //Assign the total to label
                    //.toFixed() method will roundoff the final sum to 2 decimal places
                   $('#<%=TextBox8.ClientID %>').val(total.toFixed()); 
                });
            });
        });
    </script>
 
      <div class="auto2"> 
         <table>
        <tr>
            <td class="auto3">
                <asp:Label ID="LblExam" runat="server" Text="Select Exam"></asp:Label></td>
            <td class="auto3">
               
                <asp:DropDownList ID="DdExam" runat="server"  Width="170px" Height="34px">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                    <asp:ListItem>mid1</asp:ListItem>
                    <asp:ListItem>mid2</asp:ListItem>
                    <asp:ListItem>mid3</asp:ListItem>
                </asp:DropDownList></td>
            
              
            <td class="auto3">
                <asp:Label ID="LblSection" runat="server" Text="Section"></asp:Label></td>
            <td class="auto3">
               
                <asp:DropDownList ID="DdSection" runat="server"  Width="170px" Height="34px">
                    <asp:ListItem>--SELECT--</asp:ListItem>
                    <asp:ListItem>6A</asp:ListItem>
                    <asp:ListItem>6B</asp:ListItem>
                    <asp:ListItem>6C</asp:ListItem>
                </asp:DropDownList></td>
            </tr>
             <tr>
            <td class="auto3">
               
                <asp:Label ID="LblId" runat="server" Text="Roll No."></asp:Label></td>
            <td class="auto3">
               
                <asp:TextBox ID="TbId" runat="server" Width="170px" Height="20px"></asp:TextBox></td>
            <td class="auto3">
               
                <asp:Label ID="LblName" runat="server" Text="Full Name" ></asp:Label></td>
            <td class="auto3">
               
                <asp:TextBox ID="TbName" runat="server" Width="170px" Height="20px"></asp:TextBox></td>
        </tr>
   
              <tr>
                  <td class="auto3">
                      <asp:Label ID="Label1" runat="server" Text="Telugu"></asp:Label></td>
                  <td class="auto3">
                      <asp:TextBox ID="TextBox1" runat="server" CssClass="caltotal"></asp:TextBox></td>
                   
                   <td class="auto3">
                      <asp:Label ID="Label2" runat="server" Text="Hindi"></asp:Label></td>
                  <td class="auto3">
                      <asp:TextBox ID="TextBox2" runat="server" CssClass="caltotal"></asp:TextBox></td>
                   </tr>
               <tr>
                  <td class="auto3">
                      <asp:Label ID="Label3" runat="server" Text="English"></asp:Label></td>
                  <td class="auto3">
                      <asp:TextBox ID="TextBox3" runat="server" CssClass="caltotal"></asp:TextBox></td>
                   
               
                  <td class="auto3">
                      <asp:Label ID="Label4" runat="server" Text="Maths"></asp:Label></td>
                  <td class="auto3">
                      <asp:TextBox ID="TextBox4" runat="server" CssClass="caltotal"></asp:TextBox></td>
                   </tr>
               <tr>
                  <td class="auto3">
                      <asp:Label ID="Label6" runat="server" Text="Science"></asp:Label></td>
                  <td class="auto3">
                      <asp:TextBox ID="TextBox5" runat="server" CssClass="caltotal"></asp:TextBox></td>
                   
               
                  <td class="auto3">
                      <asp:Label ID="Label7" runat="server" Text="Social"></asp:Label></td>
                  <td class="auto3">
                      <asp:TextBox ID="TextBox7" runat="server" CssClass="caltotal"></asp:TextBox></td>
                   </tr>
               <tr>
                  <td class="auto3">
                      &nbsp;</td>
                  <td class="auto3">
                      &nbsp;</td>
                   <td class="auto3">
                       <asp:Label ID="Label8" runat="server" Text="Total"></asp:Label></td>
                   <td class="auto3">
                       <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                   </tr>
             <tr>
                 <td class="auto3"></td>
                 <td class="auto3"></td>
                 <td class="auto3"></td>
                 <td class="auto3">
                     <asp:Button ID="BtnInsert" runat="server" Text="Save"  Width="150px" BackColor="#000099" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="50px" OnClientClick="return validmarks()" OnClick="BtnInsert_Click"/></td>
             </tr>
              <tr>
                 <td class="auto3"></td>
                 <td class="auto3"></td>
                 <td class="auto3"></td>
                 <td class="auto3">
                     &nbsp;</td>
             </tr>
             
              </table>
         
          </div>
</asp:Content>

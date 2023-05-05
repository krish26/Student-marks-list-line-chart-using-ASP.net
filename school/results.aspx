<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="results.aspx.cs" Inherits="school.results" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        ul {
  list-style-type: none;
  margin-left: 50px;
  padding: 20px;
  width: 60px;
  text-align:center;
} 
        .button {
  display: inline-block;
  border-radius: 50px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 10px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 20px;
}

        .main{
             background-image:url(../images/007.jpg);
             background-size:cover;
        }
        .button{
            opacity:0.7;
             filter: alpha(opacity=50);

        }
        .button:hover{
            background-color:aqua;
            opacity:5.0;
             filter: alpha(opacity=50);

        }

        .auto1 {
            width: 300px;
            height: 600px;
            display: block;
             background-color:#0001;
            box-shadow:inset 0 0.5px 3px rgb(52, 177, 177);
            text-align:center;
             
        }
        .auto2{
            width:400px;
            height:800px;
            margin-right:10px;
        }
        
    </style>
</head>
<body class="main">
    <form id="form1" runat="server">
        <div class="auto1">
            <ul class="auto2">
                <li> <asp:Button CssClass="button" ID="Button1" runat="server" Text="Class6" Width="140px" Height="100px"/></li>
                <li><asp:Button cssclass="button" ID="Button2" runat="server" Text="Class7" Width="140px" Height="100px"/></li>
                <li><asp:Button CssClass="button" ID="Button3" runat="server" Text="Class8" Width="140px" Height="100px"/></li>
                <li><asp:Button CssClass="button" ID="Button4" runat="server" Text="Class9" Width="140px" Height="100px"/> </li>
            </ul>
        </div>
        <div>

        </div>
        
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listele.aspx.cs" Inherits="AskOlcer.admin.listele" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">
        <br />
        <h2 style="color: orangered; text-align: center;">VERİLER</h2>
        <hr />

        <table class="table table-active table-success">
            <tr>
                <th>ID</th>
                <th>KULLANICI</th>
                <th>AŞKOSU</th>
                <th>YÜZDE</th>
                <th>YORUM</th>
               



            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                    <tr>
                        <td><%# Eval("ID") %></td>
                        <td style="color: red"><%# Eval("Kullanici") %></td>
                        <td><%# Eval("Askosu") %></td>
                        <td><%# Eval("Yuzde") %></td>
                        <td style="color: red"><%# Eval("Yorum") %></td>
                        

                    </tr>
                </ItemTemplate>
            </asp:Repeater>


        </table>
        </form>
</body>
</html>

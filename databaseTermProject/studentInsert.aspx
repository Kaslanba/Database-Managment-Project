<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentInsert.aspx.cs" Inherits="asp.netcrud.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="studentInsertStyle.css"/>
</head>
<body>
    <h1>STUDENT REGISTRATION</h1>
    <form id="form1" runat="server">
        <p>
            <a href ="mainPage.aspx">Home Page</a>
        </p>
    <div>
        <asp:HiddenField ID="hfAuthorID" runat="server"/>  <%--for saving AuthorID we use hiddenfield--%>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtName" runat="server" style="text-transform:uppercase;"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Last Name:</td>
                <td colspan="2">
                    <asp:TextBox ID="txtLastname" runat="server" style="text-transform:uppercase"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td colspan="2">
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td colspan="2">
                    <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                </td>
              
            
                <td colspan="2">
                    <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="gvAuthor" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="aut_firstName" HeaderText="Name" />
                <asp:BoundField DataField="aut_lastName" HeaderText="Last Name" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("AuthorID") %>' OnClick="lnk_OnClick">View</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    
      
    </form>
</body>
</html>

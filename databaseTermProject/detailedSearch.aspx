<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detailedSearch.aspx.cs" Inherits="databaseTermProject.detailedSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">

<h1 style = "color:steelblue; font-family:Arial">DETAILED SEARCH</h1>

<p>
   <a style="font-family:Arial" href ="mainPage.aspx">Home Page</a>
</p>

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="Gv1_SelectedIndexChanged">
<Columns>
<asp:TemplateField HeaderText="University">
<ItemTemplate>
<asp:TextBox runat="server" ID="txtUniversity" />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="">
<ItemTemplate>
<asp:DropDownList ID="ddlUniversity" runat="server" AutoPostBack="true" OnSelectedIndexChanged="Gv1_SelectedIndexChanged" ControlStyle-Width="150px">
<asp:ListItem Text="Maltepe Üniversitesi" />
<asp:ListItem Text="Marmara Üniversitesi" />
<asp:ListItem Text="İstanbul Üniversitesi" />
<asp:ListItem Text="Koç Üniversitesi" />
<asp:ListItem Text="Koç Üniversitesi" />
</asp:DropDownList>
</ItemTemplate>
</asp:TemplateField>
</Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>

<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="300px">
<Columns>
<asp:TemplateField HeaderText="Institute">
<ItemTemplate>
<asp:TextBox runat="server" ID="txtInstitute" />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="">
<ItemTemplate>
<asp:DropDownList ID="ddlInstitute" runat="server" AutoPostBack="true" OnSelectedIndexChanged="Gv2_SelectedIndexChanged" ControlStyle-Width="150px">
<asp:ListItem Text="Fen Bilimleri Enstitüsü" />
<asp:ListItem Text="Güzel Sanatlar Enstitüsü" />
<asp:ListItem Text="Sosyal Bilimler Enstitüsü" />
<asp:ListItem Text="Sağlık Bilimleri Enstitüsü" />
</asp:DropDownList>
</ItemTemplate>
</asp:TemplateField>
</Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>

<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="Gv3_SelectedIndexChanged" Width="289px">
<Columns>
<asp:TemplateField HeaderText="Subject">
<ItemTemplate>
<asp:TextBox runat="server" ID="txtSubject" />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="">
<ItemTemplate>
<asp:DropDownList ID="ddlSubject" runat="server" AutoPostBack="true" OnSelectedIndexChanged="Gv3_SelectedIndexChanged" ControlStyle-Width="150px">
<asp:ListItem Text="Nursing care in septic arthritis plus duodenal trauma plus ascariasis" />
<asp:ListItem Text="Obtaining nanocellulose from cellulose from abaca tips" />
<asp:ListItem Text="The evolution of art" />
<asp:ListItem Text="Hollywood vs. Bollywood" />
<asp:ListItem Text="Adoption and its influence on parent-child relationship" />
</asp:DropDownList>
</ItemTemplate>
</asp:TemplateField>
</Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>

<asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="Gv4_SelectedIndexChanged">
<Columns>
<asp:TemplateField HeaderText="Type">
<ItemTemplate>
<asp:TextBox runat="server" ID="txtType" />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="">
<ItemTemplate>
<asp:DropDownList ID="ddlType" runat="server" AutoPostBack="true" OnSelectedIndexChanged="Gv4_SelectedIndexChanged" ControlStyle-Width="150px">
<asp:ListItem Text="Doctorate" />
<asp:ListItem Text="Specialization in Medicine" />
<asp:ListItem Text="Proficiency in Art" />
<asp:ListItem Text="Master" />
</asp:DropDownList>
</ItemTemplate>
</asp:TemplateField>
</Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>

<asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
<Columns>
<asp:TemplateField HeaderText="Language">
<ItemTemplate>
<asp:TextBox runat="server" ID="txtLanguage" />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="">
<ItemTemplate>
<asp:DropDownList ID="ddlLanguage" runat="server" AutoPostBack="true" OnSelectedIndexChanged="Gv5_SelectedIndexChanged" ControlStyle-Width="150px">
<asp:ListItem Text="Turkish" />
<asp:ListItem Text="English" />
<asp:ListItem Text="Russian" />
<asp:ListItem Text="Spanish" />
<asp:ListItem Text="German" />
<asp:ListItem Text="French" />
</asp:DropDownList>
</ItemTemplate>
</asp:TemplateField>
</Columns>
    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>


    <asp:Button ID="Button1" runat="server" Text="Search" />
    <br />
&nbsp;<br/>

<asp:GridView ID="gvThesis" runat="server" AutoGenerateColumns="false" Width="242px">
            <Columns>
                <asp:BoundField DataField="aut_firstName" HeaderText="ThesisID" />
                <asp:BoundField DataField="aut_firstName" HeaderText="University" />
                <asp:BoundField DataField="aut_lastName" HeaderText="Institute" />
                <asp:BoundField DataField="aut_lastName" HeaderText="Subject" />
                <asp:BoundField DataField="aut_lastName" HeaderText="Type" />
                <asp:BoundField DataField="aut_lastName" HeaderText="Language" />  


                <asp:TemplateField>
                    <ItemTemplate>
                       
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
</form>

</body>

</html>

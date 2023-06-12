<%@ Page Title=""  Language="C#" MasterPageFile="~/MasterPage2222.master" AutoEventWireup="true" Theme="Blue" CodeFile="Default2222.aspx.cs" Inherits="Default2222" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="tablecss" align="center" width="30%">
<tr>
<td colspan="2" align="center" >
<h3>Registration Form</h3>
</td>
</tr>
<tr>
<td align="right">
UserName:
</td>
<td>
<asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td align="right">
Email:
</td>
<td>
<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td align="right">
Date of Birth:
</td>
<td>
<asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td align="right">
Education:
</td>
<td>
  <asp:DropDownList ID="ddl_Education" runat="server" Width="162px" OnSelectedIndexChanged="ddl_Education_SelectedIndexChanged" >
      <asp:ListItem>Red</asp:ListItem>
      <asp:ListItem>Blue</asp:ListItem>
    </asp:DropDownList>
</td>
</tr>
<tr>
<td align="right">
Address:
</td>
<td>
<asp:TextBox ID="txtAddress" runat="server" Columns="17" Rows="8" TextMode="MultiLine"></asp:TextBox>
</td>
</tr>
</table>

    &nbsp; <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="23px" Width="88px">

                            <asp:ListItem>select</asp:ListItem>

                            <asp:ListItem>Dark</asp:ListItem>

                            

                            <asp:ListItem>Blue</asp:ListItem>

                            <asp:ListItem>Red</asp:ListItem>

                            <asp:ListItem>Light</asp:ListItem>

                        </asp:DropDownList>

    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />

</asp:Content>


<%@ Page Title="Request" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Request.aspx.cs" Inherits="Request" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1> To request new items please fill the form below: </h1>

      <table class="tablecss" align="center" width="30%">
<tr>

    <td colspan="2" align="center">
        <h3>Item Registration Form</h3>
    </td>
          </tr>
          <tr>
              <td align="right">Item
              </td>
              <td>
                  <asp:TextBox ID="txtItem" runat="server"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td align="right" class="auto-style1">Price
              </td>
              <td class="auto-style1">
                  <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td align="right">Information
              </td>
              <td>
                  <asp:TextBox ID="txtInfo" runat="server"></asp:TextBox>
              </td>
          </tr>
          

          <td colspan="2" align="center">
              <asp:Button ID="Button1" runat="server" Text="Registar" OnClick="Button1_Click" />
    </td>



      </table>
</asp:Content>


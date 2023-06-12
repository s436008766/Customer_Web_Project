<%@ Page Title="Products" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="row">

        <div class="column">

            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="ITEM" HeaderText="ITEM" SortExpression="ITEM" />
                    <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
                    <asp:BoundField DataField="INFORMATION" HeaderText="INFORMATION" SortExpression="INFORMATION" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" DeleteCommand="DELETE FROM [Items] WHERE [ID] = @original_ID AND [ITEM] = @original_ITEM AND [PRICE] = @original_PRICE AND (([INFORMATION] = @original_INFORMATION) OR ([INFORMATION] IS NULL AND @original_INFORMATION IS NULL))" InsertCommand="INSERT INTO [Items] ([ID], [ITEM], [PRICE], [INFORMATION]) VALUES (@ID, @ITEM, @PRICE, @INFORMATION)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:TestConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Items]" UpdateCommand="UPDATE [Items] SET [ITEM] = @ITEM, [PRICE] = @PRICE, [INFORMATION] = @INFORMATION WHERE [ID] = @original_ID AND [ITEM] = @original_ITEM AND [PRICE] = @original_PRICE AND (([INFORMATION] = @original_INFORMATION) OR ([INFORMATION] IS NULL AND @original_INFORMATION IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_ITEM" Type="String" />
                    <asp:Parameter Name="original_PRICE" Type="Decimal" />
                    <asp:Parameter Name="original_INFORMATION" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                    <asp:Parameter Name="ITEM" Type="String" />
                    <asp:Parameter Name="PRICE" Type="Decimal" />
                    <asp:Parameter Name="INFORMATION" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ITEM" Type="String" />
                    <asp:Parameter Name="PRICE" Type="Decimal" />
                    <asp:Parameter Name="INFORMATION" Type="String" />
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_ITEM" Type="String" />
                    <asp:Parameter Name="original_PRICE" Type="Decimal" />
                    <asp:Parameter Name="original_INFORMATION" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>


        <div class="column">

            <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource2" GridLines="Both">
                <EditItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    ITEM:
                    <asp:TextBox ID="ITEMTextBox" runat="server" Text='<%# Bind("ITEM") %>' />
                    <br />
                    PRICE:
                    <asp:TextBox ID="PRICETextBox" runat="server" Text='<%# Bind("PRICE") %>' />
                    <br />
                    INFORMATION:
                    <asp:TextBox ID="INFORMATIONTextBox" runat="server" Text='<%# Bind("INFORMATION") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    ID:
                    <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                    <br />
                    ITEM:
                    <asp:TextBox ID="ITEMTextBox" runat="server" Text='<%# Bind("ITEM") %>' />
                    <br />
                    PRICE:
                    <asp:TextBox ID="PRICETextBox" runat="server" Text='<%# Bind("PRICE") %>' />
                    <br />
                    INFORMATION:
                    <asp:TextBox ID="INFORMATIONTextBox" runat="server" Text='<%# Bind("INFORMATION") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    ITEM:
                    <asp:Label ID="ITEMLabel" runat="server" Text='<%# Bind("ITEM") %>' />
                    <br />
                    PRICE:
                    <asp:Label ID="PRICELabel" runat="server" Text='<%# Bind("PRICE") %>' />
                    <br />
                    INFORMATION:
                    <asp:Label ID="INFORMATIONLabel" runat="server" Text='<%# Bind("INFORMATION") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TestConnectionString %>" DeleteCommand="DELETE FROM [Items] WHERE [ID] = @original_ID AND [ITEM] = @original_ITEM AND [PRICE] = @original_PRICE AND (([INFORMATION] = @original_INFORMATION) OR ([INFORMATION] IS NULL AND @original_INFORMATION IS NULL))" InsertCommand="INSERT INTO [Items] ([ID], [ITEM], [PRICE], [INFORMATION]) VALUES (@ID, @ITEM, @PRICE, @INFORMATION)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Items] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [Items] SET [ITEM] = @ITEM, [PRICE] = @PRICE, [INFORMATION] = @INFORMATION WHERE [ID] = @original_ID AND [ITEM] = @original_ITEM AND [PRICE] = @original_PRICE AND (([INFORMATION] = @original_INFORMATION) OR ([INFORMATION] IS NULL AND @original_INFORMATION IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_ITEM" Type="String" />
                    <asp:Parameter Name="original_PRICE" Type="Decimal" />
                    <asp:Parameter Name="original_INFORMATION" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                    <asp:Parameter Name="ITEM" Type="String" />
                    <asp:Parameter Name="PRICE" Type="Decimal" />
                    <asp:Parameter Name="INFORMATION" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="ID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ITEM" Type="String" />
                    <asp:Parameter Name="PRICE" Type="Decimal" />
                    <asp:Parameter Name="INFORMATION" Type="String" />
                    <asp:Parameter Name="original_ID" Type="Int32" />
                    <asp:Parameter Name="original_ITEM" Type="String" />
                    <asp:Parameter Name="original_PRICE" Type="Decimal" />
                    <asp:Parameter Name="original_INFORMATION" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>


    </div>

   

</asp:Content>


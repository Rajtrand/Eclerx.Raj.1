<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentAccountDetails.aspx.cs" Inherits="Eclerx.Raj._1.StudentAccountDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            StudentAccountDetails</div>
        <p>
            <asp:Label ID="LblUserName" runat="server" Text="User Name"></asp:Label>
            <asp:TextBox ID="TxtUserName" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator Text="*" ID="UserName" runat="server" ErrorMessage="Please enter User Name" ControlToValidate="TxtUserName" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <asp:Label ID="LblPassword" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="TxtPassword" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RfvPassword" Text="*" ForeColor="Red" ErrorMessage="Password is required" ControlToValidate="TxtPassword" runat="server" />
        <p>
            <asp:Label ID="LblConfirmPassword" runat="server" Text="ConfirmPassword"></asp:Label>
            <asp:TextBox ID="TxtConfirmPassword" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CvPassword" Text="*" ErrorMessage="Password and Confirm Password doesn't match" ControlToValidate="TxtConfirmPassword" ControlToCompare="TxtPassword" ForeColor="Red" runat="server" />
        </p>
        <p>
            <asp:Label ID="LblHobbies" runat="server" Text="Hobbies"></asp:Label>
&nbsp;<asp:CheckBoxList ID="CheckBoxList1" runat="server">
    <asp:ListItem>Painting</asp:ListItem>
    <asp:ListItem>football</asp:ListItem>
    <asp:ListItem>Dance</asp:ListItem>
            </asp:CheckBoxList>
        </p>
        <asp:Button ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click" Text="Submit" />
    </form>
</body>
</html>
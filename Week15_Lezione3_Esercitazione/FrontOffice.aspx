<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrontOffice.aspx.cs" Inherits="Week15_Lezione3_Esercitazione.Templates.FrontOffice" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="../Styles/Styles.css" rel="stylesheet" />
    <title>Cinema Booking System</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous" defer></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main-container m-3">
            <div class="InsertData">
                <label>ID Prenotazione</label>
                <asp:TextBox ID="TxtID" runat="server" placeholder="ID Ordine da modificare"></asp:TextBox>
            </div>
            <div class="InsertData">
                <label>Nome</label>
                <asp:TextBox ID="TxtName" runat="server" placeholder="Nome"></asp:TextBox>
            </div>
            <div class="InsertData">
                <label>Cognome</label>
                <asp:TextBox ID="TxtLastName" runat="server" placeholder="Cognome"></asp:TextBox>
            </div>

            <div class="InsertData">
                <label>Sala</label>
                <asp:DropDownList ID="SelectMenu" runat="server">
                    <asp:ListItem Text="Sala Nord" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Sala Est" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Sala Sud" Value="3"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="InsertData">
                <label>Biglietto</label>
                <asp:DropDownList ID="SelectTicket" runat="server">
                    <asp:ListItem Text="Intero" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Ridotto" Value="2"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="InsertData">
                <asp:Button ID="BtnBook" runat="server" Text="Book Tickets" CssClass="btn btn-warning" OnClick="BookTickets" />
                <asp:Button ID="BtnCount" runat="server" Text="Count Customers" CssClass="btn btn-success" OnClick="CountCustomers" />
                <asp:Button ID="BtnUpdate" runat="server" Text="Update Booking" CssClass="btn btn-danger" OnClick="UpdateBooking" />
            </div>
        </div>
        <br />
        <br />
        <asp:Label ID="LblPrint" runat="server"></asp:Label>
    </form>
</body>
</html>

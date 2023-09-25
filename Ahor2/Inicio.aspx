<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Ahor2.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_cabezara" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 1103px;
        }
        .auto-style3 {
            width: 1107px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_mensaje" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_contenido" runat="server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <table class="w-100">
                <tr>
                    <td colspan="2">
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="EL AHORCADO"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="REGLAS DEL JUEGO:"></asp:Label>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="1. El jugador tendra que ingresar su nombre para poder iniciar el juego."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Text="2. El juegador tendra que elegir la dificultad del juego."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Text="3. Una vez hecho los dos pasos anteriores se presiona el boton JUGAR."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Text="4. El jugador podra obserbar su nombre de jugadar, la dificultad y los intentos usados."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Text="5. El jugador debe presionar los botones en la pantalla para completar la palabra a adivinar."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" Text="6. Si el jugador acaba sus intentos y no adivina la palabra significa que es una Derrota."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label9" runat="server" Text="7. Si el jugador adivina la palabra significa que es una Victoria."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label20" runat="server" Text="8. Al finalizar el juego el jugador podra decidir si quiere guardar sus estaditicas o reiniciar el juego."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <br />
                        <br />
                        <br />
                        ¡¡¡BUENA SUERTE Y DIVIERTETE!!!</td>
                </tr>
                <tr>
                    <td align="center" class="auto-style3">
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label10" runat="server" Text="Ingrese su nombre de jugador: "></asp:Label>
                        <br />
                        <asp:TextBox ID="txtNombre" runat="server" Width="403px"></asp:TextBox>
                    </td>
                    <td align="center">
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Label11" runat="server" Text="Dificultad del nivel:"></asp:Label>
                        <br />
                        <asp:DropDownList ID="DdlDificultad" runat="server" Width="354px">
                            <asp:ListItem Value="0">Seleccione...</asp:ListItem>
                            <asp:ListItem Value="10">10 Intentos</asp:ListItem>
                            <asp:ListItem Value="5">5 Intentos</asp:ListItem>
                            <asp:ListItem Value="3">3 Intentos</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <br />
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                        <br />
                        <asp:Button ID="btnJuego" runat="server" Text="JUGAR" OnClick="btnJuego_Click" />
                    </td>
                </tr>
            </table>

        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="Ahorcado2.aspx.cs" Inherits="Ahor2.Ahorcado2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_cabezara" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 977px;
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
                        <asp:Label ID="Label1" runat="server" Text="EL AHORCADO"></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>    
                <tr>
                    <td align="" class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="JUGADOR: "></asp:Label>
                        <asp:Label ID="lblNombre" runat="server"></asp:Label>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Text="DIFICULTAD DE: "></asp:Label>
                        <asp:Label ID="lblDifi" runat="server"></asp:Label>
                    </td>
                    <td align="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="INTENTOS USADOS: "></asp:Label>
                        <asp:Label ID="lblIntentos" runat="server">0</asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <table class="w-100">
                <tr>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnA" runat="server" Height="90px" ImageUrl="~/Abecedario/a.png" CommandArgument="A" CommandName="A" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnB" runat="server" Height="90px" ImageUrl="~/Abecedario/b.png" CommandArgument="B" CommandName="B" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnC" runat="server" Height="90px" ImageUrl="~/Abecedario/c.png" CommandArgument="C" CommandName="C" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnD" runat="server" Height="90px" ImageUrl="~/Abecedario/d.png" CommandArgument="D" CommandName="D" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnE" runat="server" Height="90px" ImageUrl="~/Abecedario/e.png" CommandArgument="E" CommandName="E" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnF" runat="server" Height="90px" ImageUrl="~/Abecedario/f.png" CommandArgument="F" CommandName="F" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnG" runat="server" Height="90px" ImageUrl="~/Abecedario/g.png" CommandArgument="G" CommandName="G" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnH" runat="server" Height="90px" ImageUrl="~/Abecedario/h.png" CommandArgument="H" CommandName="H" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnI" runat="server" Height="90px" ImageUrl="~/Abecedario/i.png" CommandArgument="I" CommandName="I" OnClick="btn_Click"/>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnJ" runat="server" Height="90px" ImageUrl="~/Abecedario/j.png" CommandArgument="J" CommandName="J" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnK" runat="server" Height="90px" ImageUrl="~/Abecedario/k.png" CommandArgument="K" CommandName="K" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnL" runat="server" Height="90px" ImageUrl="~/Abecedario/l.png" CommandArgument="L" CommandName="L" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnM" runat="server" Height="90px" ImageUrl="~/Abecedario/m.png" CommandArgument="M" CommandName="M" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnN" runat="server" Height="90px" ImageUrl="~/Abecedario/n.png" CommandArgument="N" CommandName="N" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnÑ" runat="server" Height="90px" ImageUrl="~/Abecedario/ñ.png" CommandArgument="Ñ" CommandName="Ñ" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnO" runat="server" Height="90px" ImageUrl="~/Abecedario/o.png" CommandArgument="O" CommandName="O" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnP" runat="server" Height="90px" ImageUrl="~/Abecedario/p.png" CommandArgument="P" CommandName="P" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnQ" runat="server" Height="90px" ImageUrl="~/Abecedario/q.png" CommandArgument="Q" CommandName="Q" OnClick="btn_Click"/>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnR" runat="server" Height="90px" ImageUrl="~/Abecedario/r.png" CommandArgument="R" CommandName="R" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnS" runat="server" Height="90px" ImageUrl="~/Abecedario/s.png" CommandArgument="S" CommandName="S" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnT" runat="server" Height="90px" ImageUrl="~/Abecedario/t.png" CommandArgument="T" CommandName="T" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnU" runat="server" Height="90px" ImageUrl="~/Abecedario/u.png" CommandArgument="U" CommandName="U" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnV" runat="server" Height="90px" ImageUrl="~/Abecedario/v.png" CommandArgument="V" CommandName="V" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnW" runat="server" Height="90px" ImageUrl="~/Abecedario/w.png" CommandArgument="W" CommandName="W" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnX" runat="server" Height="90px" ImageUrl="~/Abecedario/x.png" CommandArgument="X" CommandName="X" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnY" runat="server" Height="90px" ImageUrl="~/Abecedario/y.png" CommandArgument="Y" CommandName="Y" OnClick="btn_Click"/>
                    </td>
                    <td align="center">
                        <asp:ImageButton ID="ImgBtnZ" runat="server" Height="90px" ImageUrl="~/Abecedario/z.png" CommandArgument="Z" CommandName="Z" OnClick="btn_Click"/>
                    </td>
                </tr>
            </table>
            <br />
            <table class="w-100">
                <tr>
                    <td class="auto-style1" align="center">

                        <asp:Label ID="palabra" runat="server"></asp:Label>

                        <br />
                        <br />
                        <asp:Button ID="reiniciar" runat="server" Text="Reiniciar" OnClick="reiniciar_Click" Visible="False"/>
                        <br />
                        <br />
                        <asp:Label ID="lblMenGuar" runat="server"></asp:Label>

                        <br />
                        <br />
                        <asp:Button ID="btnInicio" runat="server" Text="Volver al inicio" OnClick="btnInicio_Click" />

                    </td>
                    <td align="center">
                        <asp:Label ID="lblMensaje" runat="server" ForeColor="#CC0000"></asp:Label>
                        <br />
                        <asp:Image ID="ImgAhorcado" runat="server" Height="450px" Width="465px" />
                    </td>
                </tr>
            </table>

        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

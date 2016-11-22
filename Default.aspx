<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Controles de validación</title>
    <link href="public/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="panel-primary">
            <div class="panel-heading">Trabajo con controles de validación</div>
            <div class="panel-body">

                <form runat="server" method="post"  id="form">
                    <p>
                        <asp:ValidationSummary runat="server" HeaderText="" DisplayMode="BulletList" CssClass="alert alert-danger" />
                    </p>

                    <p>
                        <asp:Label runat="server" >Nombre:</asp:Label>
                        <asp:TextBox ID="nombre" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="nombre" ErrorMessage="El campo nombre es requerido" Display="None"></asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label runat="server" >E-Mail:</asp:Label>
                        <asp:TextBox ID="correo" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="correo" ErrorMessage="El campo E-Mail es requerido" Display="None"></asp:RequiredFieldValidator>

                         <asp:RegularExpressionValidator ControlToValidate="correo" ErrorMessage="El E-Mail ingresado no es válido" Display="None" ValidationExpression="^[\w-]+@[\w-]+\.(com|net|org|edu|mil)$" runat="server">
              </asp:RegularExpressionValidator>

                    </p>
                    <hr />
                    <asp:Button ID="enviar_form" runat="server" Text="Enviar" CssClass="btn btn-default" OnClick="ProcesarFormulario"/>

                </form>
                <hr />
                <ul>
                    <li><asp:Label ID="resultado_nombre" runat="server" /></li>
                </ul>

            </div>
        </div>
    </div>

</body>
</html>

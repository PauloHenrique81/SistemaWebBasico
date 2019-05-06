<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetalhesFuncionario.aspx.cs" MasterPageFile="CadastroMasterPage.Master" Inherits="SistemaBasicoDeControle.BuscarFuncionario" %>

<asp:Content ID="Content3" ContentPlaceHolderID="C4" runat="Server">



    <div class="container-fluid">

        <form runat="server">

          
           <div class="form-row">
                <div class="col-md-10 mb-3">
                    <h1 class="mt-4">Informações do Funcionário</h1>
                </div>
                
            </div>
            
            
            <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>Nome</label>
                </div>
                <div class="col-md-9 mb-3">
                    <input type="text" class="form-control" id="textNome" placeholder="Nome" runat="server">
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>CPF</label>
                </div>
                <div class="col-md-9 mb-3">
                    <input type="text" class="form-control"  id="textCpf" placeholder="CPF" runat="server">
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>RG</label>
                </div>
                <div class="col-md-9 mb-3">
                    <input type="text" class="form-control"  id="textRg" placeholder="RG" runat="server">
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>Data Nas.</label>
                </div>
                <div class="col-md-9 mb-3">
                    <input type="text" class="form-control"  id="textDataDeNascimento" placeholder="Data de Nascimento" runat="server">
                </div>
            </div>

            <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>Telefone</label>
                </div>
                <div class="col-md-9 mb-3">
                    <input type="text" class="form-control"  id="textTelefone" placeholder="Telefone" runat="server">
                </div>
            </div>

            <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>E-Mail</label>
                </div>
                <div class="col-md-9 mb-3">
                    <input type="text" class="form-control"  id="textEmail" placeholder="E-Mail" runat="server">
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>Cidade</label>
                </div>
                <div class="col-md-9 mb-3">
                    <input type="text" class="form-control"  id="textCidade" placeholder="Cidade" runat="server">
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>Estado</label>
                </div>
                <div class="col-md-9 mb-3">
                    <input type="text" class="form-control"  id="textEstado" placeholder="Estado" runat="server">
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>CEP</label>
                </div>
                <div class="col-md-9 mb-3">
                    <input type="text" class="form-control"  id="textCep" placeholder="CEP" runat="server">
                </div>
            </div>

            <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>Cargo</label>
                </div>
                <div class="col-md-9 mb-3">
                    <input type="text" class="form-control"  id="textCargo" placeholder="Cargo" runat="server">
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>Formação</label>
                </div>
                <div class="col-md-9 mb-3">
                    <input type="text" class="form-control"  id="textFormacao" placeholder="Formação" runat="server">
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>Salario</label>
                </div>
                <div class="col-md-9 mb-3">
                    <input type="text" class="form-control"  id="textSalario" placeholder="Salario" runat="server">
                </div>
            </div>
            <button class="btn btn-primary" id="btnCancelar" type="button">Cancelar</button>
            <button Class="btn btn-primary"   type="button" id="btnAlterar">Alterar Dados</button>
            <asp:button CssClass="btn btn-success" id="btnSalvar" Text="Cadastrar" runat="server" />
            <asp:button CssClass="btn btn-danger" id="btnDeletar" Text="Deletar" runat="server" />



        </form>
    </div>


    <script>
        $("#menu-toggle").click(function (e) {
            e.preventDefault();
            $("#wrapper").toggleClass("toggled");
        });
    </script>
    <script type="text/javascript" src="JavaScript/Funcionario/Detalhes.js"></script>


</asp:Content>

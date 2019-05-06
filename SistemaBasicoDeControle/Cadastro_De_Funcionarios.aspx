<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro_De_Funcionarios.aspx.cs" MasterPageFile="CadastroMasterPage.Master" Inherits="SistemaBasicoDeControle.Cadastro_De_Funcionarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="C1" Runat="Server">
    <!-- Menu Toggle Script -->
  
    <div class="container-fluid">
        <h1 class="mt-4">Cadastrar Funcionário</h1>

        <form runat="server">
            <div class="form-row">
                <div class="col-md-4 mb-3">
                    <label for="validationDefault01">Nome</label>
                    <input type="text" class="form-control" id="inputNome" placeholder="Nome" runat="server" required>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="validationDefault02">Data de Nascimento</label>
                    <input type="text" class="form-control" id="inputDataDeNascimento" placeholder="Data de Nascimento" runat="server" required>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="validationDefault01">E-Mail</label>
                    <input type="text" class="form-control" id="inputEmail" placeholder="E-Mail" runat="server" required>
                </div>
            </div>

            <div class="form-row">
                <div class="col-md-4 mb-3">
                    <label for="validationDefault01">CPF</label>
                    <input type="text" class="form-control" id="inputCpf" placeholder="CPF" runat="server" required>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="validationDefault02">RG</label>
                    <input type="text" class="form-control" id="inputRg" placeholder="RG" runat="server" required>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="validationDefault02">Telefone</label>
                    <input type="text" class="form-control" id="inputTelefone" placeholder="Telefone" runat="server" required>
                </div>
            </div>


            <div class="form-row">
                <div class="col-md-6 mb-3">
                    <label for="validationDefault03">Cidade</label>
                    <input type="text" class="form-control" id="inputCidade" placeholder="Cidade" runat="server" required>
                </div>
                <div class="col-md-3 mb-3">
                    <label for="validationDefault04">Estado</label>
                    <input type="text" class="form-control" id="inputEstado" placeholder="Estado" runat="server" required>
                </div>
                <div class="col-md-3 mb-3">
                    <label for="validationDefault05">CEP</label>
                    <input type="text" class="form-control" id="inputCep" placeholder="CEP" runat="server" required>
                </div>
            </div>


            <div class="form-row">
                <div class="col-md-4 mb-3">
                    <label for="validationDefault01">Cargo</label>
                    <input type="text" class="form-control" id="inputCargo" placeholder="Cargo" runat="server" required>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="validationDefault02">Formação</label>
                    <input type="text" class="form-control" id="inputFormacao" placeholder="Formação" runat="server" required>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="validationDefault02">Salario</label>
                    <input type="text" class="form-control" id="inputSalario" placeholder="Salario" runat="server" required>
                </div>
            </div>

            <button class="btn btn-primary" type="submit">Cancelar</button>
            <asp:button CssClass="btn btn-primary"  id="btnCadastrar2" Text="Cadastrar" runat="server" onclick="BtnCadastrar_Click"/>

        </form>

    </div>

      <script>
          $("#menu-toggle").click(function (e) {
              e.preventDefault();
              $("#wrapper").toggleClass("toggled");
          });
       </script>
</asp:Content>






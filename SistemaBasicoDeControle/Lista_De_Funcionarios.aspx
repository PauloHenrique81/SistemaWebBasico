<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lista_De_Funcionarios.aspx.cs" MasterPageFile="CadastroMasterPage.Master" Inherits="SistemaBasicoDeControle.Lista_De_Funcionarios" %>

<asp:Content ID="Content2" ContentPlaceHolderID="C2" runat="Server">
    
    <link rel="stylesheet" type="text/css" href="StyleCss/ListagemDeFuncionarios.css">

    <h1 class="mt-4">Lista de Funcionários cadastrados</h1>
       <form runat="server">
             <div class="form-row">
                <div class="col-md-12 mb-3">
                    <input type="text" class="form-control" id="inputNomeBusca" placeholder="Digite o nome do Funcionário que deseja encontrar">   
                </div>  
            </div>
        </form>
    <table class="table table-striped">

        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Nome</th>
                <th scope="col">CPF</th>
                <th scope="col">Cargo</th>
            </tr>
        </thead>
        <tbody id="tabelaDeFuncionarios">
  
        </tbody>
    </table>


    <script>
        $("#menu-toggle").click(function (e) {
            e.preventDefault();
            $("#wrapper").toggleClass("toggled");
        });
    </script>
    <script src="JavaScript/jquery.js" type="text/javascript"></script>  
    <script type="text/javascript" src="JavaScript/ListagemDeFuncionarios.js"></script>
    <script type="text/javascript" src="JavaScript/Filtro_ListagemDeFuncionarios.js"></script>


</asp:Content>


﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuscarFuncionario.aspx.cs" MasterPageFile="CadastroMasterPage.Master" Inherits="SistemaBasicoDeControle.BuscarFuncionario" %>

<asp:Content ID="Content3" ContentPlaceHolderID="C4" Runat="Server">
    
    
    
    <div class="container-fluid">
            <h1 class="mt-4">Buscar dados de um  Funcionário</h1>
             <form runat="server">
        
         <div class="form-row">
            <div class="col-md-8 mb-3">
                <input type="text" class="form-control" id="inputCpfBusca" placeholder="Digite o CPF do Funcionário">   
            </div>
            <div class="col-md-4 mb-3">
                <button type="submit" class="btn btn-primary mb-2">Buscar</button>  
            </div>    
        </div>

          <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label for="textNome">Nome</label>
                </div>
                <div class="col-md-8 mb-3">
                    <input type="text" class="form-control" id="textNome" placeholder="Nome" runat="server">
                </div>
          </div>
         <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>CPF</label>
                </div>
                <div class="col-md-8 mb-3">
                    <input type="text" class="form-control" id="textCpf" placeholder="CPF" runat="server" >
                </div>
          </div>
         <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>RG</label>
                </div>
                <div class="col-md-8 mb-3">
                    <input type="text" class="form-control" id="textRg" placeholder="RG" runat="server">
                </div>
          </div>
         <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>Data Nas.</label>
                </div>
                <div class="col-md-8 mb-3">
                    <input type="text" class="form-control" id="textDataDeNascimento" placeholder="Data de Nascimento" runat="server" >
                </div>
          </div>

         <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>Telefone</label>
                </div>
                <div class="col-md-8 mb-3">
                    <input type="text" class="form-control" id="textTelefone" placeholder="Telefone" runat="server" >
                </div>
          </div>

         <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>E-Mail</label>
                </div>
                <div class="col-md-8 mb-3">
                    <input type="text" class="form-control" id="textEmail" placeholder="E-Mail" runat="server" >
                </div>
          </div>
         <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>Cidade</label>
                </div>
                <div class="col-md-8 mb-3">
                    <input type="text" class="form-control" id="textCidade" placeholder="Cidade" runat="server" >
                </div>
          </div>
         <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>Estado</label>
                </div>
                <div class="col-md-8 mb-3">
                    <input type="text" class="form-control" id="textEstado" placeholder="Estado" runat="server" >
                </div>
          </div>
         <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>CEP</label>
                </div>
                <div class="col-md-8 mb-3">
                    <input type="text" class="form-control" id="textCep" placeholder="CEP" runat="server" >
                </div>
          </div>

         <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>Cargo</label>
                </div>
                <div class="col-md-8 mb-3">
                    <input type="text" class="form-control" id="textCargo" placeholder="Cargo" runat="server" >
                </div>
          </div>
          <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>Formação</label>
                </div>
                <div class="col-md-8 mb-3">
                    <input type="text" class="form-control" id="textFormacao" placeholder="Formação" runat="server" >
                </div>
          </div>
         <div class="form-row">
                <div class="col-md-1 mb-1">
                    <label>Salario</label>
                </div>
                <div class="col-md-8 mb-3">
                    <input type="text" class="form-control" id="textSalario" placeholder="Salario" runat="server" >
                </div>
          </div>

     </form>
        </div>
     
    
    <script>
          $("#menu-toggle").click(function (e) {
              e.preventDefault();
              $("#wrapper").toggleClass("toggled");
          });
       </script>
    

</asp:Content>
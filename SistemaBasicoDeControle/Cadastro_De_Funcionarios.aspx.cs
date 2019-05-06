using SistemaBasicoDeControle.Models;
using SistemaBasicoDeControle.Persistencia;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaBasicoDeControle
{
    public partial class Cadastro_De_Funcionarios : System.Web.UI.Page
    {

        protected override void OnInit(EventArgs e)
        {
            
        }


        protected void BtnCadastrar_Click(object sender, EventArgs e)
        {
            var funcionario =
                new Funcionario(

                        inputNome.Value,
                        inputCpf.Value,
                        inputRg.Value,
                        inputTelefone.Value,
                        inputDataDeNascimento.Value,
                        inputCidade.Value,
                        inputEstado.Value,
                        inputCep.Value,
                        inputCargo.Value,
                        inputFormacao.Value,
                        float.Parse(inputSalario.Value),
                        inputEmail.Value
                    );

            if (Per_Funcionario.Cadastrar(funcionario))
                this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "script", "alert('Cadastrado com Sucesso!')", true);


        }

       
    }
}
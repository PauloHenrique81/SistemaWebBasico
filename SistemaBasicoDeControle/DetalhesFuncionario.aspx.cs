using Newtonsoft.Json;
using SistemaBasicoDeControle.Models;
using SistemaBasicoDeControle.Persistencia;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaBasicoDeControle
{
    public partial class BuscarFuncionario : System.Web.UI.Page
    {
        public static string funcionario { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["Id"] != null)
            {
                string cpf = Request["Id"].ToString();

               var obj =  Per_Funcionario.BuscarPeloCpf(cpf);
                
                if(obj != null)
                  funcionario = JsonConvert.SerializeObject(obj);
            }

            btnSalvar.Click += BtnSalvar_Click;
            btnDeletar.Click += BtnDeletar_Click;
        }

        private void BtnDeletar_Click(object sender, EventArgs e)
        {
            deletarFuncionario();
            Response.Redirect("Lista_De_Funcionarios.aspx");
        }

        private void BtnSalvar_Click(object sender, EventArgs e)
        {
            var funcionario =
                new Funcionario(
                    textNome.Value,
                    textCpf.Value,
                    textRg.Value,
                    textTelefone.Value,
                    textDataDeNascimento.Value,
                    textCidade.Value,
                    textEstado.Value,
                    textCep.Value,
                    textCargo.Value,
                    textFormacao.Value,
                    float.Parse(textSalario.Value),
                    textEmail.Value
                    );

            atualizaFuncionario(funcionario);
            this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "script", "alert('Alterado com Sucesso!')", true);
        }
        


        [WebMethod]
        public static string retornaFuncionario()
        {
            return funcionario;
        }

        [WebMethod]
        public static void atualizaFuncionario(Funcionario funcionario)
        {
            Per_Funcionario.EditarPeloCpf(funcionario);
        }


        public void deletarFuncionario()
        {
            Per_Funcionario.Deletar(Request["Id"].ToString());
        }
    }
}
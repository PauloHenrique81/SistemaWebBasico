using Newtonsoft.Json;
using SistemaBasicoDeControle.Persistencia;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaBasicoDeControle
{
    public partial class Lista_De_Funcionarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        [WebMethod]
        public static string retornaFuncionarios()
        {
            return JsonConvert.SerializeObject(Per_Funcionario.BuscarTodos());
        }

    }
}
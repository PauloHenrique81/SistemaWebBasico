using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaBasicoDeControle
{
    public partial class BuscarFuncionario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["Id"] != null)
            {
                string teste = Request["Id"].ToString();
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*
        ScriptManager.ScriptResourceMapping.AddDefinition
            (
                "jquery",new ScriptResourceDefinition
                {
                    Path = "~/public/js/jquery.js",
                    DebugPath = "~/public/js/jquery.js",
                    CdnSupportsSecureConnection = true,
                    LoadSuccessExpression = "window.jQuery"
                }
            );
         */
    }
    public void ProcesarFormulario(object sender,EventArgs e)
    {
        if (IsValid)//si es verdadero que el formulario ha sido enviado vía POST
        {
            resultado_nombre.Text = nombre.Text;
        }
    }
}
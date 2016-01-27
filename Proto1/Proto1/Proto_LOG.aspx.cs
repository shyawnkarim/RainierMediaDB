using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;

namespace Proto1
{
    public partial class Proto_LOG : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //DataKeyArray updtgridview = new DataKeyArray[UpdatePanel];
        } 

        
        public event GridViewEditEventHandler RowUpdating;
    
        //GridViewEditEventHandler
            //UpdateGridview = new GridViewEditEventArgs

            
        

        protected void Button2_Click(object sender, EventArgs e)
        {
            //TextBox1.Text = " some note ";
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButtonCommunications_Click(object sender, EventArgs e)
        {
            if (!IsPostBack) ;
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {
            if (!IsPostBack) ;
        }
    }
}
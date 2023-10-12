using Online_Geocery.Models;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Geocery.View.Admin
{
    public partial class Sellers : System.Web.UI.Page
    {
        DataAccess data;
        protected void Page_Load(object sender, EventArgs e)
        {
            data = new DataAccess();
            Showseller();
        }
        // add this method
        public override void VerifyRenderingInServerForm(Control control)
        {
           
        }
        private void Showseller()
        {
            string query = "select * from sellerTbl";
            SellerGridView.DataSource = data.getData(query );
           
            SellerGridView.DataBind ();
        }
        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if(SellerPassword.Value==""||SellerAddress.Value == ""|| SellerEmail.Value==""
                    || SellerName.Value ==""|| SellerPhone.Value =="")
                {
                    errMessage.InnerText = "Missing Data";
                }
                else
                {
                    string sellerName = SellerName.Value;
                    string sellerEmail = SellerEmail.Value;
                    string sellerAddress= SellerAddress.Value;
                    string sellerPhone= SellerPhone.Value;
                    string sellerPassword = SellerPassword.Value;
                    string query = "INSERT INTO SellerTbl(SellerName," +
                        "SellerEmail,SellerPassword,SellerPhone,SellerAddress)" +
                        " Values('"+sellerName+"','"+sellerEmail+"','"+sellerPassword+"', '"+sellerPhone+"','"+sellerAddress+"')";
                    DataAccess data = new DataAccess();
                    data.SetData(query);
                    Showseller();
                    errMessage.InnerText = "Seller added";
                }
            }catch(Exception ex)
            {
                errMessage.InnerText =ex.Message;
            }
        }
        int key =0;
        protected void SellerGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            SellerName.Value = SellerGridView.SelectedRow.Cells[1].Text;
            SellerEmail.Value = SellerGridView.SelectedRow.Cells[3].Text;
            SellerAddress.Value = SellerGridView.SelectedRow.Cells[4].Text;
            SellerPhone.Value = SellerGridView.SelectedRow.Cells[5].Text;
            SellerPassword.Value = SellerGridView.SelectedRow.Cells[6].Text;
            if (SellerName.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(SellerName.Value = SellerGridView.SelectedRow.Cells[1].Text);
            }
        }

        protected void BtnEdit_Click(object sender, EventArgs e)
        {

            try
            {
                if (SellerPassword.Value == "" || SellerAddress.Value == "" || SellerEmail.Value == ""
                    || SellerName.Value == "" || SellerPhone.Value == "")
                {
                    errMessage.InnerText = "Missing Data";
                }
                else
                {
                    string sellerName = SellerName.Value;
                    string sellerEmail = SellerEmail.Value;
                    string sellerAddress = SellerAddress.Value;
                    string sellerPhone = SellerPhone.Value;
                    string sellerPassword = SellerPassword.Value;
                    string query = "UPDATE SellerTbl SET SellerName= '" + sellerName + "'," +
                        "SellerEmail ='"+sellerEmail+ "',SellerAddress='"+sellerAddress+"'" +
                        ",SellerPhone='"+sellerPhone+"',SellerPassword='"+sellerPassword+"'";
                       
                    data.SetData(query);
                    Showseller();
                    errMessage.InnerText = "Seller Updated";
                }
            }
            catch (Exception ex)
            {
                errMessage.InnerText = ex.Message;
            }
        }
    }
}
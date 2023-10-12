<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Online_Geocery.View.Admin.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class ="col-md-4"></div>
            <div class ="col-md-8"><br /><img src="../../Asset/Images/Geocery.jpeg"><h4 class="text-danger">Manage Products</h4></div>
        </div>
         <div class="row">
             <div class="col-md-4">
                 <h2 class="text-danger">Products Details</h2>
                
                     <div class="mb-3">
                         <label for="ProductName" class="form-label">Product Name</label>
                         <input type="text" class ="form-control" id="ProductName" />
                     </div>
                       <div class="mb-3">
                         <label for="ProductCategory" class="form-label">Product Category</label>
                         <input type="text" class ="form-control" id="ProductCategory" />
                     </div>
                       <div class="mb-3">
                         <label for="ProductPrice" class="form-label">Product Price</label>
                         <input type="text" class ="form-control" id="ProductPrice" />
                     </div>
                  <div class="mb-3">
                         <label for="ProductQuantity" class="form-label">Product Quantity</label>
                         <input type="text" class ="form-control" id="ProductQuantity" />
                     </div>
                  <div class="mb-3">
                         <label for="ExpiryDate" class="form-label">Expiration Date</label>
                         <input type="date" class ="form-control" id="ExpiryDate" />
                     </div>
                 <asp:Button text="Submit" runat ="server" CssClass="btn btn-danger " />
                 <asp:Button text="Delete" runat ="server" CssClass="btn btn-danger " />
              </div> 
           </div>
             <div class="col-md-8">
                 <!-- Table here-->
             </div>
       </div>
   
</asp:Content>

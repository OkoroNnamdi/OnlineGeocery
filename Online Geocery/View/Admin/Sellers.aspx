<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Sellers.aspx.cs" Inherits="Online_Geocery.View.Admin.Sellers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class ="col-md-4"></div>
            <div class ="col-md-8"><img src="../../Asset/Images/Geocery.jpeg"><h4 class="text-danger">Manage Seller</h4></div>
        </div>
        <br />
        <br />
         <div class="row">
             <div class="col-md-4">
                 <h2 class="text-danger">Sellers Details</h2>
                
                     <div class="mb-3">
                         <label for="SellerName" class="form-label">Seller Name</label>
                         <input type="text" class ="form-control" id="SellerName" runat="server" />
                     </div>
                       <div class="mb-3">
                         <label for="SellerEmail" class="form-label">Seller Email</label>
                         <input type="Email" class ="form-control" id="SellerEmail" runat ="server" />
                     </div>
                       <div class="mb-3">
                         <label for="SellerPassword" class="form-label">Seller Password</label>
                         <input type="password" class ="form-control" id="SellerPassword" runat ="server" />
                     </div>
                  <div class="mb-3">
                         <label for="SellerPhone" class="form-label">Seller Phone</label>
                         <input type="text" class ="form-control" id="SellerPhone" runat="server" />
                     </div>
                  <div class="mb-3">
                         <label for="SellerAddress" class="form-label">Seller Address</label>
                         <input type="text" class ="form-control" id="SellerAddress" runat="server" />
                     </div>
                 <label id="errMessage" runat="server" class="text-danger"></label>
                 <asp:Button Text="Submit" runat="server" CssClass="btn btn-danger " ID="SubmitBtn" OnClick="SubmitBtn_Click" />
                 <asp:Button Text="Delete" runat="server" CssClass="btn btn-danger " ID="DeleteBtn" />
                 <asp:Button Text="Edit" runat="server" CssClass="btn btn-danger " ID="BtnEdit" OnClick="BtnEdit_Click" />
              </div> 
        
             <div class="col-md-8">
                 <!-- Table here-->
                 <asp:GridView runat="server" Class="table" ID="SellerGridView" Cssclasss="table table-hover" AutoGenerateSelectButton="True" OnSelectedIndexChanged="SellerGridView_SelectedIndexChanged">
                 </asp:GridView>
             </div>
           </div>
       </div>
  
</asp:Content>

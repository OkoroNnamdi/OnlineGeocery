<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="Online_Geocery.View.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class ="col-md-4"></div>
            <div class ="col-md-8"><br /><img src="../../Asset/Images/Geocery.jpeg"><h4 class="text-danger">Manage Categories</h4></div>
        </div>
         <div class="row">
             <div class="col-md-4">
                 <h2 class="text-danger">Category Details</h2>
                
                     <div class="mb-3">
                         <label for="CategorytName" class="form-label">Category Name</label>
                         <input type="text" class ="form-control" id="CategoryName" />
                     </div>
                      
                       <div class="mb-3">
                         <label for="CategoryRemark" class="form-label">Category Remark</label>
                         <input type="text" class ="form-control" id="CategoryRemark" />
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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Geocery.View.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="../Asset/Lib/Boostrap/css/bootstrap.min.css"/>
</head>
<body>
    <div class ="container-fluid">
        <div class ="row" style ="height:90px"></div>
        <div class ="row">
            <div class ="col-md-4"></div>
             <div class ="col-md-2">
                  <img src ="../Asset/Images/Geocery.jpeg" class ="img-fluid" />
             </div>
             <div class ="col-md-4" style="align-items:flex-start">
                 <h2 class ="text-danger ">Sign Up</h2>
               <form runat ="server">
                      <!-- Email input -->
                  <div class="form-outline mb-4">
                    <input type="email" id="form1Example1" class="form-control" />
                    <label class="form-label" for="form1Example1">Email address</label>
                  </div>

                  <!-- Password input -->
                  <div class="form-outline mb-4">
                    <input type="password" id="form1Example2" class="form-control" />
                    <label class="form-label" for="form1Example2">Password</label>
                  </div>

                  <!-- 2 column grid layout for inline styling -->
                  <div class="row mb-4">
                    <div class="col d-flex justify-content-center">
                      <!-- Checkbox -->
                      <div class="mb-3 form-check">
                        <input class="form-check-input" type="radio" value="" id="SellerRadio"  />
                        <label class="form-check-label" for="form1Example3"> Seller </label>
                        <input class="form-check-input" type="radio" value="" id="AdminRadio"  />
                        <label class="form-check-label" for="AdminRadio"> Admin </label>
                      </div>
                    </div>

                    <div class="col">
                      <!-- Simple link -->
                      <a href="#!">Forgot password?</a>
                    </div>
                  </div>
                   <div class=" mb-3 d-grid ">
                  <!-- Submit button -->
                  <button type="submit" class="btn btn-danger btn-block">Login</button></div>
                </form>
             </div>
        </div>
    </div>
</body>
</html>

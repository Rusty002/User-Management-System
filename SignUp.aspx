<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication1.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />
    <link rel="stylesheet" href="SignUp.css" />
    <!--include jQuery -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <!--include jQuery Validation Plugin-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
     <!-- Required for using jQuery input mask plugin -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/5.0.7/jquery.inputmask.min.js"></script>
    <!--Including JavaScript File-->
    <script src="SignUp.js"></script>
</head>
<body>
    <form id="signUpForm" method="post" runat="server">
        <!-- Section: Design Block -->
        <section class="background-radial-gradient overflow-hidden">
            <div class="container px-4 py-5 px-5 text-lg-start my-5">
                <div class="row gx-lg-5 align-items-center mb-5">
                    <div class="col-lg-6 mb-5 mb-lg-0" style="z-index: 10">
                        <h1 class="my-5 display-5 fw-bold ls-tight" style="color: hsl(218, 81%, 95%)">User Management System
                        </h1>
                        <p class="mb-4 opacity-70" style="color: hsl(218, 81%, 85%)">
                            Sign Up and Become a user of User Management System App
                        </p>
                    </div>
                    <div class="col-lg-6 mb-lg-0 position-relative">
                        <div id="radius-shape-1" class="position-absolute rounded-circle shadow-5-strong"></div>
                        <div id="radius-shape-2" class="position-absolute shadow-5-strong"></div>
                        <div class="card bg-glass">
                            <div class="card-body px-4 py-5 px-md-5">
                                    <!-- 2 column grid layout with text inputs for the first and last names -->
                                    <div class="row">
                                        <div class="col-md-6 mb-4">
                                            <div class="form-outline">
                                                <label class="form-label" for="firstName">First name</label>
                                                <input type="text" id="firstName" name="firstName" class="form-control" placeholder="Enter Fisrt Name" title="First Name Must start with an Alphabet Character and should be atleast 3 characters long"/>
                                            </div>
                                        </div>
                                        <div class="col-md-6 mb-4">
                                            <div class="form-outline">
                                                <label class="form-label" for="lastName">Last name</label>
                                                <input type="text" id="lastName" name="lastName" class="form-control" placeholder="Enter Last Name" title="Last Name Must start with an Alphabet Character"/>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- UserName input -->
                                    <div class="form-outline mb-4">
                                        <label class="form-label" for="userName">User Name</label>
                                        <input type="text" id="userName" name="userName" class="form-control" placeholder="Enter Username Here" title="Username Cannot contain spaces"/>
                                    </div>

                                    <!-- Password input -->
                                    <div class="form-outline mb-4">
                                        <label class="form-label" for="pass">Password</label>
                                        <input type="password" id="pass" name="pass" class="form-control" placeholder="Enter your Password Here" title="Password Must conatin Capital letters and Alpha Numeric Characters. Also it should be between 8 and 14 characters."/>
                                    </div>
                                    <!-- Phone Number -->
                                    <div class="form-outline mb-4">
                                        <label class="form-label" for="mobileNumber">Mobile Number</label>
                                        <input type="text" id="mobileNumber" name="mobileNumber" class="form-control" placeholder="Enter Your Mobile Number" title="Enter your Mobile Number in the format of +92 123 1234567" />
                                    </div>
                                    <!-- Submit button -->
                                    <button type="submit" name="submit" class="btn btn-primary btn-block" onclick="javascript:return login()">
                                        Sign up
                                    </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Section: Design Block -->
    </form>
</body>
</html>

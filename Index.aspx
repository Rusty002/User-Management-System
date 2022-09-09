<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication1.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Management System</title>
    <link rel="stylesheet" href="Index.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!--include jQuery -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <!--include jQuery Validation Plugin-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
    <!-- JavaScript File -->
    <script src="Index.js"></script>
</head>
<body>
    <form id="loginForm" runat="server">
        <!-- Section: Design Block Starts -->
        <section class="background-radial-gradient overflow-hidden">
            <div class="container px-4 py-5 px-5 text-lg-start my-5">
                <div class="row gx-lg-5 align-items-center mb-5">
                    <div class="col-lg-6 mb-5 mb-lg-0" style="z-index: 10">
                        <h1 class="my-5 display-5 fw-bold ls-tight" style="color: hsl(218, 81%, 95%)">User Management System
                        </h1>
                        <p class="mb-4 opacity-70" style="color: hsl(218, 81%, 85%)">
                            Please enter your login and password!
                        </p>
                    </div>
                    <div class="col-lg-6 mb-lg-0 position-relative">
                        <div id="radius-shape-1" class="position-absolute rounded-circle shadow-5-strong"></div>
                        <div id="radius-shape-2" class="position-absolute shadow-5-strong"></div>
                        <div class="card bg-glass">
                            <div class="card-body px-4 py-5 px-md-5">
                                    <!-- User Name input -->
                                    <div class="form-outline mb-4">
                                        <label class="form-label" for="username">User Name</label>
                                        <input type="text" id="username" name="username" class="form-control" placeholder="Enter Username Here"/>
                                    </div>

                                    <!-- Password input -->
                                    <div class="form-outline mb-4">
                                        <label class="form-label" for="password">Password</label>
                                        <input type="password" id="password" name="password" class="form-control" placeholder="Enter your Password Here"/>
                                    </div>
                                    <!-- Login Button -->
                                    <button name="login" class="btn btn-primary btn-block">
                                        Login
                                    </button>
                                    <div>
                                        <p class="mb-0">
                                            Don't have an account? <a href="SignUp.aspx" class="fw-bold">Sign Up</a>
                                        </p>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Section: Design Block End-->
    </form>
</body>
</html>

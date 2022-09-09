
$(document).ready(function () {
    $(document).on("input", "#username", function () {
        var userName = $("#username").val();
        var letters = /^[a-zA-Z0-9]+$/;
        if (letters.test(userName)) {
            return true;
        }
        else {
            var text = userName.slice(0, -1);
            $("#username").val(text);
        }
    });
    $(document).on("input", "#password", function () {
        var password = $("#password").val();
        var letters = /^[a-zA-Z0-9_.~!`@#$%^&*(){}<>]+$/;
        if (letters.test(password)) {
            return true;
        }
        else {
            var text = password.slice(0, -1);
            $("#password").val(text);
        }
    });
    $("#loginForm").validate({
        errorClass: "error fail-alert",
        validClass: "valid success-alert",
        rules: {
            username: {
                required: true,
                minlength: 5
            },
            password: {
                required: true,
                minlength: 8,
                maxlength: 14
            }
        },
        messages: {
            userName: {
                required: "Please enter your User name",
                minlength: "User name should be atleast 5 characters long"
            },
            password: {
                required: "Select a password containing Alphanumeric, Capital and Special Characters",
                minlength: "Password should be atleast 8 characters long",
                maxlength: "Password can have maximum 14 characters"
            }
        }
    });
});

function login() {
    let userName = $("#username").val();
    let password = $("#password").val();
    $.ajax({
        url: 'Index.aspx/GetPersons',
        method: 'post',
        data: JSON.stringify({ 'userName': userName, 'password': password }),
        async: false,
        contentType: 'application/json',
        success: function (data) {
            console.log(data);
            if (data.d === true) {
                window.location.replace(Dashboard.aspx);
            }
            else {
                alert("The user not found");
            }
        }
    })

}
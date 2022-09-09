
$(document).ready(function () {
    $(document).on("input", "#firstName", function () {
        var firstName = $("#firstName").val();
        var letters = /^[A-Za-z]+$/;
        if (letters.test(firstName)) {
            return true;
        }
        else {
            var text = firstName.slice(0, -1);
            $("#firstName").val(text);
        }
    });
    $(document).on("input", "#lastName", function () {
        var lastName = $("#lastName").val();
        var letters = /^[A-Za-z]+$/;
        if (letters.test(lastName)) {
            return true;
        }
        else {
            var text = lastName.slice(0, -1);
            $("#lastName").val(text);
        }
    });
    $(document).on("input", "#userName", function () {
        var userName = $("#userName").val();
        var letters = /^[a-zA-Z0-9]+$/;
        if (letters.test(userName)) {
            return true;
        }
        else {
            var text = userName.slice(0, -1);
            $("#userName").val(text);
        }
    });
    $(document).on("input", "#pass", function () {
        var password = $("#pass").val();
        var letters = /^[a-zA-Z0-9_.~!`@#$%^&*(){}<>]+$/;
        if (letters.test(password)) {
            return true;
        }
        else {
            var text = password.slice(0, -1);
            $("#pass").val(text);
        }
    });
    $(document).on("input", "#mobileNumber", function () {
        $("#mobileNumber").inputmask("+99 - 999 - 9999999");
    });
    $("#signUpForm").validate({
        errorClass: "error fail-alert",
        validClass: "valid success-alert",
        rules: {
            firstName: {
                required: true,
                minlength: 3
            },
            lastName: {
                required: true,
                minlength: 3
            },
            userName: {
                required: true,
                minlength: 5
            },
            pass: {
                required: true,
                minlength: 8,
                maxlength: 14
            },
            mobileNumber: {
                required: true,
                minlength: 19,
                maxlength: 19
            }
        },
        messages: {
            firstName: {
                required: "Please enter your first name",
                minlength: "First name should be atleast 3 characters long"
            },
            lastName: {
                required: "Please enter your first name",
                minlength: "Last name should be atleast 3 characters long"
            },
            userName: {
                required: "Please enter your User name",
                minlength: "User name should be atleast 5 characters long"
            },
            pass: {
                required: "Select a password containing Alphanumeric, Capital and Special Characters",
                minlength: "Password should be atleast 8 characters long",
                maxlength: "Password can have maximum 14 characters"
            },
            mobileNumber: {
                required: "Please Provide a valid mobile number",
                minlength: "Mobile Number cannot be smaller than +92 123 1234567",
                maxlength: "Mobile Number cannot be larger than +92 123 1234567"
            }
        }
    });
    $(document).on("submit", function (evt) {
        evt.preventDefault();
        window.location.replace("Index.aspx");
        return false;
    })
});
function validlog() {
    var username, password;
    username = document.getElementById("txtuname").value;
    password = document.getElementById("txtpwd").value;
    if (username == '' && password == 0)
    {
        alert("Enter All Fields");
        return false;
    }
    if (username == '') {
        alert("Please Enter Login ID");
        return false;
    }
    if (password == '') {
        alert("Please Enter password");
        return false;
    }


}
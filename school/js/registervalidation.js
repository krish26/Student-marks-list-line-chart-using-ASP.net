function validsignup() {
    var name, username, password, mobile, answer,cpassword;
    name = document.getElementById("txtBoxName").value;
    username = document.getElementById("txtBoxId").value;

    password = document.getElementById("txtBoxPs").value;
    cpassword = document.getElementById("TextBoxPs1").value;
    mobile = document.getElementById("txtBoxNum").value;
    answer = document.getElementById("TextBoxAns").value;
    if (name == '' && username == '' && password == '' && cpassword == '' && mobile == '' && answer == '') {
        alert("Enter All Fields");
        return false;
    }
    if (name == '') {
        alert("Please Enter full name");
        return false;
    }
    if (username == '') {
        alert("Please Enter user ID");
        return false;
    }
    if (password == '') {
        alert("Please Enter password");
        return false;
    }
    if (cpassword == '') {
        alert("Please Confirm password");
        return false;
    }
    if (password != cpassword) {
        alert("password not match");
        return false;
    }
    if (answer == '') {
        alert("Please provide answer");
        return false;
    }



}
function validmarks() {
    var name,telugu,hindi,english,maths,science,social,rollnumber
    name = document.getElementById("TbName").value;
    telugu = document.getElementById("TextBox1").value;
    hindi = document.getElementById("TextBox2").value;
    english = document.getElementById("TextBox3").value;
    Maths = document.getElementById("TextBox4").value;
    science = document.getElementById("TextBox5").value;
    social = document.getElementById("TextBox7").value;

    var numbers = /^[-+]?[0-9]+$/;
    if (telugu != numbers) {
        alert("enter correct marks")
    }
    if (hindi != numbers) {
        alert("enter correct marks")
    }
    if (english != numbers) {
        alert("enter correct marks")
    }
    if (maths != numbers) {
        alert("enter correct marks")
    }
    if (science != numbers) {
        alert("enter correct marks")
    }
    if (social != numbers) {
        alert("enter correct marks")
    }
    


}
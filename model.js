function RegisterForm(){

    var firstname=document.getElementById("tbfname").value;
    document.getElementById("fname").innerHTML=firstname;
    console.log(firstname);

    var Lastname=document.getElementById("tblname").value;
    document.getElementById("lname").innerHTML=Lastname;
    console.log(Lastname);

    var Gender=document.getElementById("tbgender").value;
    document.getElementById("gender").innerHTML=Gender;
    console.log(gender);

    var Dateofbirth=document.getElementById("tbdob").value;
    document.getElementById("dob").innerHTML=Dateofbirth;
    console.log(dob);

    var username=document.getElementById("tbuname").value;
    document.getElementById("uname").innerHTML=username;
    console.log(username);

    var password=document.getElementById("tbpassword").value;
    document.getElementById("password").innerHTML=password;
     console.log(password);

    var confirmpassword=document.getElementById("tbcpassword").value;
    document.getElementById("cpassword").innerHTML=confirmpassword;
    console.log(cpassword);


    var email=document.getElementById("tbemail").value;
    document.getElementById("email").innerHTML=email;
    console.log(email);
    
    var Phoneno=document.getElementById("tbphone").value;
    document.getElementById("phone").innerHTML=Phone;
    console.log(Phone);

    var accounttype=document.getElementById("tbacctype").value;
    document.getElementById("acctype").innerHTML=accounttype;
    console.log(acctype);
}
function SendMail(){
    var params = {
        from_name : document.getElementById("name").value,
        email_id : document.getElementById("email").value,
        message : document.getElementById("message").value
    }
    emailjs.send("Service_ID","Template_ID",params).then(function (res) {
        alert("Success! " + res.status);
    })
}


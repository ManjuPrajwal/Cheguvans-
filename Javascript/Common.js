// Allow only Numbers

function checkNumber(evt) {
    evt = (evt) ? evt : window.event
    var charCode = (evt.which) ? evt.which : evt.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        status = "This field accepts numbers only."
        return false
    }
    status = ""
    return true
}


//Allow only Characters

function checkCharacters(evt) {
    evt = (evt) ? evt : window.event
    var charCode = (evt.which) ? evt.which : evt.keyCode
    if ((charCode >= 97 && charCode <= 122) || (charCode >= 65 && charCode <= 90) || (charCode == 32 ||
charCode == 46)) {
        return true;
    } else {
        alert("Allow only characters");
        return false;
    }
}


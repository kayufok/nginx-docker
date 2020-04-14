function whatsappApi (){
    console.log(document.getElementById("districtCode").value+document.getElementById("moblieNumber").value);
    window.open("https://api.whatsapp.com/send?phone="+document.getElementById("districtCode").value+document.getElementById("moblieNumber").value, '_blank');
}
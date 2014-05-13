function midesMantenimentGeografic(){
      var ampladaPobNom = document.getElementsByTagName("th")["pobNomAmpl"].offsetWidth;
      var ampladaPobComNom = document.getElementsByTagName("th")["pobComNomAmpl"].offsetWidth;
      var ampladaPobPrvNom = document.getElementsByTagName("th")["pobPrvNomAmpl"].offsetWidth;
      var ampladaPobPssNom = document.getElementsByTagName("th")["pobPssNomAmpl"].offsetWidth;
      var ampladaComNom = document.getElementsByTagName("th")["comNomAmpl"].offsetWidth;
      var ampladaPrvNom = document.getElementsByTagName("th")["prvNomAmpl"].offsetWidth;
      var ampladaPssNom = document.getElementsByTagName("th")["pssNomAmpl"].offsetWidth;
      document.getElementById('pobNom').style.width = (ampladaPobNom-2)+"px";
      document.getElementById('pobComNom').style.width = (ampladaPobComNom-2)+"px";
      document.getElementById('pobPrvNom').style.width = (ampladaPobPrvNom-2)+"px";
      document.getElementById('pobPssNom').style.width = (ampladaPobPssNom-2)+"px";      
      document.getElementById('comNom').style.width = (ampladaComNom)+"px";
      document.getElementById('prvNom').style.width = (ampladaPrvNom)+"px";
      document.getElementById('pssNom').style.width = (ampladaPssNom)+"px";
}
function midesMantenimentUsuari(){
      var ampladaUsuNom = document.getElementsByTagName("th")["usuNomAmpl"].offsetWidth;
      var ampladaUsuEmail = document.getElementsByTagName("th")["usuEmailAmpl"].offsetWidth;
      var ampladaUltimaConnexio = document.getElementsByTagName("th")["usuUltimaConnexioAmpl"].offsetWidth;
      var ampladaBloquejat = document.getElementsByTagName("th")["usuBloquejatAmpl"].offsetWidth;
      var ampladaRol = document.getElementsByTagName("th")["usuRolAmpl"].offsetWidth;
      document.getElementById('usuNom').style.width = (ampladaUsuNom-2)+"px";
      document.getElementById('usuEmail').style.width = (ampladaUsuEmail-2)+"px";
      document.getElementById('usuUltimaConnexio').style.width = (ampladaUltimaConnexio-2)+"px";
      document.getElementById('usuBloquejat').style.width = (ampladaBloquejat-2)+"px";      
      document.getElementById('usuRol').style.width = (ampladaRol)+"px";
}
window.onresize = function midaContingut(event){
      var alcadaMenu = document.getElementsByTagName("div")["menu"].offsetHeight;
      var alcadaPantalla = window.innerHeight;
      document.getElementById("contingut").style.height = (alcadaPantalla - alcadaMenu - 100) + "px";
}
function modificarPoblacio(){

}
function modificarComarca(){

}
function modificarProvincia(){

}
function modificarPais(){

}


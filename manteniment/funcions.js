window.onresize = function midaContingut(event){
      var alcadaMenu = document.getElementsByTagName("div")["menu"].offsetHeight;
      var alcadaPantalla = window.innerHeight;
      document.getElementById("contingut").style.height = (alcadaPantalla - alcadaMenu - 100) + "px";
}
window.onload = function midaContingut2(event){
      var alcadaMenu = document.getElementsByTagName("div")["menu"].offsetHeight;
      var alcadaPantalla = window.innerHeight;
      document.getElementById("contingut").style.height = (alcadaPantalla - alcadaMenu - 100) + "px";
}

/*************************************
            begin manteniment
*************************************/

function midesMantenimentGeografic(){
      var ampladaCol1 = document.getElementsByTagName("th")["pobNomAmpl"].offsetWidth;
      var ampladaCol2 = document.getElementsByTagName("th")["pobComNomAmpl"].offsetWidth;
      var ampladaCol3 = document.getElementsByTagName("th")["pobPrvNomAmpl"].offsetWidth;
      var ampladaCol4 = document.getElementsByTagName("th")["pobPssNomAmpl"].offsetWidth;
      document.getElementById('pobNom').style.width = (ampladaCol1-2)+"px";
      document.getElementById('pobComNom').style.width = (ampladaCol2-2)+"px";
      document.getElementById('pobPrvNom').style.width = (ampladaCol3-2)+"px";
      document.getElementById('pobPssNom').style.width = (ampladaCol4-2)+"px";

      var ampladaCol5 = document.getElementsByTagName("th")["comNomAmpl"].offsetWidth;
      document.getElementById('comNom').style.width = (ampladaCol5-2)+"px";
      
      var ampladaCol6 = document.getElementsByTagName("th")["prvNomAmpl"].offsetWidth;
      document.getElementById('prvNom').style.width = (ampladaCol6-2)+"px";
      
      var ampladaCol7 = document.getElementsByTagName("th")["pssNomAmpl"].offsetWidth;
      document.getElementById('pssNom').style.width = (ampladaCol7-2)+"px";
}
function midesMantenimentUsuari(){
      var ampladaCol1 = document.getElementsByTagName("th")["usuNomAmpl"].offsetWidth;
      var ampladaCol2 = document.getElementsByTagName("th")["usuEmailAmpl"].offsetWidth;
      var ampladaCol3 = document.getElementsByTagName("th")["usuUltimaConnexioAmpl"].offsetWidth;
      var ampladaCol4 = document.getElementsByTagName("th")["usuBloquejatAmpl"].offsetWidth;
      var ampladaCol5 = document.getElementsByTagName("th")["usuRolAmpl"].offsetWidth;
      document.getElementById('usuNom').style.width = (ampladaCol1-2)+"px";
      document.getElementById('usuEmail').style.width = (ampladaCol2-2)+"px";
      document.getElementById('usuUltimaConnexio').style.width = (ampladaCol3-2)+"px";
      document.getElementById('usuBloquejat').style.width = (ampladaCol4-2)+"px";      
      document.getElementById('usuRol').style.width = (ampladaCol5-2)+"px";
}
function midesMantenimentProductes(){
      var ampladaCol1 = document.getElementsByTagName("th")["proNomAmpl"].offsetWidth;
      var ampladaCol2 = document.getElementsByTagName("th")["proMarcaNomAmpl"].offsetWidth;
      var ampladaCol3 = document.getElementsByTagName("th")["proModelAmpl"].offsetWidth;
      var ampladaCol4 = document.getElementsByTagName("th")["proFamiliaNomAmpl"].offsetWidth;
      var ampladaCol5 = document.getElementsByTagName("th")["proPreuAmpl"].offsetWidth;
      var ampladaCol6 = document.getElementsByTagName("th")["proStockAmpl"].offsetWidth;
      document.getElementById('proNom').style.width = (ampladaCol1-2)+"px";
      document.getElementById('proMarcaNom').style.width = (ampladaCol2-2)+"px";
      document.getElementById('proModel').style.width = (ampladaCol3-2)+"px";
      document.getElementById('proFamiliaNom').style.width = (ampladaCol4-2)+"px";      
      document.getElementById('proPreu').style.width = (ampladaCol5-2)+"px";
      document.getElementById('proStock').style.width = (ampladaCol6-2)+"px";

      var ampladaCol7 = document.getElementsByTagName("th")["marNomAmpl"].offsetWidth;
      document.getElementById('marNom').style.width = (ampladaCol7-2)+"px";
      
      var ampladaCol8 = document.getElementsByTagName("th")["famNomAmpl"].offsetWidth;
      document.getElementById('famNom').style.width = (ampladaCol8-2)+"px";
}
function midesMantenimentSubjectes(){
      var ampladaCol1 = document.getElementsByTagName("th")["conNomAmpl"].offsetWidth;
      var ampladaCol2 = document.getElementsByTagName("th")["conTelefonAmpl"].offsetWidth;
      var ampladaCol3 = document.getElementsByTagName("th")["conMobilAmpl"].offsetWidth;
      var ampladaCol4 = document.getElementsByTagName("th")["conFaxAmpl"].offsetWidth;
      var ampladaCol5 = document.getElementsByTagName("th")["conEmailAmpl"].offsetWidth;
      document.getElementById('conNom').style.width = (ampladaCol1-2)+"px";
      document.getElementById('conTelefon').style.width = (ampladaCol2-2)+"px";
      document.getElementById('conMobil').style.width = (ampladaCol3-2)+"px";      
      document.getElementById('conFax').style.width = (ampladaCol4-2)+"px";
      document.getElementById('conEmail').style.width = (ampladaCol5-2)+"px";

      var ampladaCol6 = document.getElementsByTagName("th")["adrAdrecaAmpl"].offsetWidth;
      var ampladaCol7 = document.getElementsByTagName("th")["adrPobNomAmpl"].offsetWidth;
      document.getElementById('adrAdreca').style.width = (ampladaCol6-2)+"px";
      document.getElementById('adrPobNom').style.width = (ampladaCol7-2)+"px";
}
function modificarPoblacio(){

}
function modificarComarca(){

}
function modificarProvincia(){

}
function modificarPais(){

}

/*************************************
            end manteniment
*************************************/





/*************************************
            begin facturacio
*************************************/

function midesFacturacioConsulta(){

}

/*************************************
            end facturacio
*************************************/
function activarcaja(caja){
    document.getElementById(caja).disabled=false;
}

function calcular(){
    try{
        var a = parseInt(document.getElementById("cant").value) || 0,
        b = parseFloat(document.getElementById("pre").value) || 0;
        total = a * b;
        document.getElementById("tot").value = total.toFixed(2);
    }catch (e) {        
    }
}
	
$(document).on("click", "#btnmodal", function (){
    var cod = $(this).data('cod');
    var des = $(this).data('des');
    var pre = $(this).data('pre');
    var cant = $(this).data('cant');
    var tot = $(this).data('tot');
    $("#cod").val(cod);
    $("#des").val(des);
    $("#pre").val(pre);
    $("#cant").val(cant);
    $("#tot").val(tot);
});

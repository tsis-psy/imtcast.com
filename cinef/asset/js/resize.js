var objwidth;
var _curChk;
var _tagChk;

function resizediv(){
	objwidth = document.body.clientWidth;
	if(objwidth < 768){
		if(!$("#wrap").is('.noresize')){
			$("#wrap").removeClass("wmax").addClass("wmin");
		}		
			subcssmobileInit();
	}else{
		if(!$("#wrap").is('.noresize')){
			$("#wrap").removeClass("wmin").addClass("wmax");
		}
			subcsspcInit();
	}
}

$(document).ready(function(){
	sinit();
	resizediv();
})

window.onresize = function(){ 
	resizediv();	
}

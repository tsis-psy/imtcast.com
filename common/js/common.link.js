document.write("<script type='text/javascript' src='/common/js/jquery-ui-1.10.3.js'><"+"/script>");
document.write("<script type='text/javascript' src='/common/js/common.sub.js'><"+"/script>");

//vod 재생 플레이어 popup
function fn_pop(ctsId, channelcode, idx1){

	var index = "idx1="+idx1;
	var siteUrl = "/pgm/count/main_banner_count.jsp";

	$.ajax({
		type:"post",
		url:siteUrl,
		dataType:"html",
		async: false,
		data:index,
		success:function(data){
			window.open('/vod/vod_popup.jsp?ctsId='+ctsId+'&channelcode='+channelcode, 'imtcast_vod_popup', 'resizable=yes scrollbars=auto width=620px height=452px');
		},
		error:function(){
			alert("실행 중 오류가 발생하였습니다.\n관리자에게 문의하십시오.");
		}
	});


}

//로그인 페이지로 전화
function fn_goLoginPage(retrunurl){
	if(confirm('로그인 후 이용가능합니다.\n로그인 하시겠습니까?')) {
    	var loginurl = "/member/login.jsp";
    	if(retrunurl != null && retrunurl != "") {
    	    loginurl += "?returnUrl=" + escape(retrunurl);
    	}

        location.href = loginurl;
    }
}


//메인페이지 메인배너 & 와이드배너 카운트 증가 스크립트
function mainBannerCount(num, url, tar) {

	var val = "num="+num;
	var siteUrl = "/pgm/count/main_banner_count.jsp";
	//alert( "111111=" + url );
	$.ajax({
		type:"post",
		url:siteUrl,
		dataType:"html",
		async: false,
		data:val,
		success:function(data){
			var frm = document.getElementById("location");

			if(url != "" && url != "http://" && url != "#") {
    			if( tar == "_self" ){
    			    location.href = url;
    			}
    			else {
    			    window.open(url);
    			}
    	    }
			//frm.target = tar;
			//frm.action = url;
			//frm.submit();
		},
		error:function(){
			alert("실행 중 오류가 발생하였습니다.\n관리자에게 문의하십시오.");
		}
	});
}


//이벤트, 상단, 프로그램 레이어 배너 카운트 증가 스크립트
function subBannerCount(bnum, link) {
	var val = "bnum="+bnum+"&link="+link;
	var siteUrl = "/pgm/count/main_banner_count.jsp";

	$.ajax({
		type:"post",
		url:siteUrl,
		dataType:"html",
		async: false,
		data:val,
		success:function(data){
			window.open(link);
		},
		error:function(){
			alert("실행 중 오류가 발생하였습니다.\n관리자에게 문의하십시오.");
		}
	});
}

function open_cuteon_popup(ch) {
	location.href="/echannel/ech/cuteon.jsp?chnl_cd=" + ch;
}

var _chMenuSet = {
		'CH_E':{"path":"echannel"},
		'CH_S':{"path":"screen"},
		'CH_Q':{"path":"dramacube"},
		'CH_F':{"path":"now"},
		'CH_V':{"path":"chview"},
		'CH_C':{"path":"cinef"},
		'CH_N':{"path":"fashionn"},
		'CH_X':{"path":"mx"},
		'CH_W':{"path":"ever"}
	};

function open_schedule(ch) {
	var targetUrl = '/search/broadplan.jsp';

	if('TOTAL' == ch) {
		targetUrl = "/search/broadplan.jsp";
	} else {
		targetUrl = "/" + _chMenuSet[ch].path + "/program/schedule.jsp";
	}

    location.href = targetUrl;
}

function open_familySite(obj) {
	if("" == obj.value) {
		alert("이동할 사이트를 선택해주세요.");
        obj.focus();
	} else if ("TCAST" == obj.value) {
		window.open("https://www.imtcast.com/");
	} else if ("CINECUBE" == obj.value) {
		window.open("https://www.cinecube.co.kr/");
	} else if("CH_H" == obj.value) {
		window.open("http://www.champtv.com");
	} else {
		window.open("/" + _chMenuSet[obj.value].path + "/index.jsp#" + obj.value);
	}
}
//모바일 메뉴 버튼 정의 변수 선언
var mchk = 0;
var mcur = 0;

//브라우저 체크
var Browser = {a : navigator.userAgent.toLowerCase()}
Browser = {
	ie : /*@cc_on true || @*/ false,
	ie6 : Browser.a.indexOf('msie 6')!=-1,
	ie7 : Browser.a.indexOf('msie 7')!=-1,
	ie8 : Browser.a.indexOf('msie 8')!=-1,
	ie9 : Browser.a.indexOf('msie 9')!=-1,
	opera : !!window.opera,
	safari : Browser.a.indexOf('safari')!=-1,
	safari3 : Browser.a.indexOf('applewebkit/5')!=-1,
	chrome : Browser.a.indexOf('chrome')!=-1,
	firefox : Browser.a.indexOf('firefox')!=-1
}


var Common = {
    /**
     * 팝업 열기
     * @param url
     * @param options
     */
    openPopup: function( url, options ) {
    	var opts = $.extend({ target: '_blank', top: 'center', left: 'center', width: 500, height: 500, scrollbars: 'no' }, options),
		    param = '',
		    name = '';

    	if ( opts.top === 'center' ) {
    		opts.top = ( screen.availHeight - opts.height ) / 2;
    	}
    	if ( opts.left === 'center' ) {
    		opts.left = ( screen.availWidth - opts.width ) / 2;;
    	}

    	for ( name in opts ) {
    		if ( name !== 'target' ) {
    			param += ',' + name + '=' + opts[ name ];
    		}
    	}
    	param = param.replace( /^,/, '' );
    	if(objwidth < 768){
			window.open(url, opts.target);

		}else{
			window.open( url, opts.target, param );
		}
    	//window.open( url, opts.target, param );
    },

    onoffReplace: function(mc , num){
    	if( num == "on"){
	    	var _img = mc.attr("src").replace("_off", "_on");
				       mc.attr("src" , _img);
    	}else if(num == "off"){
	    	var _img = mc.attr("src").replace("_on", "_off");
				       mc.attr("src" , _img);
    	}else if(num == "up"){
	    	var _img = mc.attr("src").replace("_down", "_up");
				       mc.attr("src" , _img);
    	}else if(num == "down"){
	    	var _img = mc.attr("src").replace("_up", "_down");
				       mc.attr("src" , _img);
    	}
    }
};


//모바일에서 상단 네비 와 채널 네비 제어 함수 ------------------------------->>
function divDisplay(num , mc){
	if(num == 1){
		$('.wmin #main_menu').css({"display" : "block"});
//		$('.wmin #channel_gnb').css({"display" : "none"});
		var replaceImg = mc.find('a>img').attr("src").replace("_off.gif", "_on.gif");
							mc.find('a>img').attr("src" , replaceImg);
		var _replaceImg = mc.parent().children('.m2').find('a>img').attr("src").replace("_on.gif", "_off.gif");
							mc.parent().children('.m2').find('a>img').attr("src" , _replaceImg);
		mchk = 0;
	}else if(num == 2){
		$('.wmin #channel_gnb').css({"display" : "block"});
		$('.wmin #main_menu').css({"display" : "none"});
		var replaceImg = mc.find('a>img').attr("src").replace("_off.gif", "_on.gif");
						 mc.find('a>img').attr("src" , replaceImg);
		var _replaceImg = mc.parent().children('.m1').find('a>img').attr("src").replace("_on.gif", "_off.gif");
							mc.parent().children('.m1').find('a>img').attr("src" , _replaceImg);
		mchk = 1;
	}else{
		$('.wmin #main_menu').css({"display" : "none"});
//		$('.wmin #channel_gnb').css({"display" : "none"});
		var replaceImg = $('.channel_menu_m .m1').find('a>img').attr("src").replace("_on.gif", "_off.gif");
							$('.channel_menu_m .m1').find('a>img').attr("src" , replaceImg);
		var _replaceImg = $('.channel_menu_m .m2').find('a>img').attr("src").replace("_on.gif", "_off.gif");
							$('.channel_menu_m .m2').find('a>img').attr("src" , _replaceImg);
	}
}


function subcsspcInit(){
	$('.wmax #channel_gnb').css({"display" : "block"});
	$('.wmax #main_menu').css({"display" : "block"});
	$('.wmax #header .lnb_area h1').css({"top":"0px"});
	$('.wmax #header .lnb_area .search .input_area').css({"display" : "block"});
	var cklen = $('#aside .event .bxslider3>li').length;
	for(var i = 0; i < cklen; i++){
		var _img = $('#aside .event .bxslider3>li').eq(i).find('a>img').attr("src").replace("_m" , "_p");
					$('#aside .event .bxslider3>li').eq(i).find('a>img').attr("src" , _img);
	}
}
function subcssmobileInit(){
	if(mchk == 0){
		$('.wmin #main_menu').css({"display" : "block"});
//		$('.wmin #channel_gnb').css({"display" : "none"});
	}else{
		$('.wmin #channel_gnb').css({"display" : "block"});
		$('.wmin #main_menu').css({"display" : "none"});
	}
	if(mcur == 0){
		$('.wmin #header .lnb_area h1').css({"top":"37px"});
		$('.wmin #header .lnb_area .search .input_area').css({"display" : "none"});
	}else{
		$('.wmin #header .lnb_area h1').css({"top":"106px"});
	}

	var cklen = $('#aside .event .bxslider3>li').length;
	for(var i = 0; i < cklen; i++){
		var _img = $('#aside .event .bxslider3>li').eq(i).find('a>img').attr("src").replace("_p" , "_m");
					$('#aside .event .bxslider3>li').eq(i).find('a>img').attr("src" , _img);
	}
	/* divDisplay(0); */

}



function resetCSS(bl){
	if(bl){
		$('div.detail').removeClass("off");
		var replaceImg = $('#channel_gnb .control>a>img').attr("src").replace("btn_right2.png", "btn_left2.png");
						$('#channel_gnb .control>a>img').attr("src" , replaceImg).attr("alt" , "채널정보 더보기");
	}else{
		$('div.detail').addClass("off");
		var replaceImg = $('#channel_gnb .control>a>img').attr("src").replace("btn_left2.png", "btn_right2.png");
						$('#channel_gnb .control>a>img').attr("src" , replaceImg).attr("alt" , "채널정보 더보기 닫기");
	}
};

function resetDisplay(op){
	if(op){
		/* alert('컨텐츠안보임'); */
		$('#channel_gnb .none').css({display : "none"});
	}else{
		/* alert('컨텐츠보임'); */
		$('#channel_gnb .none').css({display : "block"});
	}
}


function viewDiv(num){
	var len = $('#channel_gnb .channel_menu>li').length;
	for (var i = 0; i < len; i++) {
		if(i == num){
			var $menu_li = $('#channel_gnb .channel_menu>li').eq(i);
			$menu_li.children('.detail').css({"display" : "block"});
			var chlcode = '';
				chlcode = $menu_li.find('a:first').attr('href');
			if (chlcode.indexOf('#') >= 0) {
				chlcode = chlcode.substr(chlcode.indexOf('#') + 1);
			} else {
				chlcode = '';
			}
			if (chlcode.length === 4 && $.trim($menu_li.find('.detail .tv_ing ul').text()) === '') {
				$.ajax({
					type : "POST"
					, url : "/include/tvon.jsp"
					, dataType : "html"
					, data : "chlcode="+chlcode
					, contentType: "application/x-www-form-urlencoded; charset=utf-8"
					, success : function(data) {
						$menu_li.find('.detail .tv_ing ul').html(data);
					}
					, error : function(data) {
						alert("변경에 실패하였습니다.\n 다시 시도해 주세요");
					}
			    });
			}
			continue;
		} else {
			$('#channel_gnb .channel_menu>li').eq(i).children('.detail').css({"display" : "none"});
		}
	}
}
//----------------------------------------------------------------->>
function submobileInit(){
	var cklen = $('#aside .event .bxslider3>li').length;
	for(var i = 0; i < cklen; i++){
		var _img = $('#aside .event .bxslider3>li').eq(i).find('a>img').attr("src").replace("_p" , "_m");
					$('#aside .event .bxslider3>li').eq(i).find('a>img').attr("src" , _img);
	}

	if($('.bxslider3').length > 0) {
		var slider3 = $('.bxslider3').bxSlider({
			nextText: '이전 이벤트 보기',
			prevText: '다음 이벤트 보기',
			startText: '자동 보기 시작',
			stopText: '자동 보기 멈춤',
			controls : false ,
			pager: false,
			auto : true,
			pause : 4000,
			touchEnabled : false,
			mode: 'fade'
		});
		$('#aside .control_area .slide3_prev').click(function(){
			slider3.goToPrevSlide();
			return false;
		});
		$('#aside .control_area .slide3_next').click(function(){
			slider3.goToNextSlide();
			return false;
		});
		$('#aside .control_area .slide3_start').click(function(){
			Common.onoffReplace($('#aside .event .control_area .slide3_start>img') , "on");
			Common.onoffReplace($('#aside .event .control_area .slide3_stop>img') , "off");
			slider3.startAuto();
			return false;
		});
		$('#aside .control_area .slide3_stop').click(function(){
			Common.onoffReplace($('#aside .event .control_area .slide3_stop>img') , "on");
			Common.onoffReplace($('#aside .event .control_area .slide3_start>img') , "off");
			slider3.stopAuto();
			return false;
		});
	}
};

function subpcInit(){
	var cklen = $('#aside .event .bxslider3>li').length;
	for(var i = 0; i < cklen; i++){
		var _img = $('#aside .event .bxslider3>li').eq(i).find('a>img').attr("src").replace("_m" , "_p");
					$('#aside .event .bxslider3>li').eq(i).find('a>img').attr("src" , _img);
	}
	var slider3 = $('.bxslider3').bxSlider({
			nextText: '이전 이벤트 보기',
			prevText: '다음 이벤트 보기',
			startText: '자동 보기 시작',
			stopText: '자동 보기 멈춤',
			controls : false ,
			pager: false,
			auto : true,
			pause : 4000,
			touchEnabled : false,
			mode: 'fade'
	});

	$('#aside .control_area .slide3_prev').click(function(){
		slider3.goToPrevSlide();
		return false;
	});
	$('#aside .control_area .slide3_next').click(function(){
		slider3.goToNextSlide();
		return false;
	});
	$('#aside .control_area .slide3_start').click(function(){
		Common.onoffReplace($('#aside .control_area .slide3_start>img') , "on");
		Common.onoffReplace($('#aside .control_area .slide3_stop>img') , "off");
		slider3.startAuto();
		return false;
	});
	$('#aside .control_area .slide3_stop').click(function(){
		Common.onoffReplace($('#aside .control_area .slide3_stop>img') , "on");
		Common.onoffReplace($('#aside .control_area .slide3_start>img') , "off");
		slider3.stopAuto();
		return false;
	});
};

function ch_icon(num , _href){
	//
	if(objwidth < 768){
			window.open(_href, '_blank');

	}else{
		var total_icon = $('#channel_gnb .channel_menu>li').length;
		for(var i = 1; i< total_icon+1; i++){
			if(i == num){
				var _mc = "#channel_gnb .channel_menu .menu" + i + ">a";
				$(_mc).addClass('on');
			}else{
				var _mc = "#channel_gnb .channel_menu .menu" + i + ">a";
				$(_mc).removeClass('on');
			}
		}
	}

};

function sinit(){
	objwidth = document.body.clientWidth;
	if(objwidth < 768){
		if(!$("#wrap").is('.noresize')){
			$("#wrap").removeClass("wmax").addClass("wmin");
		}
		submobileInit();
	}else{
		if(!$("#wrap").is('.noresize')){
			$("#wrap").removeClass("wmin").addClass("wmax");
		}
		subpcInit();
	}

	//우측 상단 슬라이드 제어 ------------------------------------------------//
	 var _s = $('#channel_gnb');
	 var _ani = "easeOutExpo";
	 var _time = 800;
	 var openChk = false;
	$('#channel_gnb .control').click(function(){
		if(openChk){
			resetCSS(openChk);
			_s.stop().animate({right:-500}, _time, _ani,function(){resetDisplay(true)} );
			openChk = false;
		}else{
			resetCSS(openChk);
			resetDisplay(false);
			_s.stop().animate({right:0}, _time, _ani );
			openChk = true;
		}
	});

	$('#channel_gnb .channel_menu li.menu1.main>a').hover(function(){
		var str = $(this).text().replace('Tcast Channel VIEW' , 'Tcast Tv Now');
		$(this).html(str);
	},function(){
		var str = $(this).text().replace('Tcast Tv Now' , 'Tcast Channel VIEW');
		$(this).html(str);
	})
	$('#channel_gnb .channel_menu li.menu1.sub>a').hover(function(){
		var str = $(this).text().replace('Tcast Channel VIEW' , 'Top Ranking');
		$(this).html(str);
	},function(){
		var str = $(this).text().replace('Top Ranking' , 'Tcast Channel VIEW');
		$(this).html(str);
	})

	/* 우측 슬라이드 상단 슬라이드 */
	var slider4 = $('.bxslider4').bxSlider({
		controls : false ,
		pager: false,
		touchEnabled : false,
		mode: 'fade'
	});
	$('#header .proinfo .slide4.prev>a').click(function(){
		slider4.goToPrevSlide();
		return false;
	});
	$('#header .proinfo .slide4.next>a').click(function(){
		slider4.goToNextSlide();
		return false;
	});

	/*모바일 상단 메뉴 제어 */
	$('.channel_menu_m .m1').click(function(){
		var _mc = $(this);
		divDisplay(1 , _mc);
	});
	$('.channel_menu_m .m2').click(function(){
		var _mc = $(this);
		divDisplay(2 , _mc);
	});

	var searchBtn = $('#header .lnb_area .search .mobile>a');
	var logoBtn = $('#header .lnb_area h1');
	searchBtn.click(function(){
		if(mcur == 0){
			if(Browser.ie8 || Browser.ie7 ){
				$(this).parents('.mobile').next('.input_area').css({'display' : 'block'});
				logoBtn.stop().css({"top" : "106px"});
			}else{
				$(this).parents('.mobile').next('.input_area').stop().slideDown(300);
				logoBtn.stop().animate({"top" : "106px"},300);
			}
			Common.onoffReplace($('#header .lnb_area .search .mobile a img') , "on");
			mcur = 1;
		}else{
			if(Browser.ie8 || Browser.ie7 ){
				$(this).parents('.mobile').next('.input_area').css({'display' : 'none'});
				logoBtn.stop().css({"top" : "37px"});
			}else{
				$(this).parents('.mobile').next('.input_area').stop().slideUp(300);
				logoBtn.stop().animate({"top" : "37px"},300);
			}
			Common.onoffReplace($('#header .lnb_area .search .mobile a img') , "off");
			mcur = 0;
		}

	});

	/*vod_view*/
	var vod_1_btn1 = $('.vod_view .view_con .tab_area .tab_title1>a');
	var vod_1_btn2 = $('.vod_view .view_con .tab_area .tab_title2>a');

	vod_1_btn1.click(function(){
		if(!$(this).parents('.tab_title1').is('.on')){
			if(vod_1_btn2.parents('.tab_title2').is('.on')){
				vod_1_btn2.parents('.tab_title2').removeClass('on');
				vod_1_btn2.parents('.tab_title2').next('.info').stop().slideUp(300 , function(){ vod_1_btn1.parents('.tab_title1').next('.time').stop().slideDown(400);	 });
				Common.onoffReplace( $('.vod_view .view_con .tab_area .tab_title2>a>img') , "down");
			}else{
				$(this).parents('.tab_title1').next('.time').stop().slideDown(400);
			}
			$(this).parents('.tab_title1').addClass('on');
			Common.onoffReplace( $('.vod_view .view_con .tab_area .tab_title1>a>img') , "up");
		}else{
			$(this).parents('.tab_title1').removeClass('on');
			$(this).parents('.tab_title1').next('.time').stop().slideUp(300);
			Common.onoffReplace( $('.vod_view .view_con .tab_area .tab_title1>a>img') , "down");
		}

	});

	vod_1_btn2.click(function(){
		if(!$(this).parents('.tab_title2').is('.on')){
			if(vod_1_btn1.parents('.tab_title1').is('.on')){
				vod_1_btn1.parents('.tab_title1').removeClass('on');
				vod_1_btn1.parents('.tab_title1').next('.time').stop().slideUp(300 , function(){ vod_1_btn2.parents('.tab_title2').next('.info').stop().slideDown(400);	 });
				Common.onoffReplace( $('.vod_view .view_con .tab_area .tab_title1>a>img') , "down");
			}else{
				$(this).parents('.tab_title2').next('.info').stop().slideDown(400);
			}
			$(this).parents('.tab_title2').addClass('on');
			Common.onoffReplace( $('.vod_view .view_con .tab_area .tab_title2>a>img') , "up");

		}else{
			$(this).parents('.tab_title2').removeClass('on');
			$(this).parents('.tab_title2').next('.info').stop().slideUp(300);
			Common.onoffReplace( $('.vod_view .view_con .tab_area .tab_title2>a>img') , "down");
		}
	});

	var vod_2_btn1 = $('.vod_view .synopsis .tit>a');
	var vod_2_btn2 = $('.vod_view .cast_info .tit>a');

	vod_2_btn1.click(function(){
		if(!$(this).parents('.tit').is('.on')){
			$(this).parents('.tit').addClass('on');
			$(this).parents('.tit').next('.con').slideDown(300);
		}else{
			$(this).parents('.tit').removeClass('on');
			$(this).parents('.tit').next('.con').slideUp(300);
		}
	});
	vod_2_btn2.click(function(){
		if(!$(this).parents('.tit').is('.on')){
			$(this).parents('.tit').addClass('on');
			$(this).parents('.tit').next('.con').slideDown(300);
		}else{
			$(this).parents('.tit').removeClass('on');
			$(this).parents('.tit').next('.con').slideUp(300);
		}
	});
	/* MOBILE TOP BUTTON */
	$("#footer_wrap .top").click(function(e){
	    e.preventDefault();
	    var obj=0;
	    $("html, body").animate({scrollTop:obj}, 'slow');
	});

	var evt_mc = $('.gnb .event');
	var evt_fc = $('.gnb .event a');
	var evt_bc = $('.gnb .event .event_menu .btn_03>a');

	evt_mc.hover(function(){
		objwidth = document.body.clientWidth;
		if(objwidth > 768){
			$(this).children('div').removeClass("off").addClass("on");
		}
	},function(){
		objwidth = document.body.clientWidth;
		if(objwidth > 768){
			$(this).children('div').removeClass("on").addClass("off");
		}
	});
	evt_fc.bind('focus',function(){
		objwidth = document.body.clientWidth;
		if(objwidth > 768){
			$(this).next('div').removeClass("off").addClass("on");
		}
	});
	evt_bc.bind('blur',function(){
		objwidth = document.body.clientWidth;
		if(objwidth > 768){
			evt_fc.next('div').removeClass("on").addClass("off");
		}
	});
};

//통합검색
function fn_combine_search(frm, actionUrl, actionTarget){
	if(frm.combineKeyword.value.trim() == ""){
		alert("검색어를 입력하세요.");
		frm.combineKeyword.focus();
		return false;
	}else{
		if(frm.combineKeyword.value.length < 2){
			alert("검색어를 두 글자 이상 입력하세요.");
			frm.combineKeyword.focus();
			return false;
		}
		frm.action = actionUrl;
		frm.target = actionTarget;
		frm.keyword.value = encodeURIComponent(frm.combineKeyword.value.replace(/%/gi, ""));
		frm.combineKeyword.value=encodeURIComponent(frm.combineKeyword.value.replace(/%/gi, ""));
		frm.submit();
	}
}

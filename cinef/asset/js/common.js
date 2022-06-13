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
     * 왼쪽 문자 채우기
     * @param {String} val 값
     * @param {Number} len 길이
     * @param {String} str 문자
     */
    lpad: function( val, len, str ) {
    	var v = new String( val ),
    	    n = ( len || 2 ) - v.length,
    		s = str || '0',
    		p = '',
    		i;

		for ( i = 0; i < n; i += 1 ) {
			p += s;
		}

    	return p + v;
    },

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
    	}else{
	    	var _img = mc.attr("src").replace("_on", "_off");
				       mc.attr("src" , _img);
    	}
    }
};

//모바일 메뉴 버튼 정의 변수 선언
var mchk = 0;
var mcur = 0;
var currheight;
var mcck = 0;
var _height;

//메인 슬라이드 변수 선언
var slide1;

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
		_s.stop().animate({right:-2}, _time, _ani );
		openChk = true;
	}
});

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

function roadInit(){
	//alert('a');
	$('.wmax .bx-viewport').css({'height' : '576px' });
	$('.wmax #contents .theme_area .main_s1 ul').css({'display' : 'block'});
}

function viewDiv(num){
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
					, url : "./include/tvon.jsp"
					, dataType : "html"
					, data : "chlcode="+chlcode
					, contentType: "application/x-www-form-urlencoded; charset=utf-8"
					, success : function(data) {
						$menu_li.find('.detail .tv_ing ul').html(data);
					}
					, error : function(data) {
						//alert("변경에 실패하였습니다.\n 다시 시도해 주세요");
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

//모바일에서 상단 네비 와 채널 네비 제어 함수 ------------------------------->>
function divDisplay(num , mc){
	if(num == 1){
		$('.wmin #main_menu').css({"display" : "block"});
		$('.wmin #channel_gnb').css({"display" : "none"});
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
		$('.wmin #channel_gnb').css({"display" : "none"});
		var replaceImg = $('.channel_menu_m .m1').find('a>img').attr("src").replace("_on.gif", "_off.gif");
							$('.channel_menu_m .m1').find('a>img').attr("src" , replaceImg);
		var _replaceImg = $('.channel_menu_m .m2').find('a>img').attr("src").replace("_on.gif", "_off.gif");
							$('.channel_menu_m .m2').find('a>img').attr("src" , _replaceImg);
	}
}


function subcsspcInit(){
	$('.wmax #channel_gnb').css({"display" : "block"});
	$('.wmax #main_menu').css({"display" : "block"});
	$('.wmax #header .lnb_area h1').css({"top":"10px"});
	$('.wmax #header .lnb_area .search .input_area').css({"display" : "block"});

	$('#main_menu .program .program_menu').css({'display' : ''});

	$('.wmax #contents .theme_area .main_s1 ul').css({'display' : 'block'});
}
function subcssmobileInit(){
	if(mchk == 0){
		$('.wmin #main_menu').css({"display" : "block"});
		$('.wmin #channel_gnb').css({"display" : "none"});
	}else{
		$('.wmin #channel_gnb').css({"display" : "block"});
		$('.wmin #main_menu').css({"display" : "none"});
	}
	if(mcur == 0){
		$('.wmin #header .lnb_area h1').css({"top":"37px"});
		$('.wmin #header .lnb_area .search .input_area').css({"display" : "none"});
	}else{
		$('.wmin #header .lnb_area h1').css({"top":"86px"});
	}


	if(mcck == 0){

	}else{
		var _adis = $('#main_menu .program .program_menu').css('display');
		if(_adis == "none"){
			$('#main_menu').removeClass('off');
		}
	}

	$('#main_menu .talk .channel_number').css({"display" : "none"});
	$('#contents').css({"padding-top" : "0"});

	if($("div").is('.layerpopup')){
		layer_close();
	}
}



function submobileInit(){
	var slide1_lengh = $('#contents .theme_area .main_s1 .bxslider1>li').length;

	if(slide1_lengh > 1){
		if(slide1 == undefined){
			slider1 = $('.bxslider1').bxSlider({
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
			$('#contents .main_s1 .s1_control .slide1_prev').click(function(){
				slider1.goToPrevSlide();
				return false;
			});
			$('#contents .main_s1 .s1_control .slide1_next').click(function(){
				slider1.goToNextSlide();
				return false;
			});
			$('#contents .main_s1 .s1_control .slide1_start').click(function(){
				Common.onoffReplace($('#contents .main_s1 .s1_control .slide1_start>img') , "on");
				Common.onoffReplace($('#contents .main_s1 .s1_control .slide1_stop>img') , "off");
				slider1.startAuto();
				return false;
			});
			$('#contents .main_s1 .s1_control .slide1_stop').click(function(){
				Common.onoffReplace($('#contents .main_s1 .s1_control .slide1_stop>img') , "on");
				Common.onoffReplace($('#contents .main_s1 .s1_control .slide1_start>img') , "off");
				slider1.stopAuto();
				return false;
			});
		}
	}else{
		$('#contents .theme_area .main_s1 .s1_control').css({'display' : 'none'});
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
	currheight = $('#main_menu').height();

};
function subpcInit(){
	var slide1_lengh = $('#contents .theme_area .main_s1 .bxslider1>li').length;

	if(slide1_lengh > 1){
		if(slide1 == undefined){
			slider1 = $('.bxslider1').bxSlider({
				nextText: '이전 이벤트 보기',
				prevText: '다음 이벤트 보기',
				startText: '자동 보기 시작',
				stopText: '자동 보기 멈춤',
				controls : false ,
				pager: false,
				auto : true,
				pause : 4000,
				touchEnabled : false,
				mode: 'fade' ,
				onSliderLoad: function(){
				// do funky JS stuff here
					roadInit();
				}
			});
			$('#contents .main_s1 .s1_control .slide1_prev').click(function(){
				slider1.goToPrevSlide();
				return false;
			});
			$('#contents .main_s1 .s1_control .slide1_next').click(function(){
				slider1.goToNextSlide();
				return false;
			});
			$('#contents .main_s1 .s1_control .slide1_start').click(function(){
				Common.onoffReplace($('#contents .main_s1 .s1_control .slide1_start>img') , "on");
				Common.onoffReplace($('#contents .main_s1 .s1_control .slide1_stop>img') , "off");
				slider1.startAuto();
				return false;
			});
			$('#contents .main_s1 .s1_control .slide1_stop').click(function(){
				Common.onoffReplace($('#contents .main_s1 .s1_control .slide1_stop>img') , "on");
				Common.onoffReplace($('#contents .main_s1 .s1_control .slide1_start>img') , "off");
				slider1.stopAuto();
				return false;
			});
		}
	}else{
		$('#contents .theme_area .main_s1 .s1_control').css({'display' : 'none'});
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

	$('.wmax #header .lnb_area h1').css({"top":"10px"});
};

function ch_icon(num , _href){
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

	//메뉴 활성화 선언
	if(typeof gnbNum !=undefined){
		$('.gnb #main_menu .wrap_gnb>li').eq(gnbNum).addClass("on");
	}

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
				logoBtn.stop().css({"top" : "86px"});
			}else{
				$(this).parents('.mobile').next('.input_area').stop().slideDown(300);
				logoBtn.stop().animate({"top" : "86px"},300);
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

	/* MOBILE TOP BUTTON */
	$("#footer_wrap .top").click(function(e){
	    e.preventDefault();
	    var obj=0;
	    $("html, body").animate({scrollTop:obj}, 'slow');
	  });
	    //모바일 변환시 대표 이미지 슬라이드  제어 --------------------------------//
	for( var i = 0; i<2; i++){
		$('.s2_control a').eq(i).click(function(){
			var btCurrNum = Number($(this).index());
			sumView(btCurrNum);
		});
	}

	/*요청방법 자세히 보기 */
	$('.top_info p.right a').click(function(){
		if($('.bottom_info').is(":hidden")){
			$('.bottom_info').slideDown(300 , _ani);
			var _img = $(this).next('img').attr("src").replace("4", "3");
				      $(this).addClass('on').next('img').attr("src" , _img);
		}else{
			$('.bottom_info').slideUp(300 , _ani);
			var _img = $(this).next('img').attr("src").replace("3", "4");
				      $(this).removeClass('on').next('img').attr("src" , _img);
		}
	});


	var gnb_mc = $('.gnb #main_menu>li');
	var gnb_fc = $('.gnb #main_menu>li span>a');

	var evt_mc = $('.gnb .event');
	var evt_fc = $('.gnb .event a');
	var evt_bc = $('.gnb .event .event_menu .btn_03>a');

	var gnb_eq;
	gnb_mc.hover(function(){
		gnb_eq = $(this).index();
		gnbMenuOver( gnb_eq, true);
	},function(){
		gnbMenuOver( gnb_eq,false);
	});
	gnb_fc.focus(function(){
		gnb_eq = $(this).parents('span').parents('li').index();
		if($(this).parents('span').parents('li').children('div').is('div')){
			gnbMenuOver( gnb_eq , true);
		}else{
			gnbMenuOver( '-1' , true);
		}
	});

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


var overch = -1;

function gnbMenuOver( num , bl){

	objwidth = document.body.clientWidth;
	if(objwidth > 768){
		if(bl){
			for(var i = 0; i < 6; i++){
				if( i == num){
					$('.gnb #main_menu>li').eq(i).children('div').removeClass("off").addClass("on");
				}else{
					$('.gnb #main_menu>li').eq(i).children('div').removeClass("on").addClass("off");
					$('.gnb .event div').removeClass("on").addClass("off");
				}
			}
		}else{
			$('.gnb #main_menu>li').eq(num).children('div').removeClass("on").addClass("off");
		}
	}
}

function menuClick(_this , bl){
	var _dis = $(_this).css('display');
	if(objwidth < 768){
		if(_dis == "none"){
			mcck = 1;
			$(_this).slideDown(500 , _ani);
			$('#main_menu').addClass('off');
		}else{
		 	mcck = 0;
			$(_this).slideUp(500 , _ani);
			$('#main_menu').removeClass('off');
		}
	}else{
		//
		if($('#contents').is('.ipad')){
			//alert('a');
			if(bl){
				$(_this).css({'display' : 'block'});
				$(_this).removeClass("off").addClass("on");
			}else{
				//alert('a');
				$(_this).css({'display' : 'none'});
				//$('#main_menu').removeClass('off');
				$(_this).removeClass("on").addClass("off");
			}

		}
	}
}


function mEvent(_div , _href , bl){
	var objw = document.body.clientWidth;
	if(objw < 768){
		location.href = _href;
	}else{
		if($('#contents').is('.ipad')){
			if(bl){
				$(_div).css({'display' : 'block'});
				$(_div).removeClass("off").addClass("on");
			}else{
				//alert('a');
				$(_div).css({'display' : 'none'});
				//$('#main_menu').removeClass('off');
				$(_div).removeClass("on").addClass("off");
			}
		}
	}
}

//모바일 변환시 대표 이미지 슬라이드  제어 --------------------------------//
function sumView(num){
	//alert('a');
	for( var i = 0; i<2; i++){
		if(i == num){
			$('.main_s2>ul>li').eq(i).removeClass('none').addClass('block');
			var bb = $('.main_s2 .s2_control .bt'+ i +'>img');
			Common.onoffReplace(bb , "on");
			continue;
		}else{
			$('.main_s2>ul>li').eq(i).removeClass('block').addClass('none');
			var cc = $('.main_s2 .s2_control .bt'+ i + '>img');
			Common.onoffReplace(cc , "off");
		}
	}

}

//채널번호 안내 슬라이드 제어 --------------------------------//
function openDiv(_div , _href){
	var objw = document.body.clientWidth;
	var _h = $(_div).outerHeight();
	if(objw < 768){
		location.href = _href;
	}else{
		var _on = $(_div).parents('.talk');
		if($(_div).is(":hidden")){
			$(_div).slideDown(500 ,_ani);
			$("#contents").animate({"padding-top" : _h},500 ,_ani);
			_on.addClass('on');
		}else{
			$(_div).slideUp(500 , _ani);
			$("#contents").animate({"padding-top" : 0},500 ,_ani);
			_on.removeClass('on');
		}
	}


}


// 메인 더보기 제어
function m_more(){
	$('#contents .vod_area ul li').removeClass('none');
	var m_more = $('#contents .vod_area p.more');
		m_more.hide();
}









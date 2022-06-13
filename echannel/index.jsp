<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <title>E채널</title>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=yes" /><meta name="naver-site-verification" content="e172eb676c078f7ba561ee3955d93a3f3355be3d"/>
<meta property="og:image" content="http://imtcast.com/images/main/logo_echannel.gif">
	<link rel="stylesheet" type="text/css" href="/echannel/asset/css/swiper.min.css"/>
    <link rel="stylesheet" type="text/css" href="/echannel/asset/css/main_m.css" />
    <link rel="stylesheet" type="text/css" href="/echannel/asset/css/main_p.css?ver=1654842000560" />
    <link rel="stylesheet" type="text/css" href="/asset/css/common_main.css?ver=1654842000560" />
    <link rel="stylesheet" type="text/css" href="/echannel/asset/css/main_component.css" />
	<link rel="stylesheet" type="text/css" href="/cms/asset/css/slide.css" />
    <script type="text/javascript" src="/echannel/asset/js/libs/min/jquery-2.0.0.min.js" />
    <script type="text/javascript">
        document.domain = "imtcast.com";   //vod system crossdomain
    </script><script type="text/javascript">
        var gnbNum; // 메뉴 활성화 변수 (0)부터 시작..
    </script>
    <script>
		function noticePopupView(idx) {
			const f = document.notice_frm;
			f.searchchcode.value = "CH_E";
			f.iBoardNum.value = idx;
			f.submit();
		}
	</script>
</head>
<body>
<div id="skip_navigation">
    <ul>
        <li><a href="#main_menu">메인메뉴바로가기</a></li>
        <li><a href="#channel_gnb">채널메뉴바로가기</a></li>
        <li><a href="#contents">본문바로가기</a></li>
        <li><a href="#footer_wrap">하단정보 바로가기</a></li>
    </ul>
</div>

<div id="wrap" class="wmax">
    <div id="wrap_bg">
        <div id="wrap_bg1"></div>
        <div id="wrap_bg2">

            <!-- main -->
            <div id="main">
                <!-- header -->
                <script type="text/javascript" src="/asset/js/common.js"></script>
<script>
    function fn_commonTopSearch() {
        frm = document.frmCommTopSearch;
        if(frm.keyword.value == "") {
            alert("검색어를 입력해 주세요");
            frm.keyword.focus();
            return;
        } else {
            frm.action = "/search/search.jsp?keyword=" + encodeURI(frm.keyword.value);
            frm.target = "_blank";
            frm.submit();
        }
    }
</script>
<div id="header">
	<div class="lnb_area">
		<h1><a href="/echannel/index.jsp"><img src="/echannel/images/channel/logo_m.gif" alt="E채널" /></a></h1>
		<ul class="lnb">
		    <li class="first"><a href="/member/login.jsp?channelID=CH_E">로그인</a></li>
			<li><a href="/member/join.jsp?channelID=CH_E">회원가입</a></li>
		    <li><a href="javascript:open_schedule('TOTAL');">통합편성표</a></li>
			<li><a href="/tcast/ceo_communication.jsp" style="color:#959595;">CEO 정도경영 소통창구</a></li>
			<li class="tpoint" style="background:unset;"><a href="/tcast/reception_comments.jsp" style="color:#959595;">시청자의견접수</a></li>
		</ul>
	</div>

	<div class="proinfo">
		<!-- 이벤트 베너 영역 : 시작 -->
		<script type="text/javascript">

	function subBannerCount(bnum, link, starget) {

		var val = "bannernum="+bnum+"&link="+link;
		var siteUrl = "/common/inc/banner_count.jsp";

		$.ajax({
			type:"post",
			url:siteUrl,
			dataType:"html",
			async: false,
			data:val,
			success:function(data){
			    if( starget == "top" ){
			        window.open(link);
			    } else {
			        location.href = link;
			    }
			},
			error:function(){
				alert("실행 중 오류가 발생하였습니다.\n관리자에게 문의하십시오.");
			}
		});
	}
</script>

<div class="none">
<ul class="bxslider4">
<li style="display:;"><a href="#네비게이션상단" title="새창으로열림" onClick="javascript:subBannerCount('182','https://www.imtcast.com/echannel/index.jsp#CH_E','')"><img src="/UploadFile/CMS/202202281056471.PNG" width="0" height="0" alt="" /></a></li>
	    <li style="display:none;"><a href="#네비게이션상단" title="새창으로열림" onClick="javascript:subBannerCount('169','http://www.imtcast.com/cms/index.jsp?spgmdomain=sportysisters2','')"><img src="/UploadFile/CMS/202111171109071.PNG" width="0" height="0" alt="" /></a></li>
	    </ul>
</div>
<!-- 이벤트 베너 영역 : 종료 -->
		<ul class="select">
			<li class="slide4 prev"><a href="#a">이전프로그램보기</a></li>
			<li class="slide4 next"><a href="#a">다음프로그램보기</a></li>
		</ul>
	</div>
</div>
<!-- //header -->

                <!-- menu_area -->
                <div id="menu_area">
                    <!--gnb -->
                    <style>
.wmax #menu_area .gnb ul#main_menu .channel_number dl.step3 {
	background: #F3F3F3 url(/echannel/images/common/btv1.jpg?ver=1654842000607) no-repeat bottom center;
}
.wmax #menu_area .gnb ul#main_menu .talk {left: 628px;}
</style>
<script>
function goGugun(ssido){
    $.ajax({
        type : "POST"
        , url : "/pgm/number/pgm_view_channel.jsp"
        , dataType : "html"
        , data : "ssido="+ssido+"&sfchcode=CH_E&sgugun=강남구"
        , contentType: "application/x-www-form-urlencoded; charset=utf-8"
        , success : function(data) {
            $('#channel_change_iframe').html(data);
        }
        , error : function(data) {
            alert("프로그램 조회에 실패하였습니다.\n 다시시도하여주세요");
        }
    });
}

function goList(sgugun){
	$.ajax({
        type : "POST"
        , url : "/pgm/number/pgm_view_channel.jsp"
        , dataType : "html"
        , data : "sgugun="+sgugun+"&sfchcode=CH_E&ssido=서울"
        , contentType: "application/x-www-form-urlencoded; charset=utf-8"
        , success : function(data) {
            $('#channel_change_iframe').html(data);
        }
        , error : function(data) {
            alert("프로그램 조회에 실패하였습니다.\n 다시시도하여주세요");
        }
    });
}
</script>
<form name="frmDoc" method="post" >
	<input type="hidden" name="idx" id="idx" value="" />
	<input type="hidden" name="ssido" />
	<input type="hidden" name="sfchcode" value="CH_E"/>
</form>
<div class="gnb">
	<ul id="main_menu">
		<div class="wrap_gnb">
			<li class="depth1"><span class="tap_menu1"><a class="depth1_a" href="/echannel/ech/index.jsp">채널소개</a></span></li><!-- 공통 -->
			<li class="depth1"><span class="tap_menu2"><a class="depth1_a" href="javascript:open_schedule('CH_E');">편성표</a></span></li><!-- 공통 -->
			<!-- program -->
			<li class="depth1 program">
	<span class="tap_menu3">
		<a class="depth1_a" id="btn_program" href="#a" onclick="menuClick('#program_menu', true); tabOnOff(0); return false;">프로그램</a>
	</span>
	<div class="program_menu" id="program_menu">
<dl class="depth2_2">
	<dt>방영중 프로그램</dt>
	<dd>
		<ul>
		<li>
			<a href="/cms/index.jsp?spgmdomain=bravedetective" target="_blank" title="새창열림">
				용감한 형사들
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=toboblove" target="_blank" title="새창열림">
				토요일은 밥이 좋아
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=sportysisters2" target="_blank" title="새창열림">
				노는언니2
			</a>
		</li>
		</ul>
	</dd>
</dl>
<dl class="depth2_3">
	<dt>종영 프로그램</dt>
	<dd>
		<ul>
		<li>
			<a href="/cms/index.jsp?spgmdomain=ohmygod" target="_blank" title="새창열림">
				어머어머 웬일이니
			</a>
		</li>
		<li>

				한쿡사람

		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=sportybro2  " target="_blank" title="새창열림">
				노는브로2
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=momcafe" target="_blank" title="새창열림">
				맘 편한 카페
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=momcafe2" target="_blank" title="새창열림">
				맘 편한 카페2
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=sportysisters" target="_blank" title="새창열림">
				노는언니
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=sportybro" target="_blank" title="새창열림">
				노는브로
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=natteparent" target="_blank" title="새창열림">
				라떼부모
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=topgoalrhapsody " target="_blank" title="새창열림">
				탑골랩소디
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=realfriend" target="_blank" title="새창열림">
				찐한 친구
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=mybrother" target="_blank" title="새창열림">
				내 형제의 연인들:가족이 보고 있다
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=loveagain" target="_blank" title="새창열림">
				찐어른미팅 : 사랑의 재개발
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=babycastle" target="_blank" title="새창열림">
				베이비 캐슬
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=playavengers" target="_blank" title="새창열림">
				스타야유회:놀벤져스
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=marriagevacation3" target="_blank" title="새창열림">
				별거가 별거냐 3 - 세번째 결혼방학
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=jointstudyarea " target="_blank" title="새창열림">
				수다로 통일 - 공동공부구역JSA
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=mydaughter4" target="_blank" title="새창열림">
				내 딸의 남자들4
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=mydaughter3" target="_blank" title="새창열림">
				내 딸의 남자들3
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=toyoufromme" target="_blank" title="새창열림">
				너에게 나를 보낸다
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=mountaintalk" target="_blank" title="새창열림">
				정상회담
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=marriagevacation" target="_blank" title="새창열림">
				별거가 별거가 2 - 두번째 방학
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=forthefirsttime" target="_blank" title="새창열림">
				태어나서처음으로
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=mydaughter2 " target="_blank" title="새창열림">
				내 딸의 남자들2
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=mydaughter" target="_blank" title="새창열림">
				내 딸의 남자들 : 아빠가 보고 있다
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=marriagevacation" target="_blank" title="새창열림">
				별거가 별거냐
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=bravepress" target="_blank" title="새창열림">
				용감한 기자들
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=siksikgirls" target="_blank" title="새창열림">
				식식한 소녀들
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=gostraight" target="_blank" title="새창열림">
				직진의 달인
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=gotravel" target="_blank" title="새창열림">
				최초의 수련예능 GO독한 사제들
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=riders" target="_blank" title="새창열림">
				라이더스 내일을 잡아라
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=thematshot" target="_blank" title="새창열림">
				THE맛있는원샷
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=bravewriters" target="_blank" title="새창열림">
				용감한 작가들
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=lovepawnshop" target="_blank" title="새창열림">
				연애전당포
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=loveauction" target="_blank" title="새창열림">
				연애정산쇼 러브옥션
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=braveranking" target="_blank" title="새창열림">
				용감한 랭킹
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=koreanfiles2" target="_blank" title="새창열림">
				대한민국 사건파일 No.5 시즌2
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=romance" target="_blank" title="새창열림">
				실업급여 로맨스
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=shortfamily" target="_blank" title="새창열림">
				단단한 가족
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=specialpress" target="_blank" title="새창열림">
				특별기자회견
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=koreanfiles" target="_blank" title="새창열림">
				대한민국 사건파일 No.5
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=marryme" target="_blank" title="새창열림">
				당신은 왜 결혼하지 못했을까?
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=theonewoman" target="_blank" title="새창열림">
				절대그녀
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=queen" target="_blank" title="새창열림">
				여제
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=women" target="_blank" title="새창열림">
				여자는 다 그래
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=docminbak" target="_blank" title="새창열림">
				독한민박
			</a>
		</li>
		<li>
			<a href="/cms/index.jsp?spgmdomain=docminbak2" target="_blank" title="새창열림">
				독한민박 시즌2
			</a>
		</li>
		</ul>
	</dd>
</dl>
		<div class="program_banner">
			<jsp:include page="/common/inc/include_banner.jsp" flush="true">
				<jsp:param name="chcode"	value="CH_E" />
				<jsp:param name="location"	value="LAYER" />
			</jsp:include>
		</div>
	</div>
</li>
<!-- //program -->
			<!-- 예외항목 -->
			<!-- //예외항목 -->
			<!-- 채널안내  -->
			<!-- now, mx, ever는 없는 항목 -->
			<li class="talk ch_info">
				<span class="tap_menu5">
					<a class="depth1_a" href="/echannel/ech/number.jsp" onclick="openDiv('#main_menu .talk .channel_number' , this.href);return false;">채널번호 안내</a>
				</span>
				<div class="channel_number" id="channel_change_iframe">
					<dl class="step1">
						<dt><img src="/echannel/images/common/tit_number_s1.gif" alt="step1" />시/도를 선택해주세요.</dt>
						<dd>
							<p class="p">
			<a href="javascript:goGugun('서울')" class="on">서울시</a>
<a href="javascript:goGugun('경북')">경상북도</a>
<a href="javascript:goGugun('세종')">세종시</a>
<a href="javascript:goGugun('인천')">인천시</a>
<a href="javascript:goGugun('전북')">전라북도</a>
<a href="javascript:goGugun('강원')">강원도</a>
<a href="javascript:goGugun('대전')">대전시</a>
<a href="javascript:goGugun('제주')">제주도</a>
<a href="javascript:goGugun('충남')">충청남도</a>
<a href="javascript:goGugun('울산')">울산시</a>
<a href="javascript:goGugun('경기')">경기도</a>
<a href="javascript:goGugun('경남')">경상남도</a>
<a href="javascript:goGugun('광주')">광주시</a>
<a href="javascript:goGugun('부산')">부산시</a>
<a href="javascript:goGugun('전남')">전라남도</a>
<a href="javascript:goGugun('충북')">충청북도</a>
<a href="javascript:goGugun('대구')">대구시</a>
</p>
						</dd>
					</dl>
					<dl class="step2">
						<dt><img src="/echannel/images/common/tit_number_s2.gif" alt="step2" />시/구/군을 선택해주세요.</dt>
						<dd>
							<p class="p">
			<a href="javascript:goList('강남구')" class="on">강남구</a>
<a href="javascript:goList('강동구')">강동구</a>
<a href="javascript:goList('강북구')">강북구</a>
<a href="javascript:goList('강서구')">강서구</a>
<a href="javascript:goList('관악구')">관악구</a>
<a href="javascript:goList('광진구')">광진구</a>
<a href="javascript:goList('구로구')">구로구</a>
<a href="javascript:goList('금천구')">금천구</a>
<a href="javascript:goList('노원구')">노원구</a>
<a href="javascript:goList('도봉구')">도봉구</a>
<a href="javascript:goList('동대문구')">동대문구</a>
<a href="javascript:goList('동작구')">동작구</a>
<a href="javascript:goList('마포구')">마포구</a>
<a href="javascript:goList('서대문구')">서대문구</a>
<a href="javascript:goList('서초구')">서초구</a>
<a href="javascript:goList('성동구')">성동구</a>
<a href="javascript:goList('성북구')">성북구</a>
<a href="javascript:goList('송파구')">송파구</a>
<a href="javascript:goList('양천구')">양천구</a>
<a href="javascript:goList('영등포구')">영등포구</a>
<a href="javascript:goList('용산구')">용산구</a>
<a href="javascript:goList('종로구')">종로구</a>
<a href="javascript:goList('중구')">중구</a>
<a href="javascript:goList('중랑구')">중랑구</a>
</p>
						</dd>
					</dl>
					<dl class="step3">
						<dt>서울강남구 채널번호 입니다.</dt>
						<dd>
			<div>
	<P>
		<span>디지털 : <strong>38</strong>번</span>
		<span>아날로그 : <strong>47</strong>번</span>
	</P>
	<p>
		<span>
			<a href="" target="_blank" title="씨앤앰강남 바로가기">
				씨앤앰강남
				<img src="/echannel/images/common/icon_home.png" alt="씨앤앰강남 홈페이지" />
			</a>
		</span>
		고객센터 : 1644-1100
	</p>
</div>
<div>
	<P>
		<span>디지털 : <strong>215</strong>번</span>
		<span>아날로그 : <strong>28-1</strong>번</span>
	</P>
	<p>
		<span>
			<a href="http://dcc.hcn.co.kr" target="_blank" title="동작케이블TV방송 바로가기">
				동작케이블TV방송
				<img src="/echannel/images/common/icon_home.png" alt="동작케이블TV방송 홈페이지" />
			</a>
		</span>
		고객센터 : 
	</p>
</div>
</dd>
					</dl>
					<div class="btn_gnb_close">
						<a href="#a" onclick="openDiv('#main_menu .talk .channel_number' , this.href);return false;" title="닫기">닫기<img src="/echannel/images/common/btn_gnb_close.gif" alt="닫기" /></a>
					</div>
				</div>
			</li>
			<!-- //채널안내  -->
<li class="depth1 family"><span class="tap_menu4"><a class="depth1_a" id="btn_family" href="#a" onclick="menuClick('#channel_gnb', true); tabOnOff(1); return false;">Family Channel</a></span></li>
<li class="survey">
				<span>
					<a class="depth1_a" target="_blank" href="/tcast/reception_comments.jsp">시청자 의견접수</a>
				</span>
			</li>
		</div>
	</ul>
</div><!-- //gnb -->

                    <!-- main_slide -->
                    <script type="text/javascript">
	function ch_iconA(num, _href, channel, zpage, cmsId, ecmsId){
		var scmsId = "#"+cmsId;
		var xcmsId = "#"+ecmsId;
		window.open(_href, '_self');
	};

	function slide_move(obj) {
		const stat = $(obj).attr("src").split("/")[4].split("2.")[0].replace("btn_", "");
		if(stat == "left") {
			var date = new Date();
			var time = (("00" + date.getHours()).slice(-2)) + ":" + (("00" + date.getMinutes()).slice(-2));
			$(".detail .ch_title .time").text(convert12H(time));
		}
	}

	function convert12H(time, options) {
		var _ampmLabel = (options && options.ampmLabel) || [ '오전', '오후' ];
		var _timeRegExFormat = /^([0-9]{2}):([0-9]{2})$/;
		var _timeToken = time.match(_timeRegExFormat);

		if (typeof _timeRegExFormat === 'undefine') {
			// 잘못된 형식
			return null;
		}

		var _intHours = parseInt(_timeToken[1]);
		var _intMinutes = ("00" + parseInt(_timeToken[2])).slice(-2);
		var _strHours12H = ('0' + (_intHours == 12 ? 12 : _intHours % 12)).slice(-2);
		return _strHours12H + ':' + _intMinutes + ' ' + _ampmLabel[parseInt(_intHours / 12)];
	}
</script>

<div id="channel_gnb">
	<div class="btn_imtcast"><a href="/index.jsp" target="WIN_TCAT_MAIN" title="새창">Family channel</a></div>
	<span class="control"><a href="#a"><img src="/cms/images/channel/btn_left2.png" alt="더 많은 채널정보보기" onclick="slide_move(this);" /></a></span>
	<ul class="channel_menu">
		<li class="menu1">
			<a>Tcast Channel VIEW</a>
		</li>
		<li class="menu2">
			<a href="/echannel/index.jsp#CH_E">E채널</a>
		</li>
		<li class="menu3">
			<a href="/screen/index.jsp#CH_S">스크린</a>
		</li>
		<li class="menu4">
			<a href="/dramacube/index.jsp#CH_Q">드라마큐브</a>
		</li>
		<li class="menu5">
			<a href="/now/index.jsp#CH_F">채널나우</a>
		</li>
		<li class="menu6">
			<a href="/chview/index.jsp#CH_V">채널 뷰</a>
		</li>
		<li class="menu7">
			<a href="/cinef/index.jsp#CH_C" >씨네프</a>
		</li>
		<li class="menu8">
			<a href="/fashionn/index.jsp#CH_N" >패션앤</a>
		</li>
		<li class="menu9">
			<a href="/mx/index.jsp#CH_X">MX</a>
		</li>
		<li class="menu10">
			<a href="/ever/index.jsp#CH_W">채널에버</a>
		</li>
		<li class="menu11">
			<a href="http://www.champtv.com/#CH_H" >챔프</a>
		</li>
		<li class="menu12">
			<a href="/index.jsp"  title="새창" target="WIN_TCAT_MAIN" style="font-weight:bold; background:#d8d8d8b5">티캐스트</a>
		</li>
	</ul>
	<div class="detail main">
		 <p class="ch_title">
			<strong></strong>
			<span class="time">03:20 오후</span>
		</p>

<div class="ch_now" style="border-left: 0;">
				<p>E채널</p>
				<ol>
<li>토요일은 밥이 좋...</li>
<li class="none"><span>18:15</span>유 퀴즈 온 더 ...</li>
<li class="none"><span>20:15</span>용감한 형사들</li>
</ol>
			</div>
<div class="ch_now" style="border-left: 0;">
				<p>스크린</p>
				<ol>
<li>리틀포레스트:여름...</li>
<li class="none"><span>16:15</span>리틀포레스트:여름...</li>
<li class="none"><span>17:20</span>CSI:NY2</li>
</ol>
			</div>
<div class="ch_now" style="border-left: 0;">
				<p>드라마큐브</p>
				<ol>
<li>무한도전</li>
<li class="none"><span>16:50</span>놀라운토요일</li>
<li class="none"><span>18:30</span>왜오수재인가</li>
</ol>
			</div>
<div class="ch_now" style="border-left: 0;">
				<p>채널나우</p>
				<ol>
<li>용감한 형사들</li>
<li class="none"><span>18:15</span>신비한 TV 서프...</li>
<li class="none"><span>19:30</span>NCIS: LA ...</li>
</ol>
			</div>
<div class="ch_now" style="border-left: 0;">
				<p>채널 뷰</p>
				<ol>
<li>나는 자연인이다</li>
<li class="none"><span>16:40</span>나는 자연인이다</li>
<li class="none"><span>17:50</span>이제 만나러 갑니...</li>
</ol>
			</div>
<div class="ch_now" style="border-left: 0;">
				<p>씨네프</p>
				<ol>
<li>생각의여름 </li>
<li class="none"><span>17:30</span>재심</li>
<li class="none"><span>18:45</span>재심</li>
</ol>
			</div>
<div class="ch_now" style="border-left: 0;">
				<p>패션앤</p>
				<ol>
<li>순간포착 세상에이...</li>
<li class="none"><span>16:50</span>토요일은 밥이 좋...</li>
<li class="none"><span>18:50</span>사랑과전쟁</li>
</ol>
			</div>
<div class="ch_now" style="border-left: 0;">
				<p>MX</p>
				<ol>
<li>사대명포</li>
<li class="none"><span>17:25</span>사대명포</li>
<li class="none"><span>18:30</span>WWE Month...</li>
</ol>
			</div>
<div class="ch_now" style="border-left: 0;">
				<p>채널에버</p>
				<ol>
<li>인생법정 이것은 ...</li>
<li class="none"><span>16:50</span>야망의 세월</li>
<li class="none"><span>17:50</span>야망의 세월</li>
</ol>
			</div>
<div class="ch_now" style="border-left: 0;">
				<p>챔프</p>
				<ol>
<li>디지몬 어드벤처:</li>
<li class="none"><span>15:30</span>디지몬 어드벤처:</li>
<li class="none"><span>16:00</span>디지몬 어드벤처:</li>
</ol>
			</div>
</div>
<!-- 	<div class="pc_r_banner"> -->
<!-- 		<a href="#"><img src="/images/common/banner_right.jpg"></a> -->
<!-- 	</div> -->
	<div class="pc">
			<script type="text/javascript">

	function subBannerCount(bnum, link, starget) {

		var val = "bannernum="+bnum+"&link="+link;
		var siteUrl = "/common/inc/banner_count.jsp";

		$.ajax({
			type:"post",
			url:siteUrl,
			dataType:"html",
			async: false,
			data:val,
			success:function(data){
			    if( starget == "top" ){
			        window.open(link);
			    } else {
			        location.href = link;
			    }
			},
			error:function(){
				alert("실행 중 오류가 발생하였습니다.\n관리자에게 문의하십시오.");
			}
		});
	}
</script>

</div>
</div><!-- // main_slide -->
                </div>
                <!-- //menu_area -->

                <!-- container -->
                <div id="container">
                    <!-- contents -->
                    <div id="contents">
                        <!-- theme_area -->
                        <div class="theme_area">
                            <div class="main_s1"></div>
                            <div class="main_s2"></div>
                        </div>
                        <!-- //theme_area -->

                       <!-- 슬라이드배너 -->
			            <div class="swiper-container main-showcase" style="max-width: 880px;">
			              <div class="swiper-wrapper">
			                <!-- pc -->
			                <div class="swiper-slide" align="center">
	<img src="/UploadFile/BANNER/V_202202281124041.PNG"style="max-width: 100%; margin: 0px auto;" alt="제작역량평가 매우우수등급 배너" /></div>

<div class="swiper-slide" align="center">
<a href="/cms/index.jsp?spgmdomain=toboblove" target="_self">
	<img src="/UploadFile/BANNER/V_20220225912481.JPG"style="max-width: 100%; margin: 0px auto;" alt="토밥 오후 5시 본방고지" /></a>
</div>

<div class="swiper-slide" align="center">
<a href="http://www.imtcast.com/echannel/sportysisters2" target="_self">
	<img src="/UploadFile/BANNER/V_202109231722531.JPG"style="max-width: 100%; margin: 0px auto;" alt="매주 화요일 밤 8시 50분!" /></a>
</div>

</div>
			              <div class="swiper-pagination"></div>
			            </div>
			            <!-- 슬라이드배너 -->

                        <!-- 채널메뉴 -->
                        <div class="contents_box" style="margin-top:45px; margin-bottom:45px">
                        	<ul class="channel_menu">
                          		<li>
	<a href="/screen/index.jsp#CH_S" target="_blank" title="새창열기">
		<img src="/images/main/channel_02_off.png" alt="SCREEN" /></a>
	<span class="tooltip_text">[영화] 티캐스트 영화 패밀리 채널</span>
</li>
<li>
	<a href="/dramacube/index.jsp#CH_Q" target="_blank" title="새창열기">
		<img src="/images/main/channel_03_off_v.png" alt="DRAMACUBE" /></a>
	<span class="tooltip_text">[드라마] 믿고 보는 드라마 채널</span>
</li>
<li>
	<a href="/now/index.jsp#CH_F" target="_blank" title="새창열기">
		<img src="/images/main/channel_11_off.png" alt="NOW" /></a>
	<span class="tooltip_text">[해외드라마] 미드전문채널</span>
</li>
<li>
	<a href="/chview/index.jsp#CH_V" target="_blank" title="새창열기">
		<img src="/images/main/channel_04_off.png" alt="channel view" /></a>
	<span class="tooltip_text">[르포] 대한민국 NO.1 논픽션 채널</span>
</li>
<li>
	<a href="/cinef/index.jsp#CH_C" target="_blank" title="새창열기">
		<img src="/images/main/channel_06_off.png" alt="CINEf" /></a>
	<span class="tooltip_text">[여성/예술영화] 대한민국 대표 여성영화 전문 채널</span>
</li>
<li>
	<a href="/fashionn/index.jsp#CH_N" target="_blank" title="새창열기">
		<img src="/images/main/channel_05_off.png" alt="FASHION N" /></a>
	<span class="tooltip_text">[여성/트렌드] 패션·뷰티·여성라이프스타일 채널</span>
</li>
<li>
	<a href="/mx/index.jsp#CH_X" target="_blank" title="새창열기">
		<img src="/images/main/channel_13_off.png" alt="MX" /></a>
	<span class="tooltip_text">[남성] 국내 유일! 남성 종합 엔터테인먼트 채널</span>
</li>
<li>
	<a href="/ever/index.jsp#CH_W" target="_blank" title="새창열기">
		<img src="/images/main/channel_12_off.png" alt="EVER" /></a>
	<span class="tooltip_text">[클래식드라마] 명작전문채널</span>
</li>
<li>
	<a href="http://www.champtv.com/#CH_H" target="_blank" title="새창열기">
		<img src="/images/main/channel_10_off.png" alt="CHAMP" /></a>
	<span class="tooltip_text">[어린이] 어린이 천국, 우리들 세상</span>
</li>
</ul>
                        </div>
                        <!-- Now on TV -->
                        <div class="Now_on_TV">
							<h2>Now on TV</h2>
							<ul>
<li class="none">
<img src="/images/common/echannel_thumb.jpg" alt="더 짠내투어 74회" class="img" />
<p><span>12:45am</span>더 짠내투어 74회</p>
</li>
<li class="center">
<img src="/images/common/echannel_thumb.jpg" alt="토요일은 밥이 좋아 13회" class="img" />
<p><span><img src="./images/common/icon_on_air.gif" alt="on air" class="on_air"/>14:20pm</span>토요일은 밥이 좋아 13회</p>
</li>
<li class="none">
 									<!-- img src="http://vod1.imtcast.com:8011/Media///thumbnail/_180x135.jpg" alt="" class="img" / -->	
 <img src="/images/common/echannel_thumb.jpg" alt="토요일은 밥이 좋아 23회" class="img" />
 <!--<a href="#"><span>16:10pm</span>토요일은 밥이 좋아 23회</span></a>-->
                                       
                                       <p><span>16:10pm</span>토요일은 밥이 좋아 23회</p>
 </li>
 </ul>
						</div><!-- //Now on TV -->

                        <!-- 메인 배너 -->
                        <!-- //메인 배너 -->

                        <!-- youtube list -->
                        <div class="vod_youtube">
                            <h2>Hot Clip</h2>
                            <ul>
                             <script type="text/javascript" src="/echannel/asset/js/libs/min/jquery-2.0.0.min.js"></script>
<li>
		<!-- <iframe style="width: 207px;height: 153px;" src="https://www.youtube.com/embed/_IyLQrDqAPE" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen=""></iframe>  -->
		<iframe id="iframe_youtube" src="https://www.youtube.com/embed/bb173H5xaQ4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen=""></iframe>
		<a href="https://www.youtube.com/watch?v=bb173H5xaQ4" target="_blank" title="새창 열림">
			<span class="h6">[토요일은 밥이 좋아] 24회 예고</span>
			<span class="tit2">부산 2탄! 갓벽한 먹방 루트★</span>
		</a>
	</li>
<li>
		<!-- <iframe style="width: 207px;height: 153px;" src="https://www.youtube.com/embed/_IyLQrDqAPE" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen=""></iframe>  -->
		<iframe id="iframe_youtube" src="https://www.youtube.com/embed/gJVRt7IDImg" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen=""></iframe>
		<a href="https://www.youtube.com/watch?v=gJVRt7IDImg" target="_blank" title="새창 열림">
			<span class="h6">[용감한 형사들] 특별판 2회</span>
			<span class="tit2">벤처기업 재무과장의 47억 횡령사건</span>
		</a>
	</li>
<li class="none">
		<!-- <iframe style="width: 207px;height: 153px;" src="https://www.youtube.com/embed/_IyLQrDqAPE" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen=""></iframe>  -->
		<iframe id="iframe_youtube" src="https://www.youtube.com/embed/9CbadOwscWs" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen=""></iframe>
		<a href="https://www.youtube.com/watch?v=9CbadOwscWs" target="_blank" title="새창 열림">
			<span class="h6">[노는언니2] 41회 예고</span>
			<span class="tit2">세팍타크로와 부산 투어 part2</span>
		</a>
	</li>
</ul>
							<p class="more"><a href="#a" onclick="m_more_youtube(); return false;">더보기  +</a></p>
                            </div>
                        <!-- //youtube list -->
                        <!-- 프로그램 -->
                        <div class="contents_box">
                        	<div class="list_box">
	<h2>프로그램</h2></br>
	<ul class="program_list" style="display: flex;overflow: auto;">
<li>
<a href="http://www.imtcast.com/echannel/bravedetective" target="_self">
	<img src="/UploadFile/BANNER/T_202203221710261.JPG"width="163" height="232" alt="http://www.imtcast.com/echannel/bravedetective" /></a>
</li>

<li>
<a href="http://www.imtcast.com/echannel/toboblove  " target="_self">
	<img src="/UploadFile/BANNER/T_20220225913331.JPG"width="163" height="232" alt="http://www.imtcast.com/echannel/toboblove  " /></a>
</li>

<li>
<a href="http://www.imtcast.com/echannel/Hankooksaram " target="_self">
	<img src="/UploadFile/BANNER/T_202109301633431.JPG"width="163" height="232" alt="매주 금요일 밤 8시 50분" /></a>
</li>

<li>
<a href="/cms/index.jsp?spgmdomain=sportysisters2" target="_self">
	<img src="/UploadFile/BANNER/T_202109231724361.JPG"width="163" height="232" alt="매주 화요일 밤 8시 50분!" /></a>
</li>

<li>
<a href="http://www.imtcast.com/echannel/sportybro2" target="_self">
	<img src="/UploadFile/BANNER/T_202108181747211.JPG"width="163" height="232" alt="노는브로2 본방고지" /></a>
</li>

	</ul>
</div>
</div>
                		<!-- 프로그램 -->
                    </div>
                    <!-- //contents -->

                    <!-- main_aside -->
                    <style>
	.wmax #aside ul.sns li {margin-bottom: 3px;}
	.wmax #aside ul.sns li a {display: block; height: 27px;}

	.wmax #aside ul.sns .f .sns_icon_left {background: url(/images/common/sns_icon_f_left.png) no-repeat 0 0; width: 29px;}
	.wmax #aside ul.sns .f .sns_icon_center {background: url(/images/common/sns_icon_center.png) repeat-x 0 0; width: 148px; font-size: 12px; color: #fff; line-height: 27px; padding-left: 10px;}
	.wmax #aside ul.sns .f .sns_icon_right {background: url(/images/common/sns_icon_right.png) no-repeat 0 0; width: 15px;}

	.wmax #aside ul.sns .i .sns_icon_left {background: url(/images/common/sns_icon_i_left.png) no-repeat 0 0; width: 29px;}
	.wmax #aside ul.sns .i .sns_icon_center {background: url(/images/common/sns_icon_center.png) repeat-x 0 0; width: 148px; font-size: 12px; color: #fff; line-height: 27px; padding-left: 10px;}
	.wmax #aside ul.sns .i .sns_icon_right {background: url(/images/common/sns_icon_right.png) no-repeat 0 0; width: 15px;}

	.wmax #aside ul.sns .p .sns_icon_left {background: url(/images/common/sns_icon_p_left.png) no-repeat 0 0; width: 29px;}
	.wmax #aside ul.sns .p .sns_icon_center {background: url(/images/common/sns_icon_center.png) repeat-x 0 0; width: 148px; font-size: 12px; color: #fff; line-height: 27px; padding-left: 10px;}
	.wmax #aside ul.sns .p .sns_icon_right {background: url(/images/common/sns_icon_right.png) no-repeat 0 0; width: 15px;}

	.wmax #aside ul.sns .b .sns_icon_left {background: url(/images/common/sns_icon_b_left.png) no-repeat 0 0; width: 29px;}
	.wmax #aside ul.sns .b .sns_icon_center {background: url(/images/common/sns_icon_center.png) repeat-x 0 0; width: 148px; font-size: 12px; color: #fff; line-height: 27px; padding-left: 10px;}
	.wmax #aside ul.sns .b .sns_icon_right {background: url(/images/common/sns_icon_right.png) no-repeat 0 0; width: 15px;}

/* 	.wmax #aside ul.sns .y .sns_icon_left {background: url(/images/common/sns_icon_y_left.png) no-repeat 0 0; width: 29px;} */
/* 	.wmax #aside ul.sns .y .sns_icon_center {background: url(/images/common/sns_icon_center.png) repeat-x 0 0; width: 148px; font-size: 12px; color: #fff; line-height: 27px; padding-left: 10px;} */
/* 	.wmax #aside ul.sns .y .sns_icon_right {background: url(/images/common/sns_icon_right.png) no-repeat 0 0; width: 15px;} */

/* 	.wmax #aside ul.sns .n .sns_icon_left {background: url(/images/common/sns_icon_n_left.png) no-repeat 0 0; width: 29px;} */
/* 	.wmax #aside ul.sns .n .sns_icon_center {background: url(/images/common/sns_icon_center.png) repeat-x 0 0; width: 148px; font-size: 12px; color: #fff; line-height: 27px; padding-left: 10px;} */
/* 	.wmax #aside ul.sns .n .sns_icon_right {background: url(/images/common/sns_icon_right.png) no-repeat 0 0; width: 15px;} */

	/* 모바일 */
	.wmin #aside ul.sns .f .sns_icon_left {background: url(/images/common/sns_icon_f_left_m.gif) no-repeat 0 0; background-size: 31px 29px; width: 31px;}
	.wmin #aside ul.sns .i .sns_icon_left {background: url(/images/common/sns_icon_i_left_m.gif) no-repeat 0 0; background-size: 31px 29px; width: 31px;}
	.wmin #aside ul.sns .p .sns_icon_left {background: url(/images/common/sns_icon_p_left_m.gif) no-repeat 0 0; background-size: 31px 29px; width: 31px;}
	.wmin #aside ul.sns .b .sns_icon_left {background: url(/images/common/sns_icon_b_left.png) no-repeat 0 0;}

	.wmin #aside ul.sns li {margin-bottom: 5px; width: 100%; height: 29px; background: url(/images/common/sns_icon_center_m.gif) repeat-x 0 0; background-size: 100% 29px;}
	.wmin #aside ul.sns .sns_icon_center {width: 80%; font-size: 10px; color: #888; line-height: 29px; padding-left: 10px;}
	.wmin #aside ul.sns .sns_icon_right {background: url(/images/common/sns_icon_right_m.gif) no-repeat 0 0; background-size: 13px 29px; float: right; width: 13px;}
</style>

<div id="aside">
<ul class="s_banner">
		<li>
			<img width="200px" src="/echannel/images/common/channelNum.jpg" />
		</li>
	</ul>
<ul class="sns">
<li class="f"><a href="https://www.facebook.com/ech2000" target="_blank" title="새창으로 이동"><span class="sns_icon_left"></span><span class="sns_icon_center">Facebook</span><span class="sns_icon_right"></span></a></li>
		<li class="i"><a href="https://www.instagram.com/echannel_insta/" target="_blank" title="새창으로 이동"><span class="sns_icon_left"></span><span class="sns_icon_center">Instagram</span><span class="sns_icon_right"></span></a></li>
		<li class="p"><a href="https://m.post.naver.com/my.nhn?memberNo=40508712" target="_blank" title="새창으로 이동"><span class="sns_icon_left"></span><span class="sns_icon_center">Post</span><span class="sns_icon_right"></span></a></li>
		<li class="b"><a href="https://1boon.kakao.com/echannel" target="_blank" title="새창으로 이동"><span class="sns_icon_left"></span><span class="sns_icon_center">1boon</span><span class="sns_icon_right"></span></a></li>
<!-- 		<li class="y"><a href="https://www.youtube.com/c/E채널" target="_blank" title="새창으로 이동"><span class="sns_icon_left"></span><span class="sns_icon_center">Youtube</span><span class="sns_icon_right"></span></a></li> -->
<!-- 		<li class="n"><a href="https://blog.naver.com/echannel_tv" target="_blank" title="새창으로 이동"><span class="sns_icon_left"></span><span class="sns_icon_center">Blog</span><span class="sns_icon_right"></span></a></li> -->
</ul>
	<!-- 광고 배너 -->
    <!-- //광고 배너 -->

	<!-- 이벤트 -->
	<!-- 이벤트 베너 영역 : 시작 -->
	<script type="text/javascript">

	function subBannerCount(bnum, link, starget) {

		var val = "bannernum="+bnum+"&link="+link;
		var siteUrl = "/common/inc/banner_count.jsp";

		$.ajax({
			type:"post",
			url:siteUrl,
			dataType:"html",
			async: false,
			data:val,
			success:function(data){
			    if( starget == "top" ){
			        window.open(link);
			    } else {
			        location.href = link;
			    }
			},
			error:function(){
				alert("실행 중 오류가 발생하였습니다.\n관리자에게 문의하십시오.");
			}
		});
	}
</script>

<!-- 이벤트 베너 영역 : 종료 -->
	<!-- //이벤트 -->
</div>
<!-- //main_aside -->
                </div>
                <!-- //container -->

                <!-- 팝업 영역 : 시작 -->
				








  





<script type="text/javascript">
    function popclose(num){
        var btn = document.getElementById("popup_" + num);
        btn.style.display = "none";

        //쿠키처리
        var box = document.getElementById("check_pop_" + num);
        if(box.checked == true){
            setCookie("pop" + num,"Y",1);
        }
    }

    function setCookie(name, value, expiredays )
    {
        var todayDate = new Date();
        todayDate.setDate( todayDate.getDate() + expiredays );
        document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
    }
</script><!-- 팝업 영역 : 종료 -->
            </div>
            <!-- //main -->

        </div>
    </div>

    <!-- footer_wrap -->
    <style>
	/*20210226 임시 처리*/
	.wmax .swiper-container {height: 370px !important;}

	/*20211104 모바일 footer 작업*/
 	.wmax #footer_wrap {display: block;}
 	.wmax #footer, .wmax #fixed_layer {display: none;}

	.wmin #footer_wrap {display: none;}
 	.wmin #footer, .wmin #fixed_layer {display: block;}
 	.wmin #footer {padding: 35px 0 60px 0;text-align: center;color: #fff;background: #545454;margin-top: 20px;}
 	.wmin #footer ul {padding: 0 10px;}
	.wmin #footer ul li {display: inline-block;margin-right: 11px;padding-right: 13px;background: url(/images/common/bg_line1.gif) no-repeat right top;}
	.wmin #footer ul li:last-child {margin-right: 0;padding-right: 0;background: none;}
	.wmin #footer ul li a {color: #fff;text-decoration: none;font-size: 12px;}
	.wmin #footer ul li.privacy a {color: #fce700;}
	.wmin #footer p.copyright {padding: 15px 0;font-size: 12px;}
	.wmin #footer address {line-height: 150%;font-size: 12px;font-style: unset;}
	.wmin #fixed_layer {position: fixed;right: 0;bottom: 0;z-index: 1000;}
	.wmin #fixed_layer .floating_wrap {position: relative;height: auto;margin: 0 15px 10px;padding: 0;}
	.wmin #fixed_layer .floating_wrap .floating_layer .scrolltop_btn {width: 57px;height: 58px;margin: 2px 0 0;text-indent: -9999px;background: url(/images/common/float_top_btn.png) no-repeat;background-size: 100% 100%;display: block}
</style>
<script language="javascript">
    function newWin(){
        var f = document.familySite;
        open_familySite(f.site);
    }
</script>
<div id="footer_wrap">
	<a href="#a" class="top mobile"><img src="/echannel/images/common/btn_top.gif" alt="위로 가기" /></a>
	<div class="footer">
		<p class="logo">
			<a href='/echannel/index.jsp'>E채널</a>
</p>
		<ul>
			<li><a href="/tcast/summary.jsp" target="WIN_TCAT_MAIN" title="새창">회사소개</a></li>
			<li><a href="/tcast/ad_info.jsp">광고문의</a></li>
			<li><a href="/tcast/reception_comments.jsp" target="WIN_TCAT_MAIN" title="새창">고객센터</a></li>
			<li><a href="/support/provision.jsp" target="WIN_TCAT_MAIN" title="새창">이용약관</a></li>
			<li class="privacy"><a href="/support/privacy.jsp" target="WIN_TCAT_MAIN" title="새창">개인정보취급방침</a></li>
			<li><a href="/support/sitemap.jsp" target="WIN_TCAT_MAIN" title="새창">사이트맵</a></li>
			<li><a href="javascript:open_cuteon_popup('CH_E');" title="새창으로 열림">큐톤안내</a></li>
<!-- 			<li><a href="javascript:alert('점검 중입니다.')">큐톤안내</a></li> -->
			<li><a href="/tcast/ceo_communication.jsp">CEO 정도경영 소통창구</a></li>
			<li class="last"><a href="http://www.taekwanggroup.co.kr/homepage/board/taekwangNewspaperIntro.do" target="_blank">태광신문고</a></li>
		</ul>
		<div class="family_area" style="right: 0px;">
			<form id="familySite" name="familySite">
			<label for="site" class="hidden">패밀리사이트</label>
			<select id="site" name="site" title="패밀리사이트">
                <option value="">Family site</option>
                <option value="TCAST">티캐스트</option>
                <option value="CH_E">E채널</option>
                <option value="CH_S">스크린</option>
                <option value="CH_Q">드라마큐브</option>
                <option value="CH_F">채널나우</option>
                <option value="CH_V">채널 뷰</option>
                <option value="CH_C">씨네프</option>
                <option value="CH_N">패션앤</option>
                <option value="CH_X">MX</option>
                <option value="CH_W">채널에버</option>
                <option value="CH_H">챔프</option>
                <option value="CINECUBE">씨네큐브</option>
            </select>
			<p class="go"><a href="javascript:newWin();"><img src="/cinef/images/common/btn_go.gif" alt="이동" /></a></p>
			</form>
		</div>
		<address>
			<p><span>서울시 종로구 신문로 1가 226 흥국생명BD 8층</span>  <span>대표번호: 070.8145.3200   Fax: 070.8145.3207 </span></p>
		</address>
		<p class="copyright">COPYRIGHT© T.cast ALL RIGHTS RESERVED.</p>
	</div>
</div>

<div id="footer">
	<ul>
		<li><a href="/tcast/summary.jsp">회사소개</a></li>
          	<li><a href="/support/provision.jsp">이용약관</a></li>
          	<li class="privacy"><a href="/support/privacy.jsp">개인정보취급방침</a></li>
          	<li><a href="/tcast/ad_info.jsp">광고문의</a></li>
          	<li><a href="/tcast/reception_comments.jsp">고객센터</a></li>
          	<li><a href="/echannel/ech/cuteon.jsp?chnl_cd=CH_E">큐톤안내</a></li>
<!--           	<li><a href="javascript:alert('점검 중입니다.')">큐톤안내</a></li> -->
		<li><a href="/tcast/ceo_communication.jsp">CEO 정도경영 소통창구</a></li>
	</ul>
	<p class="copyright">COPYRIGHT© t.cast ALL RIGHTS RESERVED.</p>
	<address>
		티캐스트 | 대표 : 권용석<br />
		서울시 종로구 신문로1가 226 흥국생명빌딩 8층<br />
		대표전화 : 070.8145.3200
	</address>
</div>
<!-- footer end -->

<!-- fixed_layer -->
<div id="fixed_layer">
	<div class="floating_wrap">
		<div class="floating_layer">
			<a href="#" class="scrolltop_btn">위로</a>
		</div>
	</div>
</div>
<!-- fixed_layer -->
<script type="text/javascript" src="/common/js/common.link.js"></script>


<!-- AceCounter Log Gathering Script V.72.2013010701 -->
<script type="text/javascript" src="/asset/js/youtube_player.js"></script>
<script language='javascript'>
if(typeof _GUL == 'undefined'){
var _GUL = 'gtp6.acecounter.com';var _GPT='8080'; var _AIMG = new Image(); var _bn=navigator.appName; var _PR = location.protocol=="https:"?"https://"+_GUL:"http://"+_GUL+":"+_GPT;if( _bn.indexOf("Netscape") > -1 || _bn=="Mozilla"){ setTimeout("_AIMG.src = _PR+'/?cookie';",1); } else{ _AIMG.src = _PR+'/?cookie'; };
document.writeln("<scr"+"ipt language='javascript' src='/echannel/asset/js/acecounter/acecounter_V70.js'></scr"+"ipt>");
}
</script>
<noscript><img src='http://gtp6.acecounter.com:8080/?uid=AB3A34812238105&je=n&' border=0 width=0 height=0 alt="" /></noscript>
<!-- AceCounter Log Gathering Script End -->

<!-- Global site tag (gtag.js) - Google Analytics 20190115 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-121053464-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-121053464-1');
</script>
<!-- Global site tag (gtag.js) - Google Analytics End -->
<!-- IE 9+ : jQuery 2 호출 / 로컬 데이터 호출 -->
<!--[if gte IE 9]><!-->
<script type="text/javascript" src="/cinef/asset/js/libs/min/jquery-2.0.0.min.js"></script>
<!--<![endif]-->
<script type="text/javascript" src="/cinef/asset/js/resize.js"></script>
<script type="text/javascript" src="/cinef/asset/js/jquery.bxslider.js"></script>
<script type="text/javascript" src="/cinef/asset/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="/cinef/asset/js/common.js"></script>
<!-- Swiper JS -->
<!-- <script type="text/javascript" src="/cinef/asset/js/swiper.min.js"></script> -->
<script type="text/javascript" src="/asset/js/common_main.js?ver=1654842002234"></script>

<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css"/>
<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<script language="javascript">
	const swiper = new Swiper('.main-showcase', {
			spaceBetween: 30,
			autoplay: {
				delay: 3000,
			},
			loop : true,
			fadeEffect: {
				crossFade: true
			},
			effect: 'fade',
			speed : 1000,
			pagination: {
			el: '.swiper-pagination',
			clickable: true,
		}
	});

	swiper.autoplay.start();

	//공지사항 슬라이드 배너
	$('.notice_box ul').bxSlider({
		mode: 'vertical',
		speed : 500,
		pause : 6000,
		auto: true,
		pager: false,
		controls: false,
		touchEnabled: false
	});

	//채널 메뉴 툴팁 위치 처리
	var leftPx = 0;
	var rightPx = 100;
	$(".contents_box .channel_menu li").each(function(i){
	  if(i < 7){
	    $(this).find('span.tooltip_text').css('left', leftPx);
	    $(this).find('span.tooltip_text').toggleClass('left');
	    leftPx += 100;
	  }else{
	    $(this).find('span.tooltip_text').css('right', rightPx);
	    $(this).find('span.tooltip_text').toggleClass('right');
	    rightPx -= 100;
	  }
	});
</script><!-- //footer_wrap -->
</div>
</body>
</html>

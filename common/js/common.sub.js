/*
 * 2022.03.15 PDK
 * 기존 common.js는 ../채널code/asset/js/common.js 식으로 되어 있어서 채널(+ TCAST) 별로 작업해야 하는 번거로움이 있었음
 * 따라서 전채널(+ TCAST) 공용 JS 목적으로 새로 생성함
 */

/*
 * 모바일 메뉴 탭을 클릭하면 하위 메뉴가 드롭다운 된다
 * 차후 tabOnOff할 대상이 늘어날 경우
 * 1) tabIdArr에 대상의 id 추가 (ex : const tabIdArr = ["program_menu", "channel_gnb", "test"])
 * 2) tabIdx 값은 tabIdArr 순서로 지정 (ex : onclick="tabOnOff(2)" / href="javascript:tabOnOff(2)")
 * */
function tabOnOff(tabIdx) {
	if(document.getElementsByClassName("wmin").length > 0) {	//모바일일 때 동작한다
		const tabIdArr = ["program_menu", "channel_gnb"];
		for(let _id of tabIdArr) {
			document.getElementById(_id).style.display = 'none';
		}
		document.getElementById(tabIdArr[tabIdx]).style.display = 'block';
	}
}


$(function () {

    //Browser Scroll시 메뉴 고정 Script
    $(window).scroll(function () {
        if ($(this).scrollTop() > 5) {
            $('#header').addClass('fixed');
        } else {
            $('#header').removeClass('fixed');
        };
    });

     $(".nav li").click(function () {
        var clickedURL = $('a', this).attr('href');
        var sTarget = $('a', this).attr("target");
        if (clickedURL != "undefined") {
            if(sTarget != "_blank") location.href = clickedURL;
            else window.open(clickedURL, sTarget);
        }
    });

});


function set_comma(n) {
	var reg = /(^[+-]?\d+)(\d{3})/;
	n += '';
	while (reg.test(n))
		n = n.replace(reg, '$1' + ',' + '$2');

	return n;
}

function fnTextStringSearch(pFullText, pSearchText) {

	var sResult = "";
	var iStartNum = 0;
	var iEndNum = 0;

	if (pFullText.toLowerCase().indexOf(pSearchText.toLowerCase()) != -1) {
	
		while (0 < pFullText.length) {
			iStartNum = pFullText.toLowerCase().indexOf(pSearchText.toLowerCase());
			iEndNum = iStartNum + pSearchText.length;
			sResult += pFullText.substring(0, iStartNum) + "\{" + pFullText.substring(iStartNum, iEndNum) + "\}";
			pFullText = pFullText.substring(iEndNum, pFullText.length);
			if (pFullText.toLowerCase().indexOf(pSearchText.toLowerCase()) == -1) {
				sResult += pFullText;
				pFullText = "";
			}
		}

	} else {
		sResult = pFullText;
	}

	return sResult;
}

function fnSleep(milliseconds) {
  var start = new Date().getTime();
  for (var i = 0; i < 1e7; i++) {
    if ((new Date().getTime() - start) > milliseconds){
      break;
    }
  }
}


function fnUnitSplit(pValue) {
    var srtn;

    if (pValue != "") {
        if (pValue >= 0 && pValue < 1000) {
            srtn = (pValue / 1000).toFixed(2);
            srtn = srtn.toString() + "K";
        }
    
        if (pValue >= 1000 && pValue < 1000000000) {
            srtn = (pValue / 1000000).toFixed(2);
            srtn = srtn.toString() + "M";
        }

        if (pValue >= 1000000000) {
            srtn = (pValue / 1000000000).toFixed(2);
            srtn = srtn.toString() + "B";
        }
    } else {
        srtn = "0";
    }
   
    return srtn;
}
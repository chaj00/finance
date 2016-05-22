<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "portfolio.dto.PortfolioDTO" %>
<%@ page import = "java.util.*, java.lang.*, java.util.Date, portfolio.controller.ParamSetting" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>STEP2</title>
<meta name="description" content="description">
<meta name="keywords"
	content="fintech,wealth-management,Global asset allocation,FinTech,Wealth Management">
<!-- <meta name="viewport"
	content="width=device-width, initial-scale=0.3, minimum-scale=0.1, user-scalable=yes, target-densitydpi=device-dpi" /> -->

<link href="/finance/images/favicon.png" rel="icon" type="image/png">
<!-- Favicon -->
<link href="/finance/common/css/bootstrap.min.css" rel="stylesheet"	media="screen" />
<!-- Bootstrap style -->
<link href="/finance/common/css/style.css" rel="stylesheet" media="screen" />

<link href="/finance/common/css/bootstrap.min.css" rel="stylesheet">
<link href="/finance/common/css/font-awesome.min.css" rel="stylesheet">
<link href="/finance/common/css/animate.min.css" rel="stylesheet">
<link href="/finance/common/css/prettyPhoto.css" rel="stylesheet">
<link href="/finance/common/css/main.css" rel="stylesheet">
<link href="/finance/common/css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon`" href="/finance/images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="/finance/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="/finance/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="/finance/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="/finance/images/ico/apple-touch-icon-57-precomposed.png">
<!-- Style css -->

<link rel="stylesheet" href="/finance/common/css/RoboAdvisor.css"
	media="screen" />
<link rel="stylesheet"
	href="/finance/common/js/plugin/sliderbar/ion.rangeSlider.css" />
<link rel="stylesheet"
	href="/finance/common/js/plugin/sliderbar/ion.skin.css" />


<!-- Internet Explorer condition - HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
<!-- Modernizr js -->
<script src="/finance/common/js/modernizr.js" type="text/javascript"></script>
<script src="/finance/common/js/jquery-1.11.2.min.js"
	type="text/javascript"></script>
<script src="/finance/common/js/jquery-migrate-1.2.1.min.js"
	type="text/javascript"></script>
<script src="/finance/common/js/default.js" type="text/javascript"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
                })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-66721842-1', 'auto');
            ga('send', 'pageview');
     </script>

<script src="/finance/common/js/plugin/sliderbar/ion.rangeSlider.js"
	type="text/javascript"></script>
<script src="/finance/common/js/plugin/autonumeric/autoNumeric.js"
	type="text/javascript"></script>
<script src="/finance/common/js/plugin/jquery.cookie.js"
	type="text/javascript"></script>
<script type="text/javascript" src="/finance/common/js/resizewindow.js"></script>
<script type="text/javascript">


<%



/* PortfolioDTO pf_data = new PortfolioDTO();
String st_title = pf_data.getTitle();
String st_classfy = pf_data.getClassify();
String st_opcode = pf_data.getOpcode();
String st_std = pf_data.getStd();
double st_threepoint = 	Double.parseDouble(String.format("%.3f", pf_data.getThreeprofit()));
*/



PortfolioDTO dto = new PortfolioDTO();
ParamSetting ps = new ParamSetting(); 

int list1 = ((ArrayList<PortfolioDTO>)request.getAttribute("list1")).size();
int list2 = ((ArrayList<PortfolioDTO>)request.getAttribute("list2")).size();
int list3 = ((ArrayList<PortfolioDTO>)request.getAttribute("list3")).size();
int list4 = ((ArrayList<PortfolioDTO>)request.getAttribute("list4")).size(); 


String sRiskPoint = request.getParameter("vRiskPoint");
String sPlan = request.getParameter("sPlan");



String ETF_Per = request.getParameter("ETF_Per");
String ETF_GPer = request.getParameter("ETF_GPer");
String ETF_KPer = request.getParameter("ETF_KPer");
//sPlan==1
String iinitInvestPrice = request.getParameter("txt_initInvestPrice");
String iMonthSavePrice = request.getParameter("txt_MonthSavePrice");
String iInvestTerm = request.getParameter("txt_InvestTerm");
String iInvestTermMon = request.getParameter("txt_InvestTermMon");




//sPlan==2
//initInvestPrice
//MonthSavePrice;
//InvestTerm;
//String iinitInvestPrice = request.getParameter("txt_initInvestPrice");
//String iMonthSavePrice = request.getParameter("txt_MonthSavePrice");
//String iInvestTerm = request.getParameter("txt_InvestTerm");
String iTargetPrice = request.getParameter("txt_TargetPrice");

//sPlan==3
//initInvestPrice
//String iinitInvestPrice = request.getParameter("txt_initInvestPrice");
String iNowAge = request.getParameter("txt_NowAge");
String iTargetPriceRetire = request.getParameter("txt_TargetPriceRetire");
String iForecastRetire = request.getParameter("txt_ForecastRetire");
String iLife = request.getParameter("txt_Life");
String iExpectedPrice = "";



ArrayList<PortfolioDTO> result_list = (ArrayList<PortfolioDTO>) request.getAttribute("List_Result");
int size = result_list.size();


%>


 sPlan = "<%=sPlan%>";
 sRiskPoint = "<%=sRiskPoint%>";
 vInvestTermMon = "<%=iInvestTermMon%>";
 ETF_Per = "<%=ETF_Per%>";


$(window).load(function () {


         $("#RiskPoint").html(sRiskPoint);
         $("#txt_initInvestPrice").val("<%= iinitInvestPrice %>");
         $("#txt_ForecastRetire").val("<%= iForecastRetire%>");
         $("#txt_Life").val("<%= iLife%>");
         $("#txt_NowAge").val("<%=iNowAge%>");
         $("#txt_TargetPriceRetire").val("<%= iTargetPriceRetire %>");
         $("#txt_initInvestPrice").val("<%= iinitInvestPrice%>");
         $("#txt_MonthSavePrice").val("<%= iMonthSavePrice%>");
         $("#txt_InvestTerm").val("<%= iInvestTerm%>");
         $("#txt_InvestTermMon").val("<%= iInvestTermMon%>");
         $("#txt_TargetPrice").val("<%= iTargetPrice%>");
    
 
<%
		if(sPlan.equals("1")){
%>	
		$(".middle_div1").css("display", "none");
		$(".middle_div2").css("display", "none");
		$(".middle_div3").css("display", "none");
		//$("#TopHead1_Title").text("기대 금액");
		$("#targetplan5").removeClass("disp_none");
		$(".resultmiddlebox").css("display", "none");
		
<%
		int val1 = 0;
		int val2 = 0;
		int val3 = 0;
		int val4 = 0;
			 if(iInvestTermMon == ""){
				val1 = Integer.parseInt(ps.removeChar(iinitInvestPrice));
				val2 = Integer.parseInt(ps.removeChar(iMonthSavePrice));
				val3 = Integer.parseInt(ps.removeChar(iInvestTerm));

		 	}else{
				val1 = Integer.parseInt(ps.removeChar(iinitInvestPrice));
				val2 = Integer.parseInt(ps.removeChar(iMonthSavePrice));
				val3 = Integer.parseInt(ps.removeChar(iInvestTerm));
				val4 = Integer.parseInt(ps.removeChar(iInvestTermMon));
				} 
		int ep = val1 + val2*((val3*12)+val4);
		iExpectedPrice = String.valueOf(ep);
		

		}else if(sPlan.equals("2")){
%>
		$(".resultmiddlebox").removeClass("disp_none").addClass("disp_block");
		$("#middle_plan3").css("display", "none");
		$("#targetplan5").removeClass("disp_none");
		$("#targetplan6").removeClass("disp_none");
<%
			int val1 = 0;
			int val2 = 0;
			int val3 = 0;
			int val4 = 0;
			int val5 = 0;
			
			 if(iInvestTermMon == ""){
				val1 = Integer.parseInt(ps.removeChar(iinitInvestPrice));
				val2 = Integer.parseInt(ps.removeChar(iMonthSavePrice));
				val3 = Integer.parseInt(ps.removeChar(iInvestTerm));
//				val5 = Integer.parseInt(ps.removeChar(iTargetPrice));
				
		 	}else{
		 		val1 = Integer.parseInt(ps.removeChar(iinitInvestPrice));
				val2 = Integer.parseInt(ps.removeChar(iMonthSavePrice));
				val3 = Integer.parseInt(ps.removeChar(iInvestTerm));
				val4 = Integer.parseInt(ps.removeChar(iInvestTermMon));
//				val5 = Integer.parseInt(ps.removeChar(iTargetPrice));
		 		
			 	}
			int ep = val1 + val2*((val3*12) + val4);
			iExpectedPrice = String.valueOf(ep);
%>


<%
		}else if(sPlan.equals("3")){
%>
		$(".resultmiddlebox").removeClass("disp_none").addClass("disp_block");
		$("#middle_text1").text("은퇴 시점");
		$("#middle_plan2").css("display", "none");
		$("#targetplan1").removeClass("disp_none");
		$("#targetplan2").removeClass("disp_none");
		$("#targetplan3").removeClass("disp_none");
		$("#targetplan4").removeClass("disp_none");

<%		
 			if(iinitInvestPrice != ""){
				
			int val1 = 0;
			int val2 = 0;
			int val3 = 0;
			int val4 = 0;
			int val5 = 0;
			 
/*  			val1 = Integer.parseInt(ps.removeChar(iinitInvestPrice));
				val2 = Integer.parseInt(ps.removeChar(iNowAge));  */
				val3 = Integer.parseInt(ps.removeChar(iTargetPriceRetire));
				val4 = Integer.parseInt(ps.removeChar(iForecastRetire));
				val5 = Integer.parseInt(ps.removeChar(iLife));
			 
			int ep = ((val5 - val4) * 12) * val3;
				iExpectedPrice = String.valueOf(ep);
			}


		}
%>

     
     
            $("#Riskbar_img").attr("src", "/finance/images/roboadvisor/img_bar_" + <%= sRiskPoint %> + ".png");
            $("#btnResearch").click();
        });


        $(document).ready(function () {
            
          	var idate = new Date();
    		var std_year = idate.getFullYear();
    		var std_mon = idate.getMonth();
<%--     	var vTargetPrice = Integer.parseInt(ps.removeChar("<%=iTargetPrice%>"));
    		var vExpectedPrice = Integer.parseInt(ps.removeChar("<%=iExpectedPrice%>"));
  --%>   		
  
  
    		
            $("#TopHead1_Value").text("<%= ps.removeChar(iTargetPrice)%>"); //iTargetPrice
            $("#TopHead2_Value").text("<%= iExpectedPrice %>"); //iExpectedPrice
            $("#middle_date1").html(idate.getFullYear()+<%=Integer.parseInt(ps.removeChar(iInvestTerm))%>);
			$("#middle_date2").html(idate.getMonth());
			$("#AssetClassP1").text(<%=list1%>*10+"%");
			$("#AssetClassP2").text(<%=list2%>*10+"%");	
			$("#AssetClassP3").text(<%=list3%>*10+"%");	
			$("#AssetClassP4").text(<%=list4%>*10+"%");	
			
  
            //목표달성 
            if($("#TopHead1_Value").val() > $("#TopHead2_Value").val() ){
                $("#middle_ud").text("높음.");
                $("#middle_ud").css("color", "#62b5e0");
                $(".resultmiddlebox").css("display", "block");
                $(".resultmiddlebox").removeClass("resultmiddlebox_min").removeClass("resultmiddlebox_max");
                $(".resultmiddlebox").addClass("resultmiddlebox_min");
                $(".middle_itembox1").removeClass("disp_none").removeClass("disp_block");
                $("#middle_item").css("display", "none");
                $("#middle_appcomment").text("");
                
                                
            
            }else{
                $("#middle_ud").text("낮음.");
                $("#middle_ud").css("color", "#cb1010");
                $(".resultmiddlebox").css("display", "block");
                $(".resultmiddlebox").removeClass("resultmiddlebox_min").removeClass("resultmiddlebox_max");
                $(".resultmiddlebox").addClass("resultmiddlebox_max");
                $("#middle_item").css("display", "block");
                $("#middle_value1").val(<%=Integer.parseInt(ps.removeChar(iTargetPrice))%>-<%=iExpectedPrice%>);//x
                
                
            }//index
           
            
              
 		


			if(ETF_Per == 1){
				$("#TopHead3_Value").html(Math.round("<%=Integer.parseInt(ps.removeChar(ETF_GPer))*0.1%>"*100)/100);
			    $("#TopHead3_Title").text("국내");
				}
			else{
				$("#TopHead3_Value").html(Math.round("<%=Integer.parseInt(ps.removeChar(ETF_KPer))*0.1%>"*100)/100);
			    $("#TopHead3_Title").text("해외");
				
			}
    
/*             $("#btnResearch").click(function (){
            	
                if (fn_InputCheck()) return;

                 function resultdata(data) {

                    //$('#loadingview').css("display", "none");
/* 	                var json_obj = JSON.parse(data.d);
                    var splandata = json_obj[0].PlanData;
                    var sAssetdata = json_obj[0].AssetClassData;
                    var sPortpoliodata = json_obj[0].PortpolioData;
                    var dbPortpolioMax = eval(json_obj[0].PortpolioMaxVal);
                    var sColordata = json_obj[0].OutColor;

                    var sUpdateAssetClass = json_obj[0].UpdateAssetClass;
                    var sUpdatePortpolio = json_obj[0].UpdatePortpolio;
                    var sExpectedUpDown = json_obj[0].ExpectedUpDown;
*/
                    //Data View
/*                  $("#CAupdate").text(json_obj[0].UpdateAssetClass + " 기준");
                    $("#Portupdate").text(json_obj[0].UpdatePortpolio + " 기준");
                    var sDispRst1 = json_obj[0].TargetPrice;
                    var sDispRst2 = json_obj[0].RequiedRtn;*/
                    
/*                     if ($("#txt_Plantype").val() == "1") {
                        sDispRst1 = json_obj[0].ExpectedPrice;
                        sDispRst2 = "-";
                    } */

/*                  $("#TopHead3_Value").text(json_obj[0].RiskPointG);//
                    $("#middle_date1").text(sTargetDate.split(".")[0]);//목표년도
                    $("#middle_date2").text(eval(sTargetDate.split(".")[1]));//목표월 */
					
                    

                    
                    
                    
/*                     var sTargetDate = splandata.split("|")[splandata.split("|").length - 1].split(",")[0];
                    $("#middle_date1").text(sTargetDate.split(".")[0]);//목표년도
                    
                    $("#middle_value1").text(json_obj[0].InitAppendPrice);	//초기투자
                    $("#middle_value2").text(json_obj[0].MonthlyAppendPrice);//월투자
                    $("#middle_value3").text(json_obj[0].InvestTermY);	//투자년
                    $("#middle_value4").text(json_obj[0].InvestTermM);	//투자월
                    $("#middle_value5").text(json_obj[0].RetireAge);	//은퇴나이 

                    if ($("#txt_Plantype").val() != "1") {
                        $("#middle_ud").removeClass("TargetRate_down").removeClass("TargetRate_up");
                    
                        switch (sExpectedUpDown) {	//
                            case "-":
                                $(".resultmiddlebox").css("display", "none");
                                break;
                            case "U":	//목표 달성 확률 낮음
                                $("#middle_ud").text("높음.");
                                $("#middle_ud").css("color", "#62b5e0");
                                $(".resultmiddlebox").css("display", "block");
                                $(".resultmiddlebox").removeClass("resultmiddlebox_min").removeClass("resultmiddlebox_max");
                                $(".resultmiddlebox").addClass("resultmiddlebox_min");
                                $(".middle_itembox1").removeClass("disp_none").removeClass("disp_block");
                                $("#middle_item").css("display", "none");
                                $("#middle_appcomment").text("");
                                break;
                            case "D":	//목표 달성 확률 낮음
                                $("#middle_ud").text("낮음.");
                                $("#middle_ud").css("color", "#cb1010");
                                $(".resultmiddlebox").css("display", "block");
                                $(".resultmiddlebox").removeClass("resultmiddlebox_min").removeClass("resultmiddlebox_max");
                                $(".resultmiddlebox").addClass("resultmiddlebox_max");
                                $("#middle_item").css("display", "block");
                                $("#middle_appcomment").text("목표달성을 위해 다음조건을 검토하세요.");
                                break;
                        }
                    } 
 
                    //Google Chart View
                    GChart_Display(splandata, sAssetdata, sPortpoliodata, sColordata, dbPortpolioMax, sDispRst1);
                }

            }); */
            
            
            //middle_value1

            $("#middle_add1, #middle_add2, #middle_add3").click(function () {
                var sID = $(this).attr("id");
                var iVal = 0;

                if (sID == "middle_add1") {
                    if ($("#txt_initInvestPrice").val() != "") iVal = eval($("#txt_initInvestPrice").autoNumeric('get'));
                    iVal += eval($("#middle_value1").text().replace(/,/g, ""));
                    $("#txt_initInvestPrice").autoNumeric('set', iVal);
                }

                if (sID == "middle_add2") {
                    iVal = 0;
                    if ($("#txt_MonthSavePrice").val() != "") iVal = eval($("#txt_MonthSavePrice").autoNumeric('get'));
                    iVal += eval($("#middle_value2").text().replace(/,/g, ""));
                    $("#txt_MonthSavePrice").autoNumeric("set", iVal);
                }

                if (sID == "middle_add3") {
                    if ($("#txt_Plantype").val() == "2") {
                        var iTmpYear = 0;
                        var iTmpMonth = 0;
                        if ($("#txt_InvestTerm").autoNumeric("get") != "") iTmpYear = eval($("#txt_InvestTerm").autoNumeric("get")) * 12;
                        if ($("#txt_InvestTermMon").autoNumeric("get") != "") iTmpMonth = eval($("#txt_InvestTermMon").autoNumeric("get"));
                        iVal = iTmpYear + iTmpMonth;

                        iTmpYear = 0;
                        iTmpMonth = 0;
                        if ($("#middle_value3").text() != "") iTmpYear = eval($("#middle_value3").text()) * 12;
                        if ($("#middle_value4").text() != "") iTmpMonth = eval($("#middle_value4").text());
                        iVal += iTmpYear + iTmpMonth;
                        $("#txt_InvestTerm").autoNumeric("set", parseInt(iVal / 12));
                        $("#txt_InvestTermMon").autoNumeric("set", iVal % 12);
                    }

                    if ($("#txt_Plantype").val() == "3") {
                        iVal = eval($("#middle_value5").text());
                        $("#txt_ForecastRetire").autoNumeric("set", iVal);
                    }
                }

                $("#btnResearch").click();
            });

            
            
            /* $("#tab_result01, #tab_result02").click(function () {
                var sTabID = $(this).attr("id");
                $("#tab_result01, #tab_result02").removeClass("bottom_div1_select");
                $("#" + sTabID).addClass("bottom_div1_select");
                $("#chartA, #chartB").removeClass("disp_block").removeClass("disp_none");
                if (sTabID == "tab_result01") {
                    $("#chartA, .chart_plan_m").css("display", "block");

                    $("#chartB").css("margin-top", "-12000px");
                }
                if (sTabID == "tab_result02") {
                    $("#chartA, .chart_plan_m").css("display", "none");
                    $("#chartB").css("margin-top", "40px");
                }
            }); 
 */
            $("#btn_close, #btn_Portpolio").click(function () {
                var sTabID = $(this).attr("id");

                if (sTabID == "btn_close") {
                    $("#portpolio_detail").css("display", "none");
                    $("#portpolio_detail").fadeOut(1000);
                    $("#chartB").css("margin-top", "40px");
                }

                if (sTabID == "btn_Portpolio") {
                    $("#portpolio_detail").css("display", "block");
                    $("#portpolio_detail").fadeIn(1000);
                    $("#chartB").css("margin-top", "-12000px");
                }
            });

            $(".numeric_up, .numeric_down").click(function () {
                var sid = $(this).attr("class");
                var sud = sid.split("_")[1];
                var stxtID = $(this).parent()[0].childNodes[3].id;
                if (stxtID == "txt_InvestTerm") stxtID = $(this).parent()[0].childNodes[5].id;

                var iVal = 0;
                var sVal = $("#" + stxtID).val().replace(/세/g, "").replace(/,/g, "").replace(/만원/g, "").replace(/년/g, "").replace(/개월/g, "");
                if (sVal != "") iVal = eval(sVal);

                if (stxtID != "txt_InvestTermMon") {
                    $("#" + $(this).parent()[0].childNodes[8].id).text("");
                    if (sud == "up") $("#" + stxtID).autoNumeric('set', iVal + 1);
                    if (sud == "down" && (iVal - 1) >= 0) $("#" + stxtID).autoNumeric('set', iVal - 1);

                } else {
                    $("#" + $(this).parent()[0].childNodes[10].id).text("");
                    var sYearID = $(this).parent()[0].childNodes[3].id;
                    var sYearVal = $("#" + sYearID).val().replace("년", "");
                    var iYearVal = 0;
                    if (sYearVal != "") iYearVal = eval(sYearVal);
                    if (sud == "up") {
                        if ((iVal + 1) == 12) {
                            $("#" + sYearID).autoNumeric('set', iYearVal + 1);
                            $("#" + stxtID).autoNumeric('set', 0);
                        } else {
                            $("#" + stxtID).autoNumeric('set', iVal + 1);
                        }
                    }

                    if (sud == "down") {
                        if (iVal == 0) {
                            if (iYearVal > 0) {
                                $("#" + sYearID).autoNumeric('set', iYearVal - 1);
                                $("#" + stxtID).autoNumeric('set', 11);
                            }
                        } else {
                            $("#" + stxtID).autoNumeric('set', iVal - 1);
                        }
                    }
                }

            });

        });


        function fnETFView(pthis) {
            if ($("#txt_Region").val() == "G") {
                $("#txt_Ticker").val(pthis.id);
                $('#form_plan').attr({ action: '/ko/GlobalETF/etfgb.aspx', method: 'post' }).submit();
            }
        }


        function fn_InputCheck() {

            //Error Clear
            $("#txt_initInvestPrice_err ,#txt_MonthSavePrice_err ,#txt_InvestTerm_err ,#txt_TargetPrice_err ,#txt_NowAge_err ,#txt_ForecastRetire_err, #txt_Life_err ,#txt_TargetPriceRetire_err, #txt_Validation_err").text("");

            //Err Check
            var iNowAge = eval($("#txt_NowAge").autoNumeric('get'));
            var iForecastRetire = eval($("#txt_ForecastRetire").autoNumeric('get'));
            var iLife = eval($("#txt_Life").autoNumeric('get'));
            var iTargetPriceRetire = eval($("#txt_TargetPriceRetire").autoNumeric('get'));
            var iinitInvestPrice = eval($("#txt_initInvestPrice").autoNumeric('get'));
            var iMonthSavePrice = eval($("#txt_MonthSavePrice").autoNumeric('get'));
            var iInvestTerm = eval($("#txt_InvestTerm").autoNumeric('get'));
            var iInvestTermMon = eval($("#txt_InvestTermMon").autoNumeric('get'));
            var iTargetPrice = eval($("#txt_TargetPrice").autoNumeric('get'));
            var bErr = false;
            var sPlan = $("#txt_Plantype").val();
            if (typeof (iNowAge) == "undefined") iNowAge = 0;
            if (typeof (iForecastRetire) == "undefined") iForecastRetire = 0;
            if (typeof (iLife) == "undefined") iLife = 0;
            if (typeof (iTargetPriceRetire) == "undefined") iTargetPriceRetire = 0;
            if (typeof (iinitInvestPrice) == "undefined") iinitInvestPrice = 0;
            if (typeof (iMonthSavePrice) == "undefined") iMonthSavePrice = 0;
            if (typeof (iInvestTerm) == "undefined") iInvestTerm = 0;
            if (typeof (iInvestTermMon) == "undefined") iInvestTermMon = 0;
            if (typeof (iTargetPrice) == "undefined") iTargetPrice = 0;

            if (iinitInvestPrice < 100) {
                $("#txt_initInvestPrice_err").text("100만원 이상 작성바랍니다.");
                bErr = true;
            }

            if (iMonthSavePrice < 0) {
                $("#txt_MonthSavePrice_err").text("0원 이상 작성바랍니다.");
                bErr = true;
            }

            if (sPlan == "1" || sPlan == "2") {
                if (iInvestTerm < 2 || iInvestTerm > 100) {
                    $("#txt_InvestTerm_err").text("2년 이상 100년 이하로 작성바랍니다.");
                    bErr = true;
                }

                if (iInvestTermMon > 11) {
                    $("#txt_InvestTerm_err").text("11개월 이하로 작성바랍니다.");
                    bErr = true;
                }

                if (((eval(iInvestTerm) * 12) + eval(iInvestTermMon)) > 1200) {
                    $("#txt_InvestTerm_err").text("100년 이하로 작성바랍니다.");
                    bErr = true;
                }
            }

            if (sPlan == "2") {
                var iSumTargetPrice = iinitInvestPrice + (iMonthSavePrice * ((iInvestTerm * 12) + iInvestTermMon));
                if ((iSumTargetPrice > iTargetPrice) || iTargetPrice == 0) {
                    $("#txt_TargetPrice_err").text(set_comma(iSumTargetPrice) + "만원 이상 작성바랍니다.");
                    bErr = true;
                }

                if (bErr == false && iTargetPrice < 100) {
                    $("#txt_TargetPrice_err").text("100만원 이상 작성바랍니다.");
                    bErr = true;
                }
            }

            if (sPlan == "3") {
                var bParentChk = false;

                if (iNowAge < 19 || iNowAge > 80) {
                    $("#txt_NowAge_err").text("19세 이상 80세 이하로 작성바랍니다.");
                    bErr = true;
                }

                if (iForecastRetire < 45 || iForecastRetire > 81) {
                    $("#txt_ForecastRetire_err").text("45세 이상 81세 이하로 작성바랍니다.");
                    bErr = true;
                    bParentChk = true;
                }

                if (bParentChk == false && iForecastRetire <= iNowAge) {
                    $("#txt_ForecastRetire_err").text("은퇴나이는 현재나이 보다 커야합니다.");
                    bErr = true;
                }

                bParentChk = false;
                if (iLife < 65 || iLife > 120) {
                    $("#txt_Life_err").text("65세 이상 120세 이하로 작성바랍니다.");
                    bErr = true;
                    bParentChk = true;
                }

                if (bParentChk == false && iLife <= iForecastRetire) {
                    $("#txt_Life_err").text("기대수명은 은퇴나이 보다 커야합니다.");
                    bErr = true;
                }

                if (iTargetPriceRetire < 30) {
                    $("#txt_TargetPriceRetire_err").text("30만원 이상 작성바랍니다.");
                    bErr = true;
                }
                var inewTargetPrice = (iLife - iForecastRetire) * 12 * iTargetPriceRetire;

                if (inewTargetPrice < iinitInvestPrice + ((iMonthSavePrice * 12) * (iForecastRetire - iNowAge))) {
                    $("#txt_Validation_err").html("은퇴 후 목표 월 소득을 샹향 조정하거나 초기 투자<Br>금액 또는월별 추가 투자금액을 하향 조정하세요.");
                    bErr = true;
                }
            }

            return bErr;
        }

        

        //Google 사용선언
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
		  ['추천상품', '10'],
		  ['주식형', <%=list1%>],
          ['파생상품', <%=list2%>],
          ['채권형', <%=list3%>],
          ['기타', <%=list4%>],
        ]);
        
        

        var options = {
        		
          pieHole: 0.3,
          slices: { 0: { color: '#2D7DA4' }, 1: { color: '#6AA42F' }, 2: { color: '#FFBD20' }, 3: { color: '#DB3615' }},
          'legend': { position: 'none' },
          width: 290,
          height: 290,
          pieSliceText: 'percentage',
          fontSize: 16,
          backgroundColor: "#ffffff",
          'is3D': false,
          enableInteractivity: true,
          tooltip: { isHtml: true },
	
          chartArea: {
              left: 20,
              top: 15,
              height: 400,
              width: 400
          }	
        };

        var chart = new google.visualization.PieChart(document.getElementById('chart_div_AssetClass'));
        chart.draw(data, options);
      }
      


        function sleep(delay) {
            var start = new Date().getTime();
            while (new Date().getTime() < start + delay);
        }
    </script>


</head>
<header id="header">

         <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><img src="/finance/images/logo.png" alt="logo"></a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="#"> Home</a></li>          
                        <li><a href="/finance/analysis/analysis_main.html">투자분석</a></li>
                        <li><a href="/finance/product/product_main.html">금융상품</a></li>
                        <li class ="active"><a href="/finance/portfolio/portfolio_survey.jsp">포트폴리오</a></li>
                     	
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
 
</header>
<!--/header-->

<!-- <body oncontextmenu="return false" ondragstart="return false" onselectstart="return false"> "
 
<!--Body-->
<section>

	<!-- Loadng View -->
<!-- 	<div class="loadingView" id="loadingview">
		<img src="/finance/common/images/img_loading.gif" alt="" />
	 </div>  -->

	<!-- 설문 Tab -->
	<div class="tab_box1">
		<div class="container box01">
			<table class="tab_table">
				<tr>
					<td class="tab_default" id="tab01"><span>01</span>
						<div onclick="GChart_Plan_Run1()">위험성향 측정</div></td>
					<td class="tab_bar_bg"><div class="tab_bar_on"></div></td>
					<td class="tab_default tab_center" id="tab02"><span>02</span>
						<div>투자목적 선택</div></td>
					<td class="tab_bar_bg"><div class="tab_bar_off"></div></td>
					<td class="tab_default tab_select" id="tab_bar_on"><span>03</span>
						<div>포트폴리오 설계</div></td>
				</tr>
			</table>
		</div>
	</div>

	<div class="result_box">
		<div class="container box01">
			<div class="spacer45"></div>


			<table class="resultmain_table">
				<tr>
				

				
					<!-- left -->
					<td class="resultmain_td1">
						<div class="riskpoint">
							위험성향 점수
							<div class="pointnum" id="RiskPoint">0</div>
							<img src="/finance/images/roboadvisor/img_bar_1.png" alt=""
								id="Riskbar_img" />
						</div>
						<div class="targetplan_box">


							<form id="form_plan" method="post" action="#">
								<input type="text" id="txt_Ticker" name="txt_Ticker" value=""
									class="disp_none" /> <input type="text" id="txt_Riskpoint"
									name="txt_Riskpoint" value="0" class="disp_none" /> <input
									type="text" id="txt_Region" name="txt_Region" value="K"
									class="disp_none" /> <input type="text" id="txt_Plantype"
									name="txt_Plantype" value="2" class="disp_none" />
								<div id="targetplan1" class="disp_none">
									현재 나이<br /> <input type="text" id="txt_NowAge"
										name="txt_NowAge" value="0" maxlength="3"
										placeholder="19세 이상 나이 입력" data-a-sign="세" data-p-sign="s"
										data-m-dec="0" /> <img
										src="/finance/images/roboadvisor/btn_up.png" alt=""
										class="numeric_up" /><img
										src="/finance/images/roboadvisor/btn_down.png" alt=""
										class="numeric_down" />
									<div class="err_desctiption" id="txt_NowAge_err"></div>
									<div class="spacer5"></div>
								</div>
								<div id="targetplan2" class="disp_none">
									은퇴 나이<br /> <input type="text" id="txt_ForecastRetire"
										name="txt_ForecastRetire" value= "0" maxlength="3"
										placeholder="45세 이상 나이 입력" data-a-sign="세" data-p-sign="s"
										data-m-dec="0" /> <img
										src="/finance/images/roboadvisor/btn_up.png" alt=""
										class="numeric_up" /><img
										src="/finance/images/roboadvisor/btn_down.png" alt=""
										class="numeric_down" />
									<div class="err_desctiption" id="txt_ForecastRetire_err"></div>
									<div class="spacer5"></div>
								</div>
								<div id="targetplan3" class="disp_none">
									기대 수명<br /> <input type="text" id="txt_Life" name="txt_Life"
										maxlength="3" value="0" placeholder="65세 이상 나이 입력"
										data-a-sign="세" data-p-sign="s" data-m-dec= "0" /> <img
										src="/finance/images/roboadvisor/btn_up.png" alt=""
										class="numeric_up" /><img
										src="/finance/images/roboadvisor/btn_down.png" alt=""
										class="numeric_down" />
									<div class="err_desctiption" id="txt_Life_err"></div>
									<div class="spacer5"></div>
								</div>
								<div id="targetplan4" class="disp_none">
									은퇴 후 목표 월 소득<br /> <input type="text"
										id="txt_TargetPriceRetire" name="txt_TargetPriceRetire"
										value="0" placeholder="30만원 이상 금액 입력" data-a-sign="만원"
										data-p-sign="s" data-m-dec="0" /> <img
										src="/finance/images/roboadvisor/btn_up.png" alt=""
										class="numeric_up" /><img
										src="/finance/images/roboadvisor/btn_down.png" alt=""
										class="numeric_down" />
									<div class="err_desctiption" id="txt_TargetPriceRetire_err"></div>
									<div class="spacer5"></div>
								</div>
								<div>
									초기 투자금액<br /> <input type="text" id="txt_initInvestPrice"
										name="txt_initInvestPrice" value= "0"
										placeholder="100만원 이상 금액 입력" data-a-sign="만원" data-p-sign="s"
										data-m-dec="0" /> <img
										src="/finance/images/roboadvisor/btn_up.png" alt=""
										class="numeric_up" /><img
										src="/finance/images/roboadvisor/btn_down.png" alt=""
										class="numeric_down" />
									<div class="err_desctiption" id="txt_initInvestPrice_err"></div>
									<div class="spacer5"></div>
								</div>
								<div>
									월별 추가 투자금액<br /> <input type="text" id="txt_MonthSavePrice" 
										name="txt_MonthSavePrice" value="0" 
										placeholder="0원 이상 금액 입력" data-a-sign="만원" data-p-sign="s"
										data-m-dec="0" /> <img
										src="/finance/images/roboadvisor/btn_up.png" alt=""
										class="numeric_up" /><img
										src="/finance/images/roboadvisor/btn_down.png" alt=""
										class="numeric_down" />
									<div class="err_desctiption" id="txt_MonthSavePrice_err"></div>
									<div class="spacer5"></div>
								</div>
								<div id="targetplan5" class="disp_none">
									투자 기간<br /> <input type="text" id="txt_InvestTerm"
										name="txt_InvestTerm" class="txtYear" value="0"
										placeholder="2년 이상 입력" data-a-sign="년" data-p-sign="s"
										data-m-dec="0" /> <input type="text" id="txt_InvestTermMon"
										name="txt_InvestTermMon" class="txtMonth" value="0"
										placeholder="개월 입력" data-a-sign="개월" data-p-sign="s"
										data-m-dec="0" /> <img
										src="/finance/images/roboadvisor/btn_up.png" alt=""
										class="numeric_up" /><img
										src="/finance/images/roboadvisor/btn_down.png" alt=""
										class="numeric_down" />
									<div class="err_desctiption" id="txt_InvestTerm_err"></div>
									<div class="spacer5"></div>
								</div>
								<div id="targetplan6" class="disp_none">
									목표 금액<br /> <input type="text" id="txt_TargetPrice"
										name="txt_TargetPrice" value="0"
										placeholder="100만원 이상 금액 입력" data-a-sign="만원" data-p-sign="s"
										data-m-dec="0" /> <img
										src="/finance/images/roboadvisor/btn_up.png" alt=""
										class="numeric_up" /><img
										src="/finance/images/roboadvisor/btn_down.png" alt=""
										class="numeric_down" />
									<div class="err_desctiption" id="txt_TargetPrice_err"></div>
									<div class="spacer5"></div>
								</div>
							</form>
							<div class="btn_common_on btn_research" id="btnResearch"><a href="portfolio/portfolio_survey.jsp">
								재조회 </a><img src="/finance/images/roboadvisor/btn_re.png" alt=""
									class="img_research" />
							</div>
							<div class="err_desctiption" id="txt_Validation_err"></div>
						</div>
					</td>

					<!--right-->
					
					
					
					<td class="resultmain_td2">
						<!--<div class="resultView1">--> <!-- Detail Result -->
						<div class="resultTop1_A Head1">
							<div class="Head_Title1" id="TopHead1_Title">목표 금액</div>
							<!--표 금액/기대 금액-->
							<div class="Head_Value1" id="TopHead1_Value">-</div>
							<div class="Head_Value1unit">만원</div><!-- 백만원 -->
						</div>
						<div class="resultTop1_A Head2">
							<div class="Head_Title1">기대 금액</div>
							<div class="Head_Value2" id="TopHead2_Value">만원</div>
							<div class="Head_Value2unit">만원</div>
						</div>
						<div class="resultTop1_A Head3">
							<div class="Head_Title2">
								<span id="TopHead3_Title"></span><br />투자 기대 수익률
							</div>
							<div class="Head_Value3" id="TopHead3_Value">-</div>
							<div class="Head_Value3unit">%</div>
						</div>

						<div class="resultmiddlebox disp_none">
							<span class="middle_date" id="middle_date1">0000</span><span>년</span>
							<span class="middle_date" id="middle_date2">0</span><span>월</span>에
							목표가 달성될 확률이 <span class="middle_updown" id="middle_ud">낮음.</span>
							<span class="span_commnet" id="middle_appcomment"></span><br />
<!--  -->
							<!-- <div id="middle_item">
								<div class="middle_itembox1" id="middle_add1">
									초기 투자금액<br />
									<div class="middle_value1" id="middle_value1">-</div>
									<div class="middle_value1">만원 추가</div>
								</div>
								<div class="middle_itembox1" id="middle_add2">
									월별 추가 투자금액<br />
									<div class="middle_value1" id="middle_value2"></div>
									<div class="middle_value1">만원 증액</div>
								</div>
								<div class="middle_itembox1" id="middle_add3">
									<div id="middle_text1">투자 기간</div>
									<div id="middle_plan2">
										<div class="middle_value1" id="middle_value3">0</div>
										<div class="middle_value1">년</div>
										&nbsp;
										<div class="middle_value1" id="middle_value4">0</div>
										<div class="middle_value1">개월 연장</div>
									</div>
									<div id="middle_plan3">
										<div class="middle_value1" id="middle_value5">0</div>
										<div class="middle_value1">세</div>
									</div>
								</div>
							</div> -->
						</div> <!--</div>-->

						<div class="bottom_div1 bottom_div1_focus bottom_div1_select"
							id="tab_result01" style="display:none">예상 수익</div>
							
							
						<div class="bottom_div1 bottom_div1_focus bottom_div1_select" id="tab_result02">포트폴리오</div>
						<div class="bottom_div2"></div>
						<div class="bottom_div3_A" id="chartA" style="display:none">
							<div class="chart_plan_m">
								<div class="chart_plan_unit">만원</div>
								<div class="chart_plan_fdt" id="chart_fdt"></div>
								<div class="chart_plan_mdt1" id="chart_mdt1"></div>
								<div class="chart_plan_mdt2" id="chart_mdt2"></div>
								<div class="chart_plan_mdt3" id="chart_mdt3"></div>
								<div class="chart_plan_ldt" id="chart_ldt"></div>
							</div>

							<div class="chart_plan" id="chart_div_plan"></div>
						</div>
						
						<div class="bottom_div3_B" id="chartB" style="margin-top:40px">	<!-- chart B 포트폴리오 -->
							<!-- 구글 차트  -->
							
							<div id="chart_div_AssetClass" class="chart_asset"></div>
							<div class="chart_asset_detail">
								<table>
									<tr>
										<td><div id="ACGroup1">
												<img src="/finance/images/roboadvisor/img_color_dot1.png"
													alt="" />
												<div id="AssetClass1" class="AC_div1">주식형</div>
												<div id="AssetClassP1" class="AC_div2"><div id ="_AssetClassP1">%</div></div>
											</div></td>
									</tr>
									<tr>
										<td><div id="ACGroup2">
												<img src="/finance/images/roboadvisor/img_color_dot2.png"
													alt="" />
												<div id="AssetClass2" class="AC_div1">파생상품형</div>
												<div id="AssetClassP2" class="AC_div2"><div id ="_AssetClassP2">%</div></div>
											</div></td>
									</tr>
									<tr>
										<td><div id="ACGroup3">
												<img src="/finance/images/roboadvisor/img_color_dot3.png"
													alt="" />
												<div id="AssetClass3" class="AC_div1">채권형</div>
												<div id="AssetClassP3" class="AC_div2"><div id ="_AssetClassP3">%</div></div>
											</div></td>
									</tr>
									<tr>
										<td><div id="ACGroup4">
												<img src="/finance/images/roboadvisor/img_color_dot4.png"
													alt="" />
												<div id="AssetClass4" class="AC_div1">기타</div>
												<div id="AssetClassP4" class="AC_div2"><div id ="_AssetClassP4">%</div></div>
											</div></td>
									</tr>
								</table>
								<div class="spacer40"></div>
								<div class="btn_common_on btn_changeview" id="btn_Portpolio">
									종목별 비중 보기<img src="/finance/images/roboadvisor/btn_re.png" alt="" />
								</div>
							</div>
<!-- 							 <div class="lastupdate" id="iYear">
 							 	<P id="iYear"></P>-
							 	<p id ="iMon"></p>
							 
							 </div> -->
							 
							 <div class="lastupdate_txt" style="margin-left:375px">종목별 비중 보기를 클릭하시면 자세한 정보를 확인하실 수 있습니다.</div>
						</div>

						<div class="result_portpolio disp_none" id="portpolio_detail">

	
								<div class = result_list style= "margin-top:50px">
								<table class="result_list_table">
								<tr >
									<th>상품유형</th><th>상품구분</th><th>운용사코드</th><th class= a>상품명</th><th>3개월 수익률</th>
								</tr>
								<%
								for(int i = 0; i < size; i++){
									dto = result_list.get(i);
								
									%>
									<tr onmouseover="this.style.backgroundColor='#ffffff';" onmouseout="this.style.backgroundColor='#f4f4f4';">
										<td><%= dto.getType() %></td><td><%= dto.getClassify() %></td>
										<td><%= dto.getOpcode() %></td><td><%= dto.getTitle() %></td>
										<td><%= Double.parseDouble(String.format("%.3f",dto.getThreeprofit())) %></td>
									</tr>
									<% 
									}
									%>
								</table>
								</div>
							<img src="/finance/images/roboadvisor/btn_close1.png" alt=""
								class="btnclose" id="btn_close" />
							<div id="portpolio_input">

							</div>

							<!-- Result Data-->
						</div>

					</td>
				</tr>
				<tr>
<!-- 					<td class="resultmain_td3" colspan="2">
						<div class="spacer40"></div> <a href="portfolio/portfolio_survey.jsp"><div
								class="btn_common_on btn_first">다시작성하기</div></a>
					</td> -->
				</tr>
			</table>
			<div class="spacer30"></div>
		</div>
	</div>

	<div class="resize_box">
		<div class="container resize_inbox"></div>
	</div>

</section>
<!--Body-->
<footer id="footer" class="midnight-blue">
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				&copy; 2016 <a target="_blank" href="http://shapebootstrap.net/"
					title="Free Twitter Bootstrap WordPress Themes and HTML templates">ShapeBootstrap</a>.
				All Rights Reserved.
			</div>
			<div class="col-sm-6">
				<ul class="pull-right">
					<li><a href="#">Home</a></li>
					<li><a href="#">About Us</a></li>
					<li><a href="#">Faq</a></li>
					<li><a href="#">Contact Us</a></li>
				</ul>
			</div>
		</div>
	</div>
</footer>

</body>
</html><!-- backup -->
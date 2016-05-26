<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>STEP1</title>
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
    <script src="js/ㅇhtml5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="/finance/images/ico/favicon.ico">
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





        $(document).ready(function () {
            var objSurveyData = new Object();
            var objPlanData = new Object();
            var iCheckNum_total = 0;
            var sRiskPoint = 0;
            var vRiskPoint = 0;
            //Prev / Next Button Click
            $("#btn_step0_next, #btn_step1_next, #btn_step2_next, #btn_step3_next, #btn_step4_next, #btn_step5_next, #btn_step1_prev, #btn_step2_prev, #btn_step3_prev, #btn_step4_prev, #btn_step5_prev, #btn_step6_next, #btn_step7_next, #btn_step8_prev, #btn_step8_next, #btn_step9_prev, #btn_step9_next").click(function () {
                //Box : step0 ~ step5
                //질문: step1_1 ~ step5_4

                var sSelBtnID = $(this).attr("id"); 	//btn_step%d 선택한 버튼  ID
                var sSelBoxID = sSelBtnID.split("_")[1]; //btn_stepID_! 
                var sSelDirection = sSelBtnID.split("_")[2]; //prev/next
                var iSelNum = eval(sSelBoxID.substring(4, 5)); 
                var iPrevNum = eval(sSelBoxID.substring(4, 5)) - 1;
                var iNextNum = eval(sSelBoxID.substring(4, 5)) + 1;
                var iCheckNumber = 0;     //문항 Select Number
                
                $("#sel" + iSelNum.toString()).css("display", "none");
                $("#txt_NowAge_err, #txt_ForecastRetire_err,#txt_Life_err, #txt_TargetPriceRetire_err, #txt_initInvestPrice_err, #txt_MonthSavePrice_err, #txt_InvestTerm_err, #txt_TargetPrice_err, #txt_Validation_err").text("");

                if (sSelDirection == "next") {
                    var imax = 4;
                    var iClassPosition = 1;
                    if (iSelNum == "8") {
                        imax = 3;
                        iClassPosition = 2;
                    }


                    //문항Check
                    if ((iSelNum > 0 && iSelNum < 6) || iSelNum == 8) {
                        for (i = 1; i <= imax; i++) {
                            if ($("#" + sSelBoxID + "_" + i).attr('class').split(" ")[iClassPosition].split("_")[1] == "on") iCheckNumber = i;

                        }
                        iCheckNum_total += iCheckNumber;
                        //alert(iCheckNum_total)
                        
                        if (iCheckNumber == 0) {
                            if (iSelNum == 8) {
                                $("#txt_plan_err").text("플랜을 선택하여 주세요!");
                            } else {
                                $("#sel" + iSelNum.toString()).css("display", "block");
                             
                            }
                            return;
                        }
                        
                        switch (iSelNum) {
                            case 1: objSurveyData.param01 = iCheckNumber; break;  //survey
                            case 2: objSurveyData.param02 = iCheckNumber; break;
                            case 3: objSurveyData.param03 = iCheckNumber; break;
                            case 4: objSurveyData.param04 = iCheckNumber; break;
                            case 5: objSurveyData.param05 = iCheckNumber; break;
                            case 8: objSurveyData.param07 = iCheckNumber; break;  //plan
                        }
                    }
 
                 
                      if(iSelNum ==5) {
                          
                      	 iCheckNum_total
                      	 if(iCheckNum_total >= 5 && iCheckNum_total <= 7){
                      		sRiskPoint = 1;
                      		vRiskPoint = sRiskPoint;
                      		 var slider = $("#result_Range").data("ionRangeSlider");
                               slider.update({
                                   from: eval(sRiskPoint)
                               });
                      		$("#result_point").html("1");
                      		$("#ETF_GPer").text("1%");
                      		$("#ETF_KPer").text("1%");
                      	}if(iCheckNum_total >=8 && iCheckNum_total <=10){
                      		sRiskPoint = 2;
                      		vRiskPoint = sRiskPoint;
                     		 var slider = $("#result_Range").data("ionRangeSlider");
                              slider.update({
                                  from: eval(sRiskPoint)
                              });
                      		$("#result_point").html("2");
                      		$("#ETF_GPer").text("2%");
                      		$("#ETF_KPer").text("2%");
              			}if(iCheckNum_total >=11 && iCheckNum_total <=14){
                      		sRiskPoint = 3;
                      		vRiskPoint = sRiskPoint;
                     		 var slider = $("#result_Range").data("ionRangeSlider");
                              slider.update({
                                  from: eval(sRiskPoint)
                              });
              				$("#result_point").html("3");
                      		$("#ETF_GPer").text("3%");
                      		$("#ETF_KPer").text("3%");
              			}if(iCheckNum_total >=15 && iCheckNum_total <=17){
                      		sRiskPoint = 4;
                      		vRiskPoint = sRiskPoint;
                     		 var slider = $("#result_Range").data("ionRangeSlider");
                              slider.update({
                                  from: eval(sRiskPoint)
                              });
              				$("#result_point").html("4");
                      		$("#ETF_GPer").text("4%");
                      		$("#ETF_KPer").text("4%");
                      	}else if(iCheckNum_total >=18 && iCheckNum_total <=20){
                      		sRiskPoint = 5;
                      		vRiskPoint = sRiskPoint;
                     		 var slider = $("#result_Range").data("ionRangeSlider");
                              slider.update({
                                  from: eval(sRiskPoint)
                              });
                      		$("#result_point").html("5");
                      		$("#ETF_GPer").text("5%");
                      		$("#ETF_KPer").text("5%");
                      	}
              			
               			iCheckNum_total = 0;
              			sRiskPoint = 0; 
                      }


                    //Result 결과 처리
                    if (iSelNum == 6 || iSelNum == 7) {	//G, K
                        if (iSelNum == 6) {
                            iNextNum = iSelNum + 2;
                            objSurveyData.param06 = "G";
                        }

                        if (iSelNum == 7) {
                            sSelBoxID = sSelBoxID.substring(0, 4) + (iSelNum - 1);
                            objSurveyData.param06 = "K";
                        }

                        //투자목적 TAB 변경
                        $("#tab01").removeClass("tab_select");
                        $("#tab02").addClass("tab_select");
                    }

                    //PLAN 선택
                    if (iSelNum == 8) {
                        if (iCheckNumber == 1) $("#plantitle").text("여유자금 투자");
                        if (iCheckNumber == 2) $("#plantitle").text("재무목표 달성");
                        if (iCheckNumber == 3) $("#plantitle").text("은퇴 설계");

                        if ($("#txt_plan").val().replace(" ", "").length == 0) {
                            $("#txt_plan_err").text("플랜 이름을 작성하여 주세요!");
                            return;
                        }

                        objPlanData.param04 = $("#txt_plan").val();         //plan name

                        for (m = 1; m <= 6; m++) {
                            $("#targetplan" + m).removeClass("disp_block");
                            $("#targetplan" + m).addClass("disp_none");
                        }

                        switch (objSurveyData.param07) {	//K
                            case 1:
                                $("#targetplan5").removeClass("disp_none");
                                $("#targetplan5").addClass("disp_block");
                                break;
                            case 2:
                                $("#targetplan5").removeClass("disp_none");
                                $("#targetplan5").addClass("disp_block");
                                $("#targetplan6").removeClass("disp_none");
                                $("#targetplan6").addClass("disp_block");
                                break;
                            case 3:
                                $("#targetplan1").removeClass("disp_none");
                                $("#targetplan1").addClass("disp_block");
                                $("#targetplan4").removeClass("disp_none");
                                $("#targetplan4").addClass("disp_block");
                                break;
                        }

                        //Err message clear
                        $("#txt_NowAge,  #txt_TargetPriceRetire, #txt_initInvestPrice, #txt_MonthSavePrice, #txt_InvestTerm, #txt_TargetPrice").val("");
                        $("#txt_ForecastRetire").val("60세");
                        $("#txt_Life").val("90세");
                        
                        //포폴 이름 지정
                        //var PortfolioName = ("#");
                        
                    }

                    //PLAN Target
                    if (iSelNum == 9) {
					
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
                        var sPlan = objSurveyData.param07;
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

                        
                        
                        if (sPlan == "2") {	//여유자금 투자  :: 
                            //var iSumTargetPrice = iinitInvestPrice + (iMonthSavePrice * iInvestTerm * 12);
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

                        if (sPlan == "3") {	// 재무설계/ 은ㅌ

                            if (iNowAge < 19 || iNowAge > 80) {
                                $("#txt_NowAge_err").text("19세 이상 80세 이하로 작성바랍니다.");
                                bErr = true;
                            }

                            if (iForecastRetire < 45 || iForecastRetire > 81) {
                                $("#txt_ForecastRetire_err").text("45세 이상 81세 이하로 작성바랍니다.");
                                bErr = true;
                            }

                            if (iLife < 65 || iLife > 120) {
                                $("#txt_Life_err").text("65세 이상 120세 이하로 작성바랍니다.");
                                bErr = true;
                            }

                            if (iTargetPriceRetire < 30) {
                                $("#txt_TargetPriceRetire_err").text("30만원 이상 작성바랍니다.");
                                bErr = true;
                            }

                            iTargetPrice = (iLife - iForecastRetire) * 12 * iTargetPriceRetire;
                            if (iTargetPrice < iinitInvestPrice + ((iMonthSavePrice * 12) * (iForecastRetire - iNowAge))) {
                                $("#txt_Validation_err").html("은퇴 후 목표 월 소득을 샹향 조정하거나<Br>초기 투자 금액 또는 월별 추가 투자금액을 하향 조정하세요.");
                                bErr = true;
                            }

                            if (iNowAge > iForecastRetire) $("#txt_ForecastRetire").autoNumeric('set', iNowAge + 1);
                            if (iForecastRetire > iLife) $("#txt_Life").autoNumeric('set', iForecastRetire + 1);
                        }

                        if (!bErr) {	//vRiskPoint 보내기. 
                            $("#txt_Riskpoint").val(objPlanData.param01);
                            $("#txt_Region").val(objSurveyData.param06);
                            $("#txt_Plantype").val(objSurveyData.param07);
                            
                            if (sPlan == 1){
                            $("#btn_step9_next").on('click', function(event){

                            var vPlan = 1;
                            var initInvestPrice = $("#txt_initInvestPrice").val()
                            var MonthSavePrice = $("#txt_MonthSavePrice").val()
                            var InvestTerm = $("#txt_InvestTerm").val();
                            alert(vRiskPoint+"." + vPlan +": " + initInvestPrice + MonthSavePrice + InvestTerm)

                            
                            
                            })
                            }else if(sPlan ==2){
                            $("#btn_step9_next").on('click', function(event){
                           	var vPlan = 2;
                           	var initInvestPrice = $("#txt_initInvestPrice").val()
                            var MonthSavePrice = $("#txt_MonthSavePrice").val()
                            var InvestTerm = $("#txt_InvestTerm").val();
                           	var TargetPrice = $("#txt_TargetPrice").val();
                           	alert(vRiskPoint + "." + vPlan +": " + initInvestPrice + MonthSavePrice + InvestTerm
                           						+ TargetPrice)
 
			
                            
                            })
                            }else if(sPlan == 3){
                            $("#btn_step9_next").on('click', function(event){
                            var vPlan = 3;
                            var NowAge = $("#txt_NowAge").val();
                            var TargetPriceRetire = $("#txt_TargetPriceRetire").val();
                            var initInvestPrice = $("#txt_initInvestPrice").val()
                            var MonthSavePrice = $("#txt_MonthSavePrice").val()
                            var ForecastRetire = $("#txt_ForecastRetire").val();
							var Life = $("#txt_Life").val();	//90
                            
 							alert(vRiskPoint + "."  + vPlan + ": "+ NowAge + TargetPriceRetire + 
									initInvestPrice + MonthSavePrice + MonthSavePrice + 
									ForecastRetire + Life) 
							
							///finance/portfolio.do


                            })
                            }
                            
                            alert(sPlan)
							var $form_plan = $("#form_plan");
							var rp =
								$('<input type="hidden" id="vRiskPoint" name="vRiskPoint" value="' + vRiskPoint + '" />');
							var rp2 =
								$('<input type="hidden" id="sPlan" name="sPlan" value="' + sPlan + '" />');
								
								rp.appendTo($form_plan);
								rp2.appendTo($form_plan);///portfolio_result.jsp
								$form_plan.attr({ action: '/finance/portfolio.do', method: 'post' }).submit();
                           			
            	            
                              ///finance/portfolio.do
                              ///portfolio_result.jsp
						}return;
                    }

                    $("#" + sSelBoxID).css("display", "none");
                    $("#" + sSelBoxID.substring(0, 4) + iNextNum).css("display", "block");

                } else {
                    if (iPrevNum != -1) {
                        if (iPrevNum == 7) iPrevNum = iPrevNum - 1;
                        $("#" + sSelBoxID).css("display", "none");
                        $("#" + sSelBoxID.substring(0, 4) + iPrevNum).css("display", "block");

                        if (iSelNum == 8) {
                            //투자목적 TAB 변경
                            $("#tab02").removeClass("tab_select");
                            $("#tab01").addClass("tab_select");
                        }
                    }
                }

            });

            $("#step1_1, #step1_2, #step1_3, #step1_4, #step2_1, #step2_2, #step2_3, #step2_4, #step3_1, #step3_2, #step3_3, #step3_4, #step4_1, #step4_2, #step4_3, #step4_4, #step5_1, #step5_2, #step5_3, #step5_4, #step8_1, #step8_2, #step8_3").mouseenter(function () {
                var sStepName = $(this).attr('id').split("_")[0];
                if (sStepName == "step8") {
                    $("#" + $(this).attr('id')).addClass("choiceplan_over");	//객관식 항목.
                } else {
                    $("#" + $(this).attr('id')).addClass("choice_over");
                }
            });


            $("#step1_1, #step1_2, #step1_3, #step1_4, #step2_1, #step2_2, #step2_3, #step2_4, #step3_1, #step3_2, #step3_3, #step3_4, #step4_1, #step4_2, #step4_3, #step4_4, #step5_1, #step5_2, #step5_3, #step5_4, #step8_1, #step8_2, #step8_3").mouseleave(function () {
                var sStepName = $(this).attr('id').split("_")[0];
                if (sStepName == "step8") {
                    $("#" + $(this).attr('id')).removeClass("choiceplan_over");
                } else {
                    $("#" + $(this).attr('id')).removeClass("choice_over");
                }
            });

            $("#step1_1, #step1_2, #step1_3, #step1_4, #step2_1, #step2_2, #step2_3, #step2_4, #step3_1, #step3_2, #step3_3, #step3_4, #step4_1, #step4_2, #step4_3, #step4_4, #step5_1, #step5_2, #step5_3, #step5_4, #step8_1, #step8_2, #step8_3").click(function () {
                var sThisID = $(this).attr('id');
                var sStepNum = $(this).attr('id').split("_")[0];
                var imax = 4;
                var sClassName = "";

                if (sStepNum.substring(4, 5) == "8") {
                    imax = 3;
                    sClassName = "plan";
                }

                for (i = 1; i <= imax; i++) {
                    if (sThisID == sStepNum + "_" + i.toString()) {
                        $("#" + sStepNum + "_" + i.toString()).removeClass("choice" + sClassName + "_off");
                        $("#" + sStepNum + "_" + i.toString()).addClass("choice" + sClassName + "_on");
                    } else {
                        $("#" + sStepNum + "_" + i.toString()).removeClass("choice" + sClassName + "_on");
                        $("#" + sStepNum + "_" + i.toString()).addClass("choice" + sClassName + "_off");
                    }
                }
            });

            $("#result_Range").ionRangeSlider({
                type: "single",
                min: 1,
                max: 5,
                step: 1,
                grid: true,
                grid_snap: true,
                keyboard: true,
                drag_interval: true,
                onStart: function (data) {
                    //console.log("onStart");
                },
                onChange: function (data) {
                },
                onFinish: function (data) {
                    var objRisk = new Object();
                    objRisk.param01 = data.from;
                    alert(objRisk.param01+ " test")
                    var json_data = JSON.stringify({ data: objRisk });
                    
                    
                    
                    objRisk = null;
                },
                onUpdate: function (data) {
                    //console.log("onUpdate");
                }
            });
            
            

            $("#txt_NowAge").autoNumeric('init');
            $("#txt_ForecastRetire").autoNumeric('init');
            $("#txt_Life").autoNumeric('init');
            $("#txt_TargetPriceRetire").autoNumeric('init');
            $("#txt_initInvestPrice").autoNumeric('init');
            $("#txt_MonthSavePrice").autoNumeric('init');
            $("#txt_InvestTerm").autoNumeric('init');
            $("#txt_InvestTermMon").autoNumeric('init');
            $("#txt_TargetPrice").autoNumeric('init');

            $("#btn_retest").click(function () {
                $("#step6").css("display", "none");
                for (m = 1; m <= 5; m++) {
                    for (i = 1; i <= 4; i++) {
                        $("#step" + m.toString() + "_" + i.toString()).removeClass("choice_off");
                        $("#step" + m.toString() + "_" + i.toString()).removeClass("choice_on");
                        $("#step" + m.toString() + "_" + i.toString()).addClass("choice_off");
                    }
                }

                for (i = 1; i <= 3; i++) {
                    $("#step8_" + i.toString()).removeClass("choiceplan_off");
                    $("#step8_" + i.toString()).removeClass("choiceplan_on");
                    $("#step8_" + i.toString()).addClass("choiceplan_off");
                }
                $("#txt_plan").val("");
	            iCheckNum_total = 0;
	            sRiskPoint = 0;
                $("#btn_step1_prev").click();
            });
            

            $("#btn_step0_next").on('click', function(event){
	            	$('#step0').css("display", "none");
	            	$('#step1').css("display", "block");})

/*             $("#btn_step9_next").on('click', function(event){
            	alert('happy!')	
             })        */
	            	
	            	
             }); 
       

        function set_comma(n) {
            var reg = /(^[+-]?\d+)(\d{3})/;
            n += '';
            while (reg.test(n))
                n = n.replace(reg, '$1' + ',' + '$2');

            return n;
        }
        

        

    </script>


</head>
<!-- <body oncontextmenu="return false" ondragstart="return false"
	onselectstart="return false">-->

<header id="header">
<!-- 	<div class="top-bar">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-xs-4">
					<div class="top-number">
						<p>
							<i class="fa fa-phone-square"></i> +0123 456 70 90
						</p>
					</div>
				</div>
				<div class="col-sm-6 col-xs-8">
					<div class="social">
						<ul class="social-share">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#"><i class="fa fa-skype"></i></a></li>
						</ul>
						<div class="search">
							<form role="form">
								<input type="text" class="search-form" autocomplete="off"
									placeholder="Search"> <i class="fa fa-search"></i>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		/.container
	</div>
	/.top-bar

	<nav class="navbar navbar-inverse" role="banner">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"><img
					src="/finance/images/logo.png" alt="logo"></a>
			</div>

			<div class="collapse navbar-collapse navbar-right">
				<ul class="nav navbar-nav">
					<li><a href="index.html">Home</a></li>
					<li><a href="about-us.html">About Us</a></li>
					<li><a href="services.html">Services</a></li>
					<li class="active"><a href="portfolio.html">Portfolio</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Pages <i class="fa fa-angle-down"></i></a>
						<ul class="dropdown-menu">
							<li><a href="blog-item.html">Blog Single</a></li>
							<li><a href="pricing.html">Pricing</a></li>
							<li><a href="404.html">404</a></li>
							<li><a href="shortcodes.html">Shortcodes</a></li>
						</ul></li>
					<li><a href="blog.html">Blog</a></li>
					<li><a href="contact-us.html">Contact</a></li>
				</ul>
			</div>
		</div>
		/.container
	</nav>
	/nav -->
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



<!--Body-->
<section>
	<!-- 설문 Tab start-->
	<div class="tab_box1">
		<!-- STEP01 : 위험성향 측정 -->
		<div class="container box01">
			<table class="tab_table">
				<tr>
					<td class="tab_default tab_select" id="tab01"><span>01</span>
						<div>위험성향 측정</div></td>
					<td class="tab_bar_bg"><div class="tab_bar_off"></div></td>
					<td class="tab_default tab_center" id="tab02"><span>02</span>
						<div>투자목적 선택</div></td>
					<td class="tab_bar_bg"><div class="tab_bar_on"></div></td>
					<td class="tab_default" id="tab03"><span>03</span>
						<div>포트폴리오 설계</div></td>
				</tr>
			</table>
		</div>
	</div>

	<!-- 설문 Intro -->
	<div class="test_box1 disp_none1" id="step0">
		<div class="container box01">
			<div class="spacer100"></div>
			<div class="spacer30"></div>
			<!-- spacer 간격, 숫자는 px -->
			<table class="table_step0">
				<tr>
					<td class="table_step0_td1">포트폴리오 설계를 위한 위험성향 분석<br /><span>
								(Web-Based Advisor for Beginner)</span> 
						<div class="spacer40"></div>
					</td>
				</tr>
				<tr>
					<td class="table_step0_td2">
						<div></div>
					</td>
				</tr>
				<tr>
					<td class="table_step0_td3">
						<!-- 메인화면 인트로 -->
						<div class="spacer40"></div>여러분의 위험성향과 투자목적에 따른<br />
						포트폴리오를 직접 설계해보시기 바랍니다.
					</td>
				</tr>
				<tr>
					<td class="table_step0_td4">
						<!--<div id="coonull">cookie Null</div>-->
						<div class="spacer40"></div>
						<div class="btn_common_on btn_step0_test" id="btn_step0_next">위험성향
							측정 시작</div>
						<div class="spacer50"></div>
						<div class="disp_none">
							온라인을 통한 서비스 가입은 현재 제공되지 않습니다.<br />현재 가입 가능한 상품은 <a href="#"><u>상품소개</u></a>를
							참고하시기 바랍니다.
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>



	<!-- 설문 Step1 -->
	<div class="test_box1 disp_none" id="step1">
		<div class="container box01">
			<div class="spacer55"></div>
			<table class="table_step1">
				<tr>
					<td class="table_step_td1">
						<div class="spacer40"></div>
						<table>
							<tr>
								<!-- 현재 설문 문항 표시 아이콘  : ex) ●○○○○-->
								<td class="test_status_td"><div class="test_status_on">1</div></td>
								<td class="test_status_td"><div class="test_status_off">2</div></td>
								<td class="test_status_td"><div class="test_status_off">3</div></td>
								<td class="test_status_td"><div class="test_status_off">4</div></td>
								<td class="test_status_td"><div class="test_status_off">5</div></td>
							</tr>
						</table>

					</td>
				</tr>
				<tr>
					<td class="table_step_td2">
						<!-- 질문 -->
						<div class="spacer50"></div> 투자할 때 "리스크" 라는 단어를 들으면<br /> 가장 먼저
						떠오르는 생각은 무엇입니까?&nbsp;&nbsp;&nbsp;<img
						src="/finance/images/roboadvisor/img_hand.png" alt="" />
					</td>
				</tr>
				<tr>
					<td>
						<div class="spacer40"></div>
						<div class="choice_set choice_off" id="step1_1">
							<div class="choice_dot1"></div>
							<div class="choice_dot_step1">손실</div>
						</div>
						<div class="choice_set choice_off" id="step1_2">
							<div class="choice_dot2"></div>
							<div class="choice_dot_step1">불확실</div>
						</div>
						<div class="choice_set choice_off" id="step1_3">
							<div class="choice_dot3"></div>
							<div class="choice_dot_step1">투자 기회</div>
						</div>
						<div class="choice_set choice_off" id="step1_4">
							<div class="choice_dot4"></div>
							<div class="choice_dot_step1">높은 수익</div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="err_tdsize">
						<!-- 에러처리 : 답을 선택하지 않은 경우 -->
						<div id="sel1" class="err_desctiption disp_none">문항을 선택하여
							주세요!</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="spacer40"></div>
						<div class="btn_common_off btn_prev" id="btn_step1_prev">
							<div></div>
							뒤로
						</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="btn_common_off btn_next" id="btn_step1_next">
							다음
							<div></div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<!-- 설문 Step2 -->
	<div class="test_box1 disp_none" id="step2">
		<div class="container box01">
			<div class="spacer55"></div>
			<table class="table_step1">
				<tr>
					<td class="table_step_td1">
						<div class="spacer40"></div>
						<table>
							<tr>
								<td class="test_status_td"><div class="test_status_off">1</div></td>
								<td class="test_status_td"><div class="test_status_on">2</div></td>
								<td class="test_status_td"><div class="test_status_off">3</div></td>
								<td class="test_status_td"><div class="test_status_off">4</div></td>
								<td class="test_status_td"><div class="test_status_off">5</div></td>
							</tr>
						</table>

					</td>
				</tr>
				<tr>
					<td class="table_step_td2">
						<div class="spacer50"></div> 투자를 할 경우 감내할 수 있는<br />손실수준은 어느
						정도입니까?&nbsp;&nbsp;&nbsp;<img
						src="/finance/images/roboadvisor/img_hand.png" alt="" />

					</td>
				</tr>
				<tr>
					<td>
						<div class="spacer40"></div>
						<div class="choice_set choice_off" id="step2_1">
							<div class="choice_dot1"></div>
							<div class="choice_dot_step2">
								무슨 일이 있어도<br />투자 원금은<br />보전되어야 함
							</div>
						</div>
						<div class="choice_set choice_off" id="step2_2">
							<div class="choice_dot2"></div>
							<div class="choice_dot_step2A">
								투자 원금에서<br />최소한의 손실을<br />감수할 수 있음
							</div>
						</div>
						<div class="choice_set choice_off" id="step2_3">
							<div class="choice_dot3"></div>
							<div class="choice_dot_step2B">
								투자 원금 중<br />일부의 손실을<br />감수할 수 있음
							</div>
						</div>
						<div class="choice_set choice_off" id="step2_4">
							<div class="choice_dot4"></div>
							<div class="choice_dot_step2A">
								높은 수익을 위해<br />손실 수준은<br />상관하지 않음
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="err_tdsize">
						<div id="sel2" class="err_desctiption disp_none">문항을 선택하여
							주세요!</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="spacer35"></div>
						<div class="btn_common_off btn_prev" id="btn_step2_prev">
							<div></div>
							뒤로
						</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="btn_common_off btn_next" id="btn_step2_next">
							다음
							<div></div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<!-- 설문 Step3 -->
	<div class="test_box1 disp_none" id="step3">
		<div class="container box01">
			<div class="spacer55"></div>
			<table class="table_step1">
				<tr>
					<td class="table_step_td1">
						<div class="spacer40"></div>
						<table>
							<tr>
								<td class="test_status_td"><div class="test_status_off">1</div></td>
								<td class="test_status_td"><div class="test_status_off">2</div></td>
								<td class="test_status_td"><div class="test_status_on">3</div></td>
								<td class="test_status_td"><div class="test_status_off">4</div></td>
								<td class="test_status_td"><div class="test_status_off">5</div></td>
							</tr>
						</table>

					</td>
				</tr>
				<tr>
					<td class="table_step_td2">
						<div class="spacer50"></div> 지난 몇 달 동안 당신이 보유한 주식포트폴리오가<br />25%
						이상 급락했다면, 다음 중 어떻게 하겠습니까?&nbsp;&nbsp;&nbsp;<img
						src="/finance/images/roboadvisor/img_hand.png" alt="" />
					</td>
				</tr>
				<tr>
					<td>
						<div class="spacer40"></div>
						<div class="choice_set choice_off" id="step3_1">
							<div class="choice_dot1"></div>
							<div class="choice_dot_step3">
								보유주식<Br />전부를 처분한다
							</div>
						</div>
						<div class="choice_set choice_off" id="step3_2">
							<div class="choice_dot2"></div>
							<div class="choice_dot_step3">
								보유주식<Br />일부를 처분한다
							</div>
						</div>
						<div class="choice_set choice_off" id="step3_3">
							<div class="choice_dot3"></div>
							<div class="choice_dot_step3A">
								주가가 곧 회복될<Br />것으로 기대하고<Br />보유한다
							</div>
						</div>
						<div class="choice_set choice_off" id="step3_4">
							<div class="choice_dot4"></div>
							<div class="choice_dot_step3">
								주식을<Br />추가로 취득한다
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="err_tdsize">
						<div id="sel3" class="err_desctiption disp_none">문항을 선택하여
							주세요!</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="spacer35"></div>
						<div class="btn_common_off btn_prev" id="btn_step3_prev">
							<div></div>
							뒤로
						</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="btn_common_off btn_next" id="btn_step3_next">
							다음
							<div></div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<!-- 설문 Step4 -->
	<div class="test_box1 disp_none" id="step4">
		<div class="container box01">
			<div class="spacer55"></div>
			<table class="table_step1">
				<tr>
					<td class="table_step_td1">
						<div class="spacer40"></div>
						<table>
							<tr>
								<td class="test_status_td"><div class="test_status_off">1</div></td>
								<td class="test_status_td"><div class="test_status_off">2</div></td>
								<td class="test_status_td"><div class="test_status_off">3</div></td>
								<td class="test_status_td"><div class="test_status_on">4</div></td>
								<td class="test_status_td"><div class="test_status_off">5</div></td>
							</tr>
						</table>

					</td>
				</tr>
				<tr>
					<td class="table_step_td2">
						<div class="spacer50"></div> 예상 밖의 여유자금 1억 원이 생겼다면,<br />다음 중 어떤
						것을 선택하겠습니까?&nbsp;&nbsp;&nbsp;<img
						src="/finance/images/roboadvisor/img_hand.png" alt="" />
					</td>
				</tr>
				<tr>
					<td>
						<div class="spacer40"></div>
						<div class="choice_set choice_off" id="step4_1">
							<div class="choice_dot1"></div>
							<div class="choice_dot_step4">
								<span>70%</span>의 예금,<br /> <span>30%</span>위험자산에 투자
							</div>
						</div>
						<div class="choice_set choice_off" id="step4_2">
							<div class="choice_dot2"></div>
							<div class="choice_dot_step4">
								<span>50%</span>의 예금,<br /> <span>50%</span>위험자산에 투자
							</div>
						</div>
						<div class="choice_set choice_off" id="step4_3">
							<div class="choice_dot3"></div>
							<div class="choice_dot_step4">
								<span>30%</span>의 예금,<br /> <span>70%</span>위험자산에 투자
							</div>
						</div>
						<div class="choice_set choice_off" id="step4_4">
							<div class="choice_dot4"></div>
							<div class="choice_dot_step4">
								<span>10%</span>의 예금,<br /> <span>90%</span>위험자산에 투자
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="err_tdsize">
						<div id="sel4" class="err_desctiption disp_none">문항을 선택하여
							주세요!</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="spacer35"></div>
						<div class="btn_common_off btn_prev" id="btn_step4_prev">
							<div></div>
							뒤로
						</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="btn_common_off btn_next" id="btn_step4_next">
							다음
							<div></div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<!-- 설문 Step5 -->
	<div class="test_box1 disp_none" id="step5">
		<div class="container box01">
			<div class="spacer55"></div>
			<table class="table_step1">
				<tr>
					<td class="table_step_td1">
						<div class="spacer40"></div>
						<table>
							<tr>
								<td class="test_status_td"><div class="test_status_off">1</div></td>
								<td class="test_status_td"><div class="test_status_off">2</div></td>
								<td class="test_status_td"><div class="test_status_off">3</div></td>
								<td class="test_status_td"><div class="test_status_off">4</div></td>
								<td class="test_status_td"><div class="test_status_on">5</div></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class="table_step_td2">
						<div class="spacer50"></div> 다음 투자안 중에서<br />어떤 투자안을
						선택하겠습니까?&nbsp;&nbsp;&nbsp;<img
						src="/finance/images/roboadvisor/img_hand.png" alt="" />
					</td>
				</tr>
				<tr>
					<td>
						<!-- 최대수익률/기대수익률/최대손실률 수치 png -->
						<div class="spacer40"></div>
						<div class="choice_set choice_off" id="step5_1">
							<div class="choice_dot1"></div>
							<img src="/finance/images/roboadvisor/img_51.png" alt="" />
						</div>
						<div class="choice_set choice_off" id="step5_2">
							<div class="choice_dot2"></div>
							<img src="/finance/images/roboadvisor/img_52.png" alt="" />
						</div>
						<div class="choice_set choice_off" id="step5_3">
							<div class="choice_dot3"></div>
							<img src="/finance/images/roboadvisor/img_53.png" alt="" />
						</div>
						<div class="choice_set choice_off" id="step5_4">
							<div class="choice_dot4"></div>
							<img src="/finance/images/roboadvisor/img_54.png" alt="" />
						</div>
					</td>
				</tr>
				<tr>
					<td class="err_tdsize">
						<div id="sel5" class="err_desctiption disp_none">문항을 선택하여
							주세요!</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="spacer40"></div>
						<div class="btn_common_off btn_prev" id="btn_step5_prev">
							<div></div>
							뒤로
						</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="btn_common_off btn_next" id="btn_step5_next">
							다음
							<div></div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>




	<!-- 설문 측정결과 Step6 -->
	<div class="test_box1 disp_none" id="step6">
		<div class="container box01">
			<div class="spacer75"></div>
			<table class="result_table">
				<tr>
					<td class="td01">위험성향 측정 결과</td>
				</tr>
				<tr>
					<td class="td02">
						<!-- STEP02 : 위험성향 측정 결과 -->
						<div class="spacer35"></div>
						<div id="result_point">6</div>
						<div class="spacer25"></div>
					</td>
				</tr>
				<tr>
					<td class="td03">
						<div class="btn_common_on retest" id="btn_retest">
							다시 측정 하기<img src="/finance/images/roboadvisor/btn_re.png" alt="" />
						</div>
						<div class="spacer65"></div>
					</td>
				</tr>
				<tr>
					<td><div class="risk riskA">위험 회피형</div> <img
						src="/finance/images/roboadvisor/img_left_arrow.png" alt="" />
						<div class="risk riskB">위험 중립형</div> <img
						src="/finance/images/roboadvisor/img_right_arrow.png" alt="" />
						<div class="risk riskC">위험 선호형</div></td>
				</tr>
				<tr>
					<td>
						<div class="spacer5"></div> <input id="result_Range" />
					</td>
				</tr>
				<tr>
					<td>	<!-- 투자 기대 수익률  제거-->
						<div class="spacer40"></div>
						<div class="btn_common_off btnETF" id="btn_step6_next">
							해외 상장 ETF<br />투자 기대 수익률<br />
							<div class="ETF_Perfomance" id="ETF_GPer">0.0%</div>
							<div class="ETF_Link">
								투자목적 선택&nbsp;<img
									src="/finance/images/roboadvisor/btn_next_arrow_off.png" alt="" />
							</div>
						</div>
						<div class="btnETF_term"></div>
						<div class="btn_common_off btnETF" id="btn_step7_next">
							국내 상장 ETF<br />투자 기대 수익률 <br />
							<div class="ETF_Perfomance" id="ETF_KPer">0.0%</div>
							<div class="ETF_Link">
								투자목적 선택&nbsp;<img
									src="/finance/images/roboadvisor/btn_next_arrow_off.png" alt="" />
							</div>
						</div>
						<div class="spacer25"></div>
						<div class="ETF_comment">
							해외 상장 ETF와 국내 상장 ETF에 적용되는 세금이 서로 다를 수 있으니 투자자의 주의가 요구됩니다.<br />
							<div class="ETF_sub_comment">
								&nbsp;· 국내 상장 ETF 투자 시 발생한 매매차익(국내주식형 ETF 제외) 에 대해서 15.4%의
								배당소득세(종합과세 대상)가 과세됩니다. &nbsp;· 해외 상장 ETF 투자 시 발생한 매매차익(1년 동안 발생한
								손익 상계 후<br />&nbsp;&nbsp;250만원 기본 공제)에 대해서 22%의 양도소득세(분리과세)가
								과세됩니다. &nbsp;· 국내 상장 ETF와 해외 상장 ETF에서 발생한 분배금에 대해서는 모두 15.4%의
								배당소득세(종합과세 대상)가 과세됩니다.
							</div>
							해외 상장 ETF 투자 시, 환율 변동에 따라 추가적인 환차손 또는 환차익이 발생할 수 있습니다.
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>


	<!-- Step7 은 위험성향테스트에서 버튼2개항목처리됨 -->
	<!-- STEP02 :  투자목적 선택 -->

	<!-- 투자목적선택 Step8 -->
	<div class="test_box1 disp_none" id="step8">
		<div class="container box01">
			<div class="spacer75"></div>
			<table class="table_plan1">
				<tr>
					<td class="table_plan_td1">투자목적이 무엇입니까?</td>
				</tr>
				<tr>
					<td>
						<div class="spacer45"></div>
						<div class="choice_plan_set img01 choiceplan_off" id="step8_1">
							<div class="choice_dot1"></div>
							<div class="choice_dot_plan">여유자금 투자</div>
							<div class="choice_dot_planA">
								목표하는 금액 없이<br />여유자금을 투자하는 경우
							</div>
						</div>
						<div class="choice_plan_set img02 choiceplan_off" id="step8_2">
							<div class="choice_dot2"></div>
							<div class="choice_dot_plan">재무목표 달성</div>
							<div class="choice_dot_planB">
								주택 구입, 자녀 교육비 등<br />재무목표를 위해 투자하는 경우
							</div>
						</div>
						<div class="choice_plan_set img03 choiceplan_off" id="step8_3">
							<div class="choice_dot3"></div>
							<div class="choice_dot_plan">&nbsp;&nbsp;&nbsp;은퇴 설계</div>
							<div class="choice_dot_planC">
								은퇴한 이후 필요한<br />일정 수입을 위해 투자하는 경우
							</div>
						</div>
						<div class="spacer30"></div>
					</td>
				</tr>
				<tr>
					 <td><div class="plan_name">
							이 포트폴리오의 이름을 입력하세요.<br /> <input type="text" id="txt_plan"
								class="txtplan" maxlength="20" placeholder="포트폴리오 이름 입력" />
						</div>
						<div class="err_desctiption" id="txt_plan_err"></div></td>  -
				</tr>
				<tr>
					<td>
						<div class="spacer35"></div>
						<div class="btn_common_off btn_prev" id="btn_step8_prev">
							<div></div>
							뒤로
						</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="btn_common_off btn_next" id="btn_step8_next">
							다음
							<div></div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<!-- 재무목표달성 Step9 -->
	<!-- 재무목표달성 / 은퇴설계 -->
	<div class="test_box1 disp_none" id="step9">
		<div class="container box01">
			<div class="spacer75"></div>
			<table class="table_plan2">
				<tr>
					<td class="table_plan_td1" id="plantitle">재무목표달성</td>
				</tr>
				<tr>
					<td>
						<div class="spacer45"></div>
						<div class="targetplan_box">
							<div class="spacer20"></div>
							<form id="form_plan" method="post" action="#">
								<input type="text" id="txt_Riskpoint" name="txt_Riskpoint"
									class="disp_none" /> <input type="text" id="txt_Region"
									name="txt_Region" class="disp_none" /> <input type="text"
									id="txt_Plantype" name="txt_Plantype" class="disp_none" />
								<div id="targetplan1" class="disp_none">
									현재 나이는 얼마입니까?<br /> <input type="text" id="txt_NowAge"
										name="txt_NowAge" maxlength="3" placeholder="19세 이상 나이 입력"
										data-a-sign="세" data-p-sign="s" data-m-dec="0" />
									<div class="err_desctiption" id="txt_NowAge_err"></div>
									<div class="spacer5"></div>
								</div>
								<div id="targetplan2" class="disp_none">
									예상 은퇴 나이는 언제입니까?<br /> <input type="text"
										id="txt_ForecastRetire" name="txt_ForecastRetire"
										maxlength="3" value="60" placeholder="45세 이상 나이 입력"
										data-a-sign="세" data-p-sign="s" data-m-dec="0" />
									<div class="err_desctiption" id="txt_ForecastRetire_err"></div>
									<div class="spacer5"></div>
								</div>
								<div id="targetplan3" class="disp_none">
									기대수명 나이는 언제로 생각하십니까?<br /> <input type="text" id="txt_Life"
										name="txt_Life" maxlength="3" value="90"
										placeholder="65세 이상 나이 입력" data-a-sign="세" data-p-sign="s"
										data-m-dec="0" />
									<div class="err_desctiption" id="txt_Life_err"></div>
									<div class="spacer5"></div>
								</div>
								<div id="targetplan4" class="disp_none">
									은퇴 후 목표 월 소득은 얼마입니까?<br /> <input type="text"
										id="txt_TargetPriceRetire" name="txt_TargetPriceRetire"
										placeholder="30만원 이상 금액 입력" data-a-sign="만원" data-p-sign="s"
										data-m-dec="0" />
									<div class="err_desctiption" id="txt_TargetPriceRetire_err"></div>
									<div class="spacer5"></div>
								</div>
								<div>
									초기 투자금액은 얼마입니까?<br /> <input type="text"
										id="txt_initInvestPrice" name="txt_initInvestPrice"
										placeholder="100만원 이상 금액 입력" data-a-sign="만원" data-p-sign="s"
										data-m-dec="0" />
									<div class="err_desctiption" id="txt_initInvestPrice_err"></div>
									<div class="spacer5"></div>
								</div>
								<div>
									매달 얼마를 추가 투자할 수 있습니까?<br /> <input type="text"
										id="txt_MonthSavePrice" name="txt_MonthSavePrice"
										placeholder="0원 이상 금액 입력" data-a-sign="만원" data-p-sign="s"
										data-m-dec="0" />
									<div class="err_desctiption" id="txt_MonthSavePrice_err"></div>
									<div class="spacer5"></div>
								</div>
								<div id="targetplan5" class="disp_none">
									투자 기간은 얼마입니까?<br /> <input type="text" class="txtYear"
										id="txt_InvestTerm" name="txt_InvestTerm"
										placeholder="2년 이상 입력" data-a-sign="년" data-p-sign="s"
										data-m-dec="0" /> <input type="text" class="txtMonth"
										id="txt_InvestTermMon" name="txt_InvestTermMon"
										placeholder="개월 입력" data-a-sign="개월" data-p-sign="s"
										data-m-dec="0" />
									<div class="err_desctiption" id="txt_InvestTerm_err"></div>
									<div class="spacer5"></div>
								</div>
								<div id="targetplan6" class="disp_none">
									달성 목표 금액은 얼마입니까?<br /> <input type="text" id="txt_TargetPrice"
										name="txt_TargetPrice" placeholder="100만원 이상 금액 입력"
										data-a-sign="만원" data-p-sign="s" data-m-dec="0" />
									<div class="err_desctiption" id="txt_TargetPrice_err"></div>
									<div class="spacer5"></div>
								</div>
							</form>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="spacer45"></div>
						<div class="btn_common_off btn_prev" id="btn_step9_prev">
							<div></div>
							뒤로
						</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="btn_common_off btn_next" id="btn_step9_next">
							다음
							<div></div>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="spacer20"></div>
						<div class="err_desctiption" id="txt_Validation_err"></div>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<div class="resize_box">
		<div class="container resize_inbox"></div>
	</div>

</section>


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
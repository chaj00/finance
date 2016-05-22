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
    <script src="js/��html5shiv.js"></script>
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
            var ETF_Per = 0;
            var ETF_GPer = "";
            var ETF_KPer = "";
            //Prev / Next Button Click
            $("#btn_step0_next, #btn_step1_next, #btn_step2_next, #btn_step3_next, #btn_step4_next, #btn_step5_next, #btn_step1_prev, #btn_step2_prev, #btn_step3_prev, #btn_step4_prev, #btn_step5_prev, #btn_step6_next, #btn_step7_next, #btn_step8_prev, #btn_step8_next, #btn_step9_prev, #btn_step9_next").click(function () {
                //Box : step0 ~ step5
                //����: step1_1 ~ step5_4

                var sSelBtnID = $(this).attr("id"); 	//btn_step%d ������ ��ư  ID
                var sSelBoxID = sSelBtnID.split("_")[1]; //btn_stepID_! 
                var sSelDirection = sSelBtnID.split("_")[2]; //prev/next
                var iSelNum = eval(sSelBoxID.substring(4, 5)); 
                var iPrevNum = eval(sSelBoxID.substring(4, 5)) - 1;
                var iNextNum = eval(sSelBoxID.substring(4, 5)) + 1;
                var iCheckNumber = 0;     //���� Select Number
                
                  
                $("#sel" + iSelNum.toString()).css("display", "none");
                $("#txt_NowAge_err, #txt_ForecastRetire_err,#txt_Life_err, #txt_TargetPriceRetire_err, #txt_initInvestPrice_err, #txt_MonthSavePrice_err, #txt_InvestTerm_err, #txt_TargetPrice_err, #txt_Validation_err").text("");

                if (sSelDirection == "next") {
                    var imax = 4;
                    var iClassPosition = 1;
                    if (iSelNum == "8") {
                        imax = 3;
                        iClassPosition = 2;
                    }


                    //����Check
                    if ((iSelNum > 0 && iSelNum < 6) || iSelNum == 8) {
                        for (i = 1; i <= imax; i++) {
                            if ($("#" + sSelBoxID + "_" + i).attr('class').split(" ")[iClassPosition].split("_")[1] == "on") iCheckNumber = i;

                        }
                        iCheckNum_total += iCheckNumber;
                        //alert(iCheckNum_total)
                        
                        if (iCheckNumber == 0) {
                            if (iSelNum == 8) {
                                $("#txt_plan_err").text("�÷��� �����Ͽ� �ּ���!");
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
                      		$("#ETF_GPer").text("6.3%");
                      		$("#ETF_KPer").text("3.9%");
                      		ETF_GPer = $("#ETF_GPer").text();
                      		ETF_KPer = $("#ETF_KPer").text();
 
                      	}if(iCheckNum_total >=8 && iCheckNum_total <=10){
                      		sRiskPoint = 2;
                      		vRiskPoint = sRiskPoint;
                     		 var slider = $("#result_Range").data("ionRangeSlider");
                              slider.update({
                                  from: eval(sRiskPoint)
                              });
                      		$("#result_point").html("2");
                      		$("#ETF_GPer").text("7.1%");
                      		$("#ETF_KPer").text("4.4%");
                      		ETF_GPer = $("#ETF_GPer").text();
                      		ETF_KPer = $("#ETF_KPer").text();
                      		
              			}if(iCheckNum_total >=11 && iCheckNum_total <=14){
                      		sRiskPoint = 3;
                      		vRiskPoint = sRiskPoint;
                     		 var slider = $("#result_Range").data("ionRangeSlider");
                              slider.update({
                                  from: eval(sRiskPoint)
                              });
              				$("#result_point").html("3");
                      		$("#ETF_GPer").text("7.8%");
                      		$("#ETF_KPer").text("4.9%");
                      		ETF_GPer = $("#ETF_GPer").text();
                      		ETF_KPer = $("#ETF_KPer").text();
              			}if(iCheckNum_total >=15 && iCheckNum_total <=17){
                      		sRiskPoint = 4;
                      		vRiskPoint = sRiskPoint;
                     		 var slider = $("#result_Range").data("ionRangeSlider");
                              slider.update({
                                  from: eval(sRiskPoint)
                              });
              				$("#result_point").html("4");
                      		$("#ETF_GPer").text("8.5%");
                      		$("#ETF_KPer").text("5.4%");
                      		ETF_GPer = $("#ETF_GPer").text();
                      		ETF_KPer = $("#ETF_KPer").text();
                      	}else if(iCheckNum_total >=18 && iCheckNum_total <=20){
                      		sRiskPoint = 5;
                      		vRiskPoint = sRiskPoint;
                     		 var slider = $("#result_Range").data("ionRangeSlider");
                              slider.update({
                                  from: eval(sRiskPoint)
                              });
                      		$("#result_point").html("5");
                      		$("#ETF_GPer").text("9.2%");
                      		$("#ETF_KPer").text("5.9%");
                      		ETF_GPer = $("#ETF_GPer").text();
                      		ETF_KPer = $("#ETF_KPer").text();
                      	}
              			
               			iCheckNum_total = 0;
              			sRiskPoint = 0; 
                      }


                    //Result ��� ó��
                    if (iSelNum == 6 || iSelNum == 7) {	//G, K
                        if (iSelNum == 6) {
                            iNextNum = iSelNum + 2;
                            ETF_Per = 0;
                        	
                        }

                        if (iSelNum == 7) {
                            sSelBoxID = sSelBoxID.substring(0, 4) + (iSelNum - 1);
                            ETF_Per = 1;
                        	
                        }
                        
                        //���ڸ��� TAB ����
                        $("#tab01").removeClass("tab_select");
                        $("#tab02").addClass("tab_select");
                        
                        
                    }

                    //PLAN ����
                    if (iSelNum == 8) {
                    	
                        if (iCheckNumber == 1) $("#plantitle").text("�����ڱ� ����");
                        if (iCheckNumber == 2) $("#plantitle").text("�繫��ǥ �޼�");
                        if (iCheckNumber == 3) $("#plantitle").text("���� ����");

                        if ($("#txt_plan").val().replace(" ", "").length == 0) {
                            $("#txt_plan_err").text("�÷� �̸��� �ۼ��Ͽ� �ּ���!");
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
                        $("#txt_ForecastRetire").val("60��");
                        $("#txt_Life").val("90��");
                        
                        //���� �̸� ����
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
                            $("#txt_initInvestPrice_err").text("100���� �̻� �ۼ��ٶ��ϴ�.");
                            bErr = true;
                        }

                        if (iMonthSavePrice < 0) {
                            $("#txt_MonthSavePrice_err").text("0�� �̻� �ۼ��ٶ��ϴ�.");
                            bErr = true;
                        }
						
                        if (sPlan == "1" || sPlan == "2") {
                            if (iInvestTerm < 2 || iInvestTerm > 100) {
                                $("#txt_InvestTerm_err").text("2�� �̻� 100�� ���Ϸ� �ۼ��ٶ��ϴ�.");
                                bErr = true;
                            }

                            if (iInvestTermMon > 11) {
                                $("#txt_InvestTerm_err").text("11���� ���Ϸ� �ۼ��ٶ��ϴ�.");
                                bErr = true;
                            }

                            if (((eval(iInvestTerm) * 12) + eval(iInvestTermMon)) > 1200) {
                                $("#txt_InvestTerm_err").text("100�� ���Ϸ� �ۼ��ٶ��ϴ�.");
                                bErr = true;
                            }
   
                            
                            
                        }

                        
                        
                        if (sPlan == "2") {	//�����ڱ� ����  :: 
                            var iSumTargetPrice = iinitInvestPrice + (iMonthSavePrice * ((iInvestTerm * 12) + iInvestTermMon));
                            if ((iSumTargetPrice > iTargetPrice) || iTargetPrice == 0) {
                                $("#txt_TargetPrice_err").text(set_comma(iSumTargetPrice) + "���� �̻� �ۼ��ٶ��ϴ�.");
                                bErr = true;
                            }

                            if (bErr == false && iTargetPrice < 100) {
                                $("#txt_TargetPrice_err").text("100���� �̻� �ۼ��ٶ��ϴ�.");
                                bErr = true;
                            }
                            
                            
                            

                        }

                        if (sPlan == "3") {	// �繫����/ ����

                            if (iNowAge < 19 || iNowAge > 80) {
                                $("#txt_NowAge_err").text("19�� �̻� 80�� ���Ϸ� �ۼ��ٶ��ϴ�.");
                                bErr = true;
                            }

                            if (iForecastRetire < 45 || iForecastRetire > 81) {
                                $("#txt_ForecastRetire_err").text("45�� �̻� 81�� ���Ϸ� �ۼ��ٶ��ϴ�.");
                                bErr = true;
                            }

                            if (iLife < 65 || iLife > 120) {
                                $("#txt_Life_err").text("65�� �̻� 120�� ���Ϸ� �ۼ��ٶ��ϴ�.");
                                bErr = true;
                            }

                            if (iTargetPriceRetire < 30) {
                                $("#txt_TargetPriceRetire_err").text("30���� �̻� �ۼ��ٶ��ϴ�.");
                                bErr = true;
                            }

                            iTargetPrice = (iLife - iForecastRetire) * 12 * iTargetPriceRetire;
                            if (iTargetPrice < iinitInvestPrice + ((iMonthSavePrice * 12) * (iForecastRetire - iNowAge))) {
                                $("#txt_Validation_err").html("���� �� ��ǥ �� �ҵ��� ���� �����ϰų�<Br>�ʱ� ���� �ݾ� �Ǵ� ���� �߰� ���ڱݾ��� ���� �����ϼ���.");
                                bErr = true;
                            }

                            if (iNowAge > iForecastRetire) $("#txt_ForecastRetire").autoNumeric('set', iNowAge + 1);
                            if (iForecastRetire > iLife) $("#txt_Life").autoNumeric('set', iForecastRetire + 1);
                        }

                        if (!bErr) {	//vRiskPoint ������. 
/*                             $("#txt_Riskpoint").val(objPlanData.param01);
	                            $("#txt_Region").val(objSurveyData.param06);
	                            $("#txt_Plantype").val(objSurveyData.param07);
                             */
                            if (sPlan == 1){
                            $("#btn_step9_next").on('click', function(event){

                            var vPlan = 1;
                            var initInvestPrice = $("#txt_initInvestPrice").val()
                            var MonthSavePrice = $("#txt_MonthSavePrice").val()
                            var InvestTerm = $("#txt_InvestTerm").val();

                            
                            
                            })
                            }else if(sPlan ==2){
                            $("#btn_step9_next").on('click', function(event){
                           	var vPlan = 2;
                           	var initInvestPrice = $("#txt_initInvestPrice").val()
                            var MonthSavePrice = $("#txt_MonthSavePrice").val()
                            var InvestTerm = $("#txt_InvestTerm").val();
                           	var TargetPrice = $("#txt_TargetPrice").val();

 
			
                            
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
 
							
							///finance/portfolio.do


                            })
                            }
                            
                            alert(sPlan)
							var $form_plan = $("#form_plan");
							var rp =
								$('<input type="hidden" id="vRiskPoint" name="vRiskPoint" value="' + vRiskPoint + '" />');
							var rp2 =
								$('<input type="hidden" id="sPlan" name="sPlan" value="' + sPlan + '" />');
							var rp3 = 
								$('<input type="hidden" id="ETF_GPer" name="ETF_GPer" value="' + ETF_GPer + '" />');
							var rp4 = 
								$('<input type="hidden" id="ETF_KPer" name="ETF_KPer" value="' + ETF_KPer + '" />');
							var rp5 = 
								$('<input type="hidden" id="ETF_Per" name="ETF_Per" value="' + ETF_Per + '" />');
								rp.appendTo($form_plan);
								rp2.appendTo($form_plan);///portfolio_result.jsp
								rp3.appendTo($form_plan);
								rp4.appendTo($form_plan);
								rp5.appendTo($form_plan);
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
                            //���ڸ��� TAB ����
                            $("#tab02").removeClass("tab_select");
                            $("#tab01").addClass("tab_select");
                        }
                    }
                }

            });

            $("#step1_1, #step1_2, #step1_3, #step1_4, #step2_1, #step2_2, #step2_3, #step2_4, #step3_1, #step3_2, #step3_3, #step3_4, #step4_1, #step4_2, #step4_3, #step4_4, #step5_1, #step5_2, #step5_3, #step5_4, #step8_1, #step8_2, #step8_3").mouseenter(function () {
                var sStepName = $(this).attr('id').split("_")[0];
                if (sStepName == "step8") {
                    $("#" + $(this).attr('id')).addClass("choiceplan_over");	//������ �׸�.
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
                        <li><a href="/finance/analysis/analysis_main.html">���ںм�</a></li>
                        <li><a href="/finance/product/product_main.html">������ǰ</a></li>
                        <li class ="active"><a href="/finance/portfolio/portfolio_survey.jsp">��Ʈ������</a></li>
                     	
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->


</header>
<!--/header-->



<!--Body-->
<section>
	<!-- ���� Tab start-->
	<div class="tab_box1">
		<!-- STEP01 : ���輺�� ���� -->
		<div class="container box01">
			<table class="tab_table">
				<tr>
					<td class="tab_default tab_select" id="tab01"><span>01</span>
						<div>���輺�� ����</div></td>
					<td class="tab_bar_bg"><div class="tab_bar_off"></div></td>
					<td class="tab_default tab_center" id="tab02"><span>02</span>
						<div>���ڸ��� ����</div></td>
					<td class="tab_bar_bg"><div class="tab_bar_on"></div></td>
					<td class="tab_default" id="tab03"><span>03</span>
						<div>��Ʈ������ ����</div></td>
				</tr>
			</table>
		</div>
	</div>

	<!-- ���� Intro -->
	<div class="test_box1 disp_none1" id="step0">
		<div class="container box01">
			<div class="spacer100"></div>
			<div class="spacer30"></div>
			<!-- spacer ����, ���ڴ� px -->
			<table class="table_step0">
				<tr>
					<td class="table_step0_td1">��Ʈ������ ���踦 ���� ���輺�� �м�<br /><span>
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
						<!-- ����ȭ�� ��Ʈ�� -->
						<div class="spacer40"></div>�������� ���輺��� ���ڸ����� ����<br />
						��Ʈ�������� ���� �����غ��ñ� �ٶ��ϴ�.
					</td>
				</tr>
				<tr>
					<td class="table_step0_td4">
						<!--<div id="coonull">cookie Null</div>-->
						<div class="spacer40"></div>
						<div class="btn_common_on btn_step0_test" id="btn_step0_next">���輺��
							���� ����</div>
						<div class="spacer50"></div>
						<div class="disp_none">
							�¶����� ���� ���� ������ ���� �������� �ʽ��ϴ�.<br />���� ���� ������ ��ǰ�� <a href="#"><u>��ǰ�Ұ�</u></a>��
							�����Ͻñ� �ٶ��ϴ�.
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>



	<!-- ���� Step1 -->
	<div class="test_box1 disp_none" id="step1">
		<div class="container box01">
			<div class="spacer55"></div>
			<table class="table_step1">
				<tr>
					<td class="table_step_td1">
						<div class="spacer40"></div>
						<table>
							<tr>
								<!-- ���� ���� ���� ǥ�� ������  : ex) �ܡۡۡۡ�-->
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
						<!-- ���� -->
						<div class="spacer50"></div> ������ �� "����ũ" ��� �ܾ ������<br /> ���� ����
						�������� ������ �����Դϱ�?&nbsp;&nbsp;&nbsp;<img
						src="/finance/images/roboadvisor/img_hand.png" alt="" />
					</td>
				</tr>
				<tr>
					<td>
						<div class="spacer40"></div>
						<div class="choice_set choice_off" id="step1_1">
							<div class="choice_dot1"></div>
							<div class="choice_dot_step1">�ս�</div>
						</div>
						<div class="choice_set choice_off" id="step1_2">
							<div class="choice_dot2"></div>
							<div class="choice_dot_step1">��Ȯ��</div>
						</div>
						<div class="choice_set choice_off" id="step1_3">
							<div class="choice_dot3"></div>
							<div class="choice_dot_step1">���� ��ȸ</div>
						</div>
						<div class="choice_set choice_off" id="step1_4">
							<div class="choice_dot4"></div>
							<div class="choice_dot_step1">���� ����</div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="err_tdsize">
						<!-- ����ó�� : ���� �������� ���� ��� -->
						<div id="sel1" class="err_desctiption disp_none">������ �����Ͽ�
							�ּ���!</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="spacer40"></div>
						<div class="btn_common_off btn_prev" id="btn_step1_prev">
							<div></div>
							�ڷ�
						</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="btn_common_off btn_next" id="btn_step1_next">
							����
							<div></div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<!-- ���� Step2 -->
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
						<div class="spacer50"></div> ���ڸ� �� ��� ������ �� �ִ�<br />�սǼ����� ���
						�����Դϱ�?&nbsp;&nbsp;&nbsp;<img
						src="/finance/images/roboadvisor/img_hand.png" alt="" />

					</td>
				</tr>
				<tr>
					<td>
						<div class="spacer40"></div>
						<div class="choice_set choice_off" id="step2_1">
							<div class="choice_dot1"></div>
							<div class="choice_dot_step2">
								���� ���� �־<br />���� ������<br />�����Ǿ�� ��
							</div>
						</div>
						<div class="choice_set choice_off" id="step2_2">
							<div class="choice_dot2"></div>
							<div class="choice_dot_step2A">
								���� ���ݿ���<br />�ּ����� �ս���<br />������ �� ����
							</div>
						</div>
						<div class="choice_set choice_off" id="step2_3">
							<div class="choice_dot3"></div>
							<div class="choice_dot_step2B">
								���� ���� ��<br />�Ϻ��� �ս���<br />������ �� ����
							</div>
						</div>
						<div class="choice_set choice_off" id="step2_4">
							<div class="choice_dot4"></div>
							<div class="choice_dot_step2A">
								���� ������ ����<br />�ս� ������<br />������� ����
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="err_tdsize">
						<div id="sel2" class="err_desctiption disp_none">������ �����Ͽ�
							�ּ���!</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="spacer35"></div>
						<div class="btn_common_off btn_prev" id="btn_step2_prev">
							<div></div>
							�ڷ�
						</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="btn_common_off btn_next" id="btn_step2_next">
							����
							<div></div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<!-- ���� Step3 -->
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
						<div class="spacer50"></div> ���� �� �� ���� ����� ������ �ֽ���Ʈ��������<br />25%
						�̻� �޶��ߴٸ�, ���� �� ��� �ϰڽ��ϱ�?&nbsp;&nbsp;&nbsp;<img
						src="/finance/images/roboadvisor/img_hand.png" alt="" />
					</td>
				</tr>
				<tr>
					<td>
						<div class="spacer40"></div>
						<div class="choice_set choice_off" id="step3_1">
							<div class="choice_dot1"></div>
							<div class="choice_dot_step3">
								�����ֽ�<Br />���θ� ó���Ѵ�
							</div>
						</div>
						<div class="choice_set choice_off" id="step3_2">
							<div class="choice_dot2"></div>
							<div class="choice_dot_step3">
								�����ֽ�<Br />�Ϻθ� ó���Ѵ�
							</div>
						</div>
						<div class="choice_set choice_off" id="step3_3">
							<div class="choice_dot3"></div>
							<div class="choice_dot_step3A">
								�ְ��� �� ȸ����<Br />������ ����ϰ�<Br />�����Ѵ�
							</div>
						</div>
						<div class="choice_set choice_off" id="step3_4">
							<div class="choice_dot4"></div>
							<div class="choice_dot_step3">
								�ֽ���<Br />�߰��� ����Ѵ�
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="err_tdsize">
						<div id="sel3" class="err_desctiption disp_none">������ �����Ͽ�
							�ּ���!</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="spacer35"></div>
						<div class="btn_common_off btn_prev" id="btn_step3_prev">
							<div></div>
							�ڷ�
						</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="btn_common_off btn_next" id="btn_step3_next">
							����
							<div></div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<!-- ���� Step4 -->
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
						<div class="spacer50"></div> ���� ���� �����ڱ� 1�� ���� ����ٸ�,<br />���� �� �
						���� �����ϰڽ��ϱ�?&nbsp;&nbsp;&nbsp;<img
						src="/finance/images/roboadvisor/img_hand.png" alt="" />
					</td>
				</tr>
				<tr>
					<td>
						<div class="spacer40"></div>
						<div class="choice_set choice_off" id="step4_1">
							<div class="choice_dot1"></div>
							<div class="choice_dot_step4">
								<span>70%</span>�� ����,<br /> <span>30%</span>�����ڻ꿡 ����
							</div>
						</div>
						<div class="choice_set choice_off" id="step4_2">
							<div class="choice_dot2"></div>
							<div class="choice_dot_step4">
								<span>50%</span>�� ����,<br /> <span>50%</span>�����ڻ꿡 ����
							</div>
						</div>
						<div class="choice_set choice_off" id="step4_3">
							<div class="choice_dot3"></div>
							<div class="choice_dot_step4">
								<span>30%</span>�� ����,<br /> <span>70%</span>�����ڻ꿡 ����
							</div>
						</div>
						<div class="choice_set choice_off" id="step4_4">
							<div class="choice_dot4"></div>
							<div class="choice_dot_step4">
								<span>10%</span>�� ����,<br /> <span>90%</span>�����ڻ꿡 ����
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="err_tdsize">
						<div id="sel4" class="err_desctiption disp_none">������ �����Ͽ�
							�ּ���!</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="spacer35"></div>
						<div class="btn_common_off btn_prev" id="btn_step4_prev">
							<div></div>
							�ڷ�
						</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="btn_common_off btn_next" id="btn_step4_next">
							����
							<div></div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<!-- ���� Step5 -->
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
						<div class="spacer50"></div> ���� ���ھ� �߿���<br />� ���ھ���
						�����ϰڽ��ϱ�?&nbsp;&nbsp;&nbsp;<img
						src="/finance/images/roboadvisor/img_hand.png" alt="" />
					</td>
				</tr>
				<tr>
					<td>
						<!-- �ִ���ͷ�/�����ͷ�/�ִ�սǷ� ��ġ png -->
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
						<div id="sel5" class="err_desctiption disp_none">������ �����Ͽ�
							�ּ���!</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="spacer40"></div>
						<div class="btn_common_off btn_prev" id="btn_step5_prev">
							<div></div>
							�ڷ�
						</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="btn_common_off btn_next" id="btn_step5_next">
							����
							<div></div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>




	<!-- ���� ������� Step6 -->
	<div class="test_box1 disp_none" id="step6">
		<div class="container box01">
			<div class="spacer75"></div>
			<table class="result_table">
				<tr>
					<td class="td01">���輺�� ���� ���</td>
				</tr>
				<tr>
					<td class="td02">
						<!-- STEP02 : ���輺�� ���� ��� -->
						<div class="spacer35"></div>
						<div id="result_point">6</div>
						<div class="spacer25"></div>
					</td>
				</tr>
				<tr>
					<td class="td03">
						<div class="btn_common_on retest" id="btn_retest">
							�ٽ� ���� �ϱ�<img src="/finance/images/roboadvisor/btn_re.png" alt="" />
						</div>
						<div class="spacer65"></div>
					</td>
				</tr>
				<tr>
					<td><div class="risk riskA">���� ȸ����</div> <img
						src="/finance/images/roboadvisor/img_left_arrow.png" alt="" />
						<div class="risk riskB">���� �߸���</div> <img
						src="/finance/images/roboadvisor/img_right_arrow.png" alt="" />
						<div class="risk riskC">���� ��ȣ��</div></td>
				</tr>
				<tr>
					<td>
						<div class="spacer5"></div> <input id="result_Range" />
					</td>
				</tr>
				<tr>
					<td>	
					
					
						<div class="spacer40"></div>
						<div class="btn_common_off btnETF" id="btn_step6_next" >
							�ؿ� ���� ETF<br />���� ��� ���ͷ�<br />
							<div class="ETF_Perfomance" id="ETF_GPer">0.0%</div>
							<div class="ETF_Link">
								���ڸ��� ����&nbsp;<img
									src="/finance/images/roboadvisor/btn_next_arrow_off.png" alt="" />
							</div>
						</div>
						<div class="btnETF_term"></div>
						<div class="btn_common_off btnETF" id="btn_step7_next">
							���� ���� ETF<br />���� ��� ���ͷ� <br />
							<div class="ETF_Perfomance" id="ETF_KPer">0.0%</div>
							<div class="ETF_Link">
								���ڸ��� ����&nbsp;<img
									src="/finance/images/roboadvisor/btn_next_arrow_off.png" alt="" />
							</div>
						</div>
						<div class="spacer25"></div>
						<div class="ETF_comment">
							�ؿ� ���� ETF�� ���� ���� ETF�� ����Ǵ� ������ ���� �ٸ� �� ������ �������� ���ǰ� �䱸�˴ϴ�.<br />
							<div class="ETF_sub_comment">
								&nbsp;�� ���� ���� ETF ���� �� �߻��� �Ÿ�����(�����ֽ��� ETF ����) �� ���ؼ� 15.4%��
								���ҵ漼(���հ��� ���)�� �����˴ϴ�. &nbsp;�� �ؿ� ���� ETF ���� �� �߻��� �Ÿ�����(1�� ���� �߻���
								���� ��� ��<br />&nbsp;&nbsp;250���� �⺻ ����)�� ���ؼ� 22%�� �絵�ҵ漼(�и�����)��
								�����˴ϴ�. &nbsp;�� ���� ���� ETF�� �ؿ� ���� ETF���� �߻��� �й�ݿ� ���ؼ��� ��� 15.4%��
								���ҵ漼(���հ��� ���)�� �����˴ϴ�.
							</div>
							�ؿ� ���� ETF ���� ��, ȯ�� ������ ���� �߰����� ȯ���� �Ǵ� ȯ������ �߻��� �� �ֽ��ϴ�.
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>


	<!-- Step7 �� ���輺���׽�Ʈ���� ��ư2���׸�ó���� -->
	<!-- STEP02 :  ���ڸ��� ���� -->

	<!-- ���ڸ������� Step8 -->
	<div class="test_box1 disp_none" id="step8">
		<div class="container box01">
			<div class="spacer75"></div>
			<table class="table_plan1">
				<tr>
					<td class="table_plan_td1">���ڸ����� �����Դϱ�?</td>
				</tr>
				<tr>
					<td>
						<div class="spacer45"></div>
						<div class="choice_plan_set img01 choiceplan_off" id="step8_1">
							<div class="choice_dot1"></div>
							<div class="choice_dot_plan">�����ڱ� ����</div>
							<div class="choice_dot_planA">
								��ǥ�ϴ� �ݾ� ����<br />�����ڱ��� �����ϴ� ���
							</div>
						</div>
						<div class="choice_plan_set img02 choiceplan_off" id="step8_2">
							<div class="choice_dot2"></div>
							<div class="choice_dot_plan">�繫��ǥ �޼�</div>
							<div class="choice_dot_planB">
								���� ����, �ڳ� ������ ��<br />�繫��ǥ�� ���� �����ϴ� ���
							</div>
						</div>
						<div class="choice_plan_set img03 choiceplan_off" id="step8_3">
							<div class="choice_dot3"></div>
							<div class="choice_dot_plan">&nbsp;&nbsp;&nbsp;���� ����</div>
							<div class="choice_dot_planC">
								������ ���� �ʿ���<br />���� ������ ���� �����ϴ� ���
							</div>
						</div>
						<div class="spacer30"></div>
					</td>
				</tr>
				<tr>
					 <td><div class="plan_name">
							�� ��Ʈ�������� �̸��� �Է��ϼ���.<br /> <input type="text" id="txt_plan"
								class="txtplan" maxlength="20" placeholder="��Ʈ������ �̸� �Է�" />
						</div>
						<div class="err_desctiption" id="txt_plan_err"></div></td>  -
				</tr>
				<tr>
					<td>
						<div class="spacer35"></div>
						<div class="btn_common_off btn_prev" id="btn_step8_prev">
							<div></div>
							�ڷ�
						</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="btn_common_off btn_next" id="btn_step8_next">
							����
							<div></div>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<!-- �繫��ǥ�޼� Step9 -->
	<!-- �繫��ǥ�޼� / ���𼳰� -->
	<div class="test_box1 disp_none" id="step9">
		<div class="container box01">
			<div class="spacer75"></div>
			<table class="table_plan2">
				<tr>
					<td class="table_plan_td1" id="plantitle">�繫��ǥ�޼�</td>
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
									���� ���̴� ���Դϱ�?<br /> <input type="text" id="txt_NowAge"
										name="txt_NowAge" maxlength="3" placeholder="19�� �̻� ���� �Է�"
										data-a-sign="��" data-p-sign="s" data-m-dec="0" />
									<div class="err_desctiption" id="txt_NowAge_err"></div>
									<div class="spacer5"></div>
								</div>
								<div id="targetplan2" class="disp_none">
									���� ���� ���̴� �����Դϱ�?<br /> <input type="text"
										id="txt_ForecastRetire" name="txt_ForecastRetire"
										maxlength="3" value="60" placeholder="45�� �̻� ���� �Է�"
										data-a-sign="��" data-p-sign="s" data-m-dec="0" />
									<div class="err_desctiption" id="txt_ForecastRetire_err"></div>
									<div class="spacer5"></div>
								</div>
								<div id="targetplan3" class="disp_none">
									������ ���̴� ������ �����Ͻʴϱ�?<br /> <input type="text" id="txt_Life"
										name="txt_Life" maxlength="3" value="90"
										placeholder="65�� �̻� ���� �Է�" data-a-sign="��" data-p-sign="s"
										data-m-dec="0" />
									<div class="err_desctiption" id="txt_Life_err"></div>
									<div class="spacer5"></div>
								</div>
								<div id="targetplan4" class="disp_none">
									���� �� ��ǥ �� �ҵ��� ���Դϱ�?<br /> <input type="text"
										id="txt_TargetPriceRetire" name="txt_TargetPriceRetire"
										placeholder="30���� �̻� �ݾ� �Է�" data-a-sign="����" data-p-sign="s"
										data-m-dec="0" />
									<div class="err_desctiption" id="txt_TargetPriceRetire_err"></div>
									<div class="spacer5"></div>
								</div>
								<div>
									�ʱ� ���ڱݾ��� ���Դϱ�?<br /> <input type="text"
										id="txt_initInvestPrice" name="txt_initInvestPrice"
										placeholder="100���� �̻� �ݾ� �Է�" data-a-sign="����" data-p-sign="s"
										data-m-dec="0" />
									<div class="err_desctiption" id="txt_initInvestPrice_err"></div>
									<div class="spacer5"></div>
								</div>
								<div>
									�Ŵ� �󸶸� �߰� ������ �� �ֽ��ϱ�?<br /> <input type="text"
										id="txt_MonthSavePrice" name="txt_MonthSavePrice"
										placeholder="0�� �̻� �ݾ� �Է�" data-a-sign="����" data-p-sign="s"
										data-m-dec="0" />
									<div class="err_desctiption" id="txt_MonthSavePrice_err"></div>
									<div class="spacer5"></div>
								</div>
								<div id="targetplan5" class="disp_none">
									���� �Ⱓ�� ���Դϱ�?<br /> <input type="text" class="txtYear"
										id="txt_InvestTerm" name="txt_InvestTerm"
										placeholder="2�� �̻� �Է�" data-a-sign="��" data-p-sign="s"
										data-m-dec="0" /> <input type="text" class="txtMonth"
										id="txt_InvestTermMon" name="txt_InvestTermMon"
										placeholder="���� �Է�" data-a-sign="����" data-p-sign="s"
										data-m-dec="0" />
									<div class="err_desctiption" id="txt_InvestTerm_err"></div>
									<div class="spacer5"></div>
								</div>
								<div id="targetplan6" class="disp_none">
									�޼� ��ǥ �ݾ��� ���Դϱ�?<br /> <input type="text" id="txt_TargetPrice"
										name="txt_TargetPrice" placeholder="100���� �̻� �ݾ� �Է�"
										data-a-sign="����" data-p-sign="s" data-m-dec="0" />
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
							�ڷ�
						</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<div class="btn_common_off btn_next" id="btn_step9_next">
							����
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
					title="Free Twitter Bootstrap WordPress Themes and HTML templates">WBAB Project</a>.
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
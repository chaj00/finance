<%@page import="product.dto.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<%
	ArrayList<ProductDTO> prdlist = (ArrayList<ProductDTO>)request.getAttribute("productlist"); 
	ArrayList<String> opNamelist = (ArrayList<String>)request.getAttribute("opNamelist");
	%>
<link rel="stylesheet" href="/finance/common/css/bootstrap.css"/>	
<link rel="stylesheet" 	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<link rel="stylesheet" href="/finance/common/css/font-awesome.css"/>
<link rel="stylesheet" href="/finance/common/css/build.css"/>
<link rel="stylesheet" href="/finance/common/css/bootstrap.css"/>
<script type="text/javascript">
	var xhr;
	$(document).ready(function(){ 
	    $("#fund1All").change(function(){
	      $(".chk1").prop('checked', $(this).prop("checked"));
	      });
	    $("#fund2All").change(function(){
		      $(".chk2").prop('checked', $(this).prop("checked"));
		      });
	    $("#fund3All").change(function(){
		      $(".chk3").prop('checked', $(this).prop("checked"));
		      });
	    $("#fund4All").change(function(){
		      $(".chk4").prop('checked', $(this).prop("checked"));
		      });
	    $("#fund5All").change(function(){
		      $(".chk5").prop('checked', $(this).prop("checked"));
		      });
	    $("#fund6All").change(function(){
		      $(".chk6").prop('checked', $(this).prop("checked"));
		      });
	    $("#fund7All").change(function(){
		      $(".chk7").prop('checked', $(this).prop("checked"));
		      });
	    $("#fund8All").change(function(){
		      $(".chk8").prop('checked', $(this).prop("checked"));
		      });
	   
		    
	});
	function checkSelectedValue(){
		alert("����");
		var classify = [];
		var type = [];
		var prdate = [];
		var scale = [];
		var profit = [];
		var charge = [];
		var std = [];
		var opname =[];
		
    	$("input[name=ForgnSectCd]:checked").each(function(){
    		classify.push($(this).val());
    		alert("TEST"+$(this).val());
    	});
    	$("input[name=FundInvstTypeCd]:checked").each(function(){
    		type.push($(this).val());
    		//alert(chk2Val);
    	}); 
    	$("input[name=SetPeriodMM]:checked").each(function(){
    		prdate.push($(this).val());
    		//alert(chk3Val);
    	}); 
    	$("input[name=kfrEstabAmUk]:checked").each(function(){
    		scale.push($(this).val());
    		//alert(chk4Val);
    	}); 
    	$("input[name=Yield]:checked").each(function(){
    		profit.push($(this).val());
    		//alert(chk5Val);
    	}); 
    	$("input[name=TotRwrt]:checked").each(function(){
    		charge.push($(this).val());
    		//alert(chk6Val);
    	});
    	$("input[name=StdGrade]:checked").each(function(){
    		std.push($(this).val());
    		//alert(chk6Val);
    	}); 
    	$("input[name=OperCoCdList]:checked").each(function(){
    		opname.push($(this).val());
    		//alert(chk6Val);
    	}); 
    	
    	
    	
    	alert("classify :"+classify);
    	alert("type :"+type);
    	alert("prdate :"+prdate);
    	alert("scale :"+scale);
    	alert("profit :"+profit);
    	alert("charge :"+charge);
    	alert("std :"+std);
    	alert("opname :"+opname);
    	runAjax(classify,type,prdate,scale,profit,charge,std,opname)
   	}
	
	function runAjax(classify,type,prdate,scale,profit,charge,std,opname){
		alert("test");
	 	xhr=new XMLHttpRequest();
		xhr.onreadystatechange=finfinanceSearchs;
		xhr.open("GET", "/finance/searchPrd2.do?classify="+classify+"&type="+type
				+"&prdate="+prdate+"&scale="+scale+"&profit="+profit+"&charge="+charge
				+"&std="+std+"&opname="+opname,true);
	/* 	xhr.open("GET", "/finance/searchPrd2.do?classify="+classify+"&type="+type
				+"&prdate="+prdate+"&scale="+scale+"&profit="+profit+"&charge="+charge
				+"&std="+std+"&opname="+opname+"&classify2="+classify2,true); */
		xhr.send(); 
	}
	
 	function finfinanceSearchs(){
 		var prd;
 		alert("����");
 		var text;
 		if(xhr.readyState==4 && xhr.status==200) {
 			prd =JSON.parse(xhr.responseText);
 			prdView(prd);
 		}
 	}
 	
 	function prdView(prd){
 		var prdCount = prd.length;
 		alert(prdCount)
 		alert(prd[0].title);
 		alert(prd[1].title);
 		alert(prd[2].title);
 		alert(prd[3].title);
		var strHtml='';
 		for (var i = 0; i<prdCount; i++){

 			strHtml +='<tr>';
 			strHtml +='		<td>';
 			strHtml +='			<div class = "checkbox">';
 			strHtml +='    			<input type="checkbox" name="compareChk" id="compareChk" value=" " title="">'		
 			strHtml +='			</div>';
 			strHtml +='		</td>';
 			strHtml +='		<td class="prd">';
 			strHtml +='			<p class="title">';
 			strHtml +='				<a href="">'+prd[i].title+'</a>';
 			strHtml +='			</p>';
 			strHtml +='			<ul class="fund-details">';
 			strHtml +='				<li>';
 			strHtml +='					<dl>';
 			strHtml +='						<dt>������</dt>';
 			strHtml +='						<dd>'+prd[i].prdate+'</dd>';
			strHtml +='					</dl>';
			strHtml +='				</li>';
			strHtml +='				<li>';
			strHtml +='					<dl>';	
			strHtml +='						<dt>����</dt>';
 			strHtml +='						<dd>'+prd[i].type+'</dd>';
			strHtml +='					</dl>';	
			strHtml +='				</li>';
			strHtml +='				<li class ="bul">';
			strHtml +='					<dl class="bold">';	
			strHtml +='						<dt>�Ѽ�����</dt>';
 			strHtml +='						<dd>'+prd[i].scale+'</dd>';
			strHtml +='					</dl>';	
			strHtml +='				</li>';
			strHtml +='				<li>';
			strHtml +='					<dl>';	
			strHtml +='						<dt>����</dt>';
 			strHtml +='						<dd>'+prd[i].opname+'</dd>';
			strHtml +='					</dl>';	
			strHtml +='				</li>';
			strHtml +='				<li class="bul">';
			strHtml +='					<dl class="bold">';	
			strHtml +='						<dt>�Ѻ���</dt>';
 			strHtml +='						<dd>'+prd[i].charge+'</dd>';
			strHtml +='					</dl>';	
			strHtml +='				</li>';	
			strHtml +='				<li class="bul">';
			strHtml +='					<dl class="bold">';	
			strHtml +='						<dt>������</dt>';
 			strHtml +='						<dd>'+prd[i].std+'</dd>';
			strHtml +='					</dl>';	
			strHtml +='				</li>';	
			strHtml +='			</ul>';	
			strHtml +='		</td>';
			strHtml +='		<td class="prd">';	
			strHtml +='			<em class="up">'+prd[i].oneprofit+'%</em>';
			strHtml +='		</td>';
			strHtml +='		<td class="prd">';	
			strHtml +='			<em class="up">'+prd[i].threeprofit+'%</em>';
			strHtml +='		</td>';
			strHtml +='		<td class="prd">';	
			strHtml +='			<em class="up">'+prd[i].sixprofit+'%</em>';
			strHtml +='		</td>';
			strHtml +='		<td class="prd">';	
			strHtml +='			<em class="up">'+prd[i].twelveprofit+'%</em>';
			strHtml +='		</td>';
			strHtml +='	</tr>';
   
 		}
		$("#bodyMutuelList").html(strHtml);
 	}
 	
 	
 	function doSmartSearchList(){
 		var schText=$("#SearchText").val();
 		
 		opnSearchAjax(schText);
 	}
 	
 	function opnSearchAjax(schText){
 		alert("���Դ�"+schText);
 		xhr=new XMLHttpRequest();
		xhr.onreadystatechange=finfinanceSearchs;
		xhr.open("GET", "/finance/ProductSearchOpnameServlet.do?opname="+schText,true);
		xhr.send(); 
 			
 	}
	</script>
	
	<style type="text/css">
	
	table.gridtable {
		font-family: verdana,arial,sans-serif;
		font-size:11px;
		color:#333333;
		border-width: 1px;
		border-color: #f2f2f2;
		border-collapse:separate;
		margin-bottom: 20px;
		display: block;
		
		}
	table.gridtable th {
		border-width: 1px;
		padding-right:8px;
		border-style: solid;
		border-color: #666666;
		background-color: inherit;
		text-align: center;
		
	}
	table.gridtable td {
		border-width: 1px;
		border-style: solid;
		padding-right:40px;
		border-color: #666666;
		background-color: #ffffff;
		height: 100px;
		overflow: auto;
		
    	
	}
	
	.scl  {
		height: 800px;
		
    	
	}
	
	
  

	
</style>
</head>
<body>
<div id="wrap">
    <!-- Header -->


<div class="top_notice" data-role="common-ui-notice-top">
</div>
    <!-- // Header -->
    <!-- Container -->
    <div id="container">
        <!-- Contents -->
        <div id="contents" class="finance">


            <h1>Web based advisor</h1>

            <ul class="tab-type">
                <li id="tab_li1"><a href="#" id="tab_header1" onclick="showTab(1);">�ݵ�</a></li>
                <li id="tab_li2"><a href="#" id="tab_header2" onclick="showTab(2);">ELS/DLS</a></li>
                <li id="tab_li3"><a href="#" id="tab_header3" onclick="showTab(3);">ä��</a></li>
                <li id="tab_li4"><a href="#" id="tab_header4" onclick="showTab(4);">�ＺPOP��緦</a></li>
            </ul>


            <div id="tab_content1">




 <form name="frm" id="frm" method="post" onsubmit="return false;">
 <div class="search fund chking">
     <fieldset>
     <legend>�ݵ�˻�</legend>
         <input type="text" name="SearchText" id="SearchText"  value="" title="�ݵ��">
         <input type="hidden" name="YieldMM" id="YieldMM"  value="3" title="�ݵ��">
         <a href="javascript:doSmartSearchList('1');" class="btn">�ݵ�˻�</a>
         <dl id="dlKeyword">
         </dl>
     </fieldset>
     <hr>
    
     <table class="gridtable">
     <caption><strong>�ݵ� �˻� ���� ����</strong></caption>
         <thead>
             <tr>
                 <th scope="col">�ݵ屸��</th>
                 <th scope="col">�ݵ�����</th>
                 <th scope="col">�����Ⱓ</th>
                 <th scope="col">�Ѽ�����</th>
                 <th scope="col">���ͷ�(3����)</th>
                 <th scope="col">�Ѻ���</th>
                 <th scope="col">������</th>
			     <th scope="col">����</th>	
             </tr>
         </thead>
         <tbody>
             <tr class = "scl" style ="height: 800px">
 				 <td>
					
                     <ul id ="ForgnSect"> <!-- �ݵ屸�� -->
                         <li><input type="checkbox" class="chk1all" name="ForgnSectCdall" id="fund1All" value="1">��ü</li>
                         <li><input type="checkbox" class="chk1" name="ForgnSectCd" id="fund1-1" value="����"> ����</li>
                         <li><input type="checkbox" class="chk1" name="ForgnSectCd" id="fund1-2" value="�ؿ�" >�ؿ�</li>
                     </ul>
                	
                 </td>

                 <td>
                     <ul id ="FundInvstType" > <!-- �ݵ����� -->
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCdAll" id="fund2All" value="">��ü</li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-1" value="�ֽ���">�ֽ���</li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-2" value="�ֽ�ȥ����">�ֽ�ȥ����</li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-3" value="ä��ȥ����">ä��ȥ����</li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-4" value="ä����">ä����</li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-5" value="�ε���">�ε�����</li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-6" value="MMF">MMF</li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-7" value="�Ļ���ǰ">�Ļ���ǰ</li>
                         <li><input type="checkbox" class="chk2" name="FundInvstTypeCd" id="fund2-8" value="��Ÿ">��Ÿ</li>
                     </ul>
                 </td>


                 <td>
                     <ul id ="SetPeriod" > 
                         <li><input type="checkbox" class="chk3" name="SetPeriodMMAll" id="fund3All" value="">��ü</li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-1" value="1-">1���� �̸�</li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-2" value="1-3">1~3����</li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-3" value="3-6">3~6����</li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-4" value="6-12">6����~1��</li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-5" value="12-24">1~2��</li>
                         <li><input type="checkbox" class="chk3" name="SetPeriodMM" id="fund3-6" value="24-">2�� �ʰ�</li>
                     </ul>
                 </td>

                 <td>
                     <ul id ="kfrEstabAm">
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUkAll" id="fund4All" value=""><label for="fund5-1">��ü</label></li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-1" value="10-">10�� �̸�</li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-2" value="10-30">10~30��</li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-3" value="30-50">30~50��</li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-4" value="50-100">50~100��</li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-5" value="100-500"><label for="fund5-6">100~500��</label></li>
                         <li><input type="checkbox" class="chk4" name="kfrEstabAmUk" id="fund4-6" value="50-"><label for="fund5-7">500�� �ʰ�</label></li>
                     </ul>
                 </td>

                 <td>
                     <ul id ="Yld" >
                         <li><input type="checkbox" class="chk5" name="YieldAll" id="fund5All" value="">��ü</li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-1" value="0-">0% �̸�</li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-2" value="0-10">0~10%</li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-3" value="10-20">10~20%</li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-4" value="20-30">20~30%</li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-5" value="30-40">30~40%</li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-6" value="40-50">40~50%</li>
                         <li><input type="checkbox" class="chk5" name="Yield" id="fund5-7" value="50-">50% �ʰ�</li>
                     </ul>
                 </td>

                 <td>
                     <ul id = "Tot">
                     	 <li><input type="checkbox" class="chk6" name="TotRwrtAll" id="fund6All" value="">��ü</li>
                         <li><input type="checkbox" class="chk6" name="TotRwrt" id="fund6-1" value="1-">1% �̸�</li>
                         <li><input type="checkbox" class="chk6" name="TotRwrt" id="fund6-2" value="1-2">1~2%</li>
                         <li><input type="checkbox" class="chk6" name="TotRwrt" id="fund6-3" value="2-3">2~3%</li>
                         <li><input type="checkbox" class="chk6" name="TotRwrt" id="fund6-4" value="3-">3% �ʰ�</li>
                         
                     </ul>
                 </td>
                 
                 <td>
                     <ul id ="Std" >
                    	 <li><input type="checkbox" class="chk7" name="StdGradeAll" id="fund6All" value=""> ��ü</li>    
                         <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-1" value="0.5-">�ſ� ���� ����</li><!--0.5% ������ �� 6���(�ſ� ���� ����)-->
                         <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-2" value="0.5-5">���� ����</li><!-- 0.5~5%�� �� 5���(���� ����)-->
                         <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-3" value="5-10">���� ����</li> <!--  5~10%�� �� 4���(���� ���� -->
                         <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-4" value="10-15">�ټ� ���� ����</li> <!--10~15%�� �� 3���(�ټ� ���� ����)-->
                          <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-5" value="15-25">���� ����</li> <!-- 15~25%�� �� 2���(���� ����)-->
                           <li><input type="checkbox" class="chk7" name="StdGrade" id="fund7-6" value="25-">�ſ� ���� ����</li><!-- ���ͷ� �������� 25%�� �ʰ��� ��� 1���(�ſ� ���� ����)-->
                         
                     </ul>
                 </td>
                 <td style="overflow-y:scroll; height: 100px ">
           
                     <ul class="scroll" id="getOperCoListUl">
                     <li><input type="checkbox" class="chk8" name="OperCoCdListAll" id="fund8All" value="">��ü</li>
                    <%
                     int opNameLen=opNamelist.size();
                     for(int i=0; i<opNameLen;i++){
                    %> 
                  
                      <li><input type="checkbox" class="chk8" name="OperCoCdList" id="fund8-<%=i+1%>" value="<%=opNamelist.get(i).toString()%>">
                       <%=opNamelist.get(i).toString()%></li>
                    	<%} %>		 
                     </ul>
                 </td>
             </tr>
         </tbody>
     </table>
   

     <div class="btn-area">
     <!-- Indicates a successful or positive action -->
		<button type="button" class="btn btn-primary" onclick="javascript:checkSelectedValue();">���� �������� �˻�</button>
        <button type="button" class="btn btn-danger" onclick="javascript:checkSelectedValue();">���� �ʱ�ȭ</button>
     </div>
 </div>

 <input type="hidden" name="RpayDisDtYn" value="N">

 </form>
                <div id="fundListDiv">



<div class="board-paging">
    <p class="total"></p>
    <div class="fr">
        <span class="date" id="maxTrdDtSpan"></span>
        <a href="javascript:initList();" class="refresh">�ʱ�ȭ</a>
    </div>
</div>

<div class="search-code">
	<form>
    <div class="fl">
        <a name="compareBtn" href="#" class="btn4" title="�˾� ���">üũ��</a>
        <label for="fund0-1" class="single"><input type="checkbox" name="fundGrop" id="fund0-1" value="Y">��ǥ�ݵ庸��</label>
        <ul class="sorting2" list_type="��������" >
            <li class="on"><a href="#" class="list">��������</a></li>
            <li><a href="#" class="list2">�ڼ�������</a></li>
        </ul>
    </div>
    </form>
    <div class="fr">
        <ul class="sorting">
            <li class="off" ><a href="#" column="FstSetDt" class="down" title="������������ ����">������</a></li>
            <li class="off"><a href="#" column="fundClasSum" class="down" title="������������ ����">�Ѽ�����</a></li>
            <li class="off"><a href="#" column="TotRwrt" class="up" title="�ø��������� ����">�Ѻ���</a></li>
        </ul>
        <fieldset>
        <legend>�ݵ� ������ ���û���</legend>

            <select name="" id="fundAttr" title="�ݵ�Ӽ� ����">
                <option value="" selected>�ݵ�Ӽ�</option>
                <option value="recomYn">��õ</option>
                <option value="bestYn">�Ǹź���Ʈ</option>
                <option value="newYn">�ű�</option>
                <option value="rankYn">��ŷ</option>
                <option value="themeYn">�׸�</option>
            </select>
            <select id="listRow" name="listRow" title="����Ʈ ���� ����">
	            <option value="10" selected>10����</option>
	            <option value="20" >20����</option>
                <option value="40">40����</option>
                <option value="60">60����</option>
            </select>
            <a href="javascript:goListCnt();" class="btn3" title="�ݵ� �˻���� ����">����</a>
        </fieldset>
    </div>
</div>
<table class="tbl-type fund fsL">
<caption><strong>�ݵ� �˻� ��� ���</strong></caption>
<colgroup>
    <col style="width:3%">
    <col>
    <col style="width:8.5%" span="4">	<!-- 20140615 ���� -->
    <col style="width:13%">
    <col style="width:11%">
</colgroup>
    <thead class="sort">
       
        <tr>
            <th scope="col" class="off"><a column="Yield1M" href="#" class="down" title="������������ ����">1����</a></th>
            <th scope="col" class="off"><a column="Yield3M" href="#" class="down" title="������������ ����">3����</a></th>
            <th scope="col" class="off"><a column="Yield6M" href="#" class="down" title="������������ ����">6����</a></th>
            <th scope="col" class="off"><a column="AnnYield" href="#" class="down" title="������������ ����">1��</a></th>
        </tr>
    </thead>

 
    
</table>
   <div id="bodyList">
    </div>
<div class="btn-area">
    <span class="fl">
        <a name="compareBtn" href="#" class="btn4" title="�˾� ���">üũ��</a>
    </span>
    <div class="pagingNav">
    </div>
</div>




                <div id="mutuelListDiv" style="display:inline;">


</head>

<div class="board-paging">
    <p class="total mutuelTotal"></p>
    <div class="fr">

        <span class="date" id="maxTrdDtSpan"></span>
        <a href="javascript:clearMutuelList();" class="refresh">�ʱ�ȭ</a>
    </div>
</div>

<div class="search-code">
    <div class="fr">
        <ul class="sorting">
            <li class="off"><a column="OPRN_BEGN_DATE" href="#" class="down" title="������������ ����">�Ż�ǰ</a></li>
        </ul>
        <fieldset>
        <legend>�ݵ� ������ ���û���</legend>
            <select id="mListRow" name="listRow" title="����Ʈ ���� ����">
                <option value="20" selected>20����</option>
                <option value="40">40����</option>
                <option value="60">60����</option>
            </select>
            <a href="javascript:goMutuelListCnt();" class="btn3" title="�ݵ� �˻���� ����">����</a>
        </fieldset>
    </div>
</div>

<table class="tbl-type fund">
<caption><strong>�ݵ� �˻� ��� ���</strong></caption>
<colgroup>
    <col>
    <col style="width:11%" span="4">
    <col style="width:13%">
</colgroup>
    <thead class="sort">
        <tr>
            <th scope="col" rowspan="4"><input type="checkbox" name="compareAllChk" id="compareAllChk" value="" title="�ݵ� ��ü ����"></th>
            <th scope="col" rowspan="4" class="off"><a column="FundKrNm" href="#" class="up" title="�ø��������� ����">�ݵ��</a></th>
            <th scope="colgroup" colspan="4">���ͷ�(%)</th>
            <th scope="col" rowspan="2">3���� ������ ����<br>(��)</th>
            <th scope="col" rowspan="2">�ٷΰ���</th>
        </tr>
        <tr>
            <th scope="col" class="off"><a column="Yield1M" href="#" class="down" title="������������ ����">1����</a></th>
            <th scope="col" class="off"><a column="Yield3M" href="#" class="down" title="������������ ����">3����</a></th>
            <th scope="col" class="off"><a column="Yield6M" href="#" class="down" title="������������ ����">6����</a></th>
            <th scope="col" class="off"><a column="AnnYield" href="#" class="down" title="������������ ����">1��</a></th>
        </tr>
    </thead>

    <tbody id="bodyMutuelList">
    <%
          int prdeLen=prdlist.size();
          for(int i=0; i<prdeLen;i++){
        	  ProductDTO prd = prdlist.get(i);
                         
          %> 
    <tr>
    	<td>
    		<div class = "checkbox">
    			<input type="checkbox" name="compareChk" id="compareChk" value=" " title="">
    		</div>
   		</td>
   		 
    	<td class="prd">
    		<p class="title">
    			<a href=""><%=prd.getTitle()%></a>
   			</p>
   			<ul class="fund-details">	
   				<li> 
   					<dl>
   						<dt>������</dt>
   						<dd><%=prd.getPrdate()%></dd>
    					</dl>
				</li>
			 	<li>
					 <dl>
					 	 <dt>����</dt>
				 	 	 <dd><%=prd.getType()%></dd>
			 	 	 </dl>
		 	 	 </li>
	 	 	 	<li class="bul">
	 	 	 		<dl class="bold">
		 	 	 		<dt>�Ѽ�����</dt>
		 	 	 		<dd><%=prd.getScale()%>���</dd>
		 	 	 	</dl>
 			 	</li>
	 			 <li>
 	 	 			 <dl>
	 	 	 			 <dt>����</dt>
	 	 	 			 <dd><%=prd.getOpname()%></dd>
 	 	 			 	</dl>
 			 	</li>
 			 	<li class="bul">
 			 	 	 <dl class="bold">
 			 	 	 	<dt>�Ѻ���</dt>
		 	 	 		<dd><%=prd.getCharge()%>%</dd>
	 	 	 		</dl>
 	 	 		</li>
 	 	 		
 	 	 		<li class="bul">
 			 	 	 <dl class="bold">
 			 	 	 	<dt>������</dt>
		 	 	 		<dd><%=prd.getStd()%>%</dd>
	 	 	 		</dl>
 	 	 		</li>
 	 	 	
 			</ul>
		</td>
	
      	<td class="prd">
            <em class="up"><%=prd.getOneprofit()%>%</em>
        </td>
        <td class="prd">
        	<em class="down"><%=prd.getThreeprofit()%>%</em>
       	</td>
       	<td class="prd">
        	<em class="up"><%=prd.getSixprofit()%>%</em>
       	</td>
       	<td class="prd">
        	<em class="down"><%=prd.getTwelveprofit()%>%</em>
       	</td>
     </tr>
     <%} %>   
   </tbody>
</table>

<div class="btn-area">
    <div class="pagingNav" id="divMutuel"">
    </div>
</div>
                </div>
            </div>

            <div id="tab_content2" style="display:inline;">

            </div>

            <div id="tab_content3" style="display:inline;">

            </div>

            <div id="tab_content4" style="display:inline;">

            </div>

        </div>
        <!-- // Contents -->
    </div>
    <!-- // Container -->
    <!-- Footer -->


    <!-- // Footer -->


<form name="frmFrameCheck" method="post" target="_self">

    <input type="hidden" name="rtnHfnURL" value="/finance/fund/search_cached.pop">

</form>



</body>
</html>
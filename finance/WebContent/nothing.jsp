<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
table.table {
	border-style: groove;
	width: 1000px;
	white-space: nowrap;
	overflow-x: scroll;
}

div.data {
	border-style: groove;
	width: 1000px;
	white-space: nowrap;
	overflow-x: scroll;
}

div.popup_wrap {
	position: fixed;
	top: 0px;
	left: 0px;
	width: 100%;
	height: 100%;
	z-index: 1000;
}

div.popup_cont {
	position: absolute;
	top: 50%;
	left: 50;
	width: 1000px;
	height: 400px;
	margin-left: -200px;
	margin-top: -500px;
}

#popupLayer {
	width: 300px;
	height: 200px;
	position: absolute;
	left: 50%;
	top: 50%;
	margin-left: -100px;
	margin-top: -150px;
	border: 3px double #FF0000;
	background-color: transparent;
}
</style>
</head>
<body>
<div>
<script type="text/javascript">

/* 현재 날짜와 현재 달에 1일의 날짜 객체를 생성합니다. */
var date = new Date(); // 날짜 객체 생성
var y = date.getFullYear(); // 현재 연도
var m = date.getMonth(); // 현재 월
var d = date.getDate(); // 현재 일

    // 현재 년(y)월(m)의 1일(1)의 요일을 구합니다.
var theDate = new Date(y,m,1);
    // 그 날의 요일은?
var theDay = theDate.getDay();

/* 현재 월의 마지막 일을 구합니다. */
    // 1월부터 12월까지의 마지막 일을 배열로 만듭니다.
var last = [31,28,31,30,31,30,31,31,30,31,30,31];
    // 4년마다 있는 윤년을 계산합니다.(100년||400년 주기는 제외)
if (y%4 && y%100!=0 || y%400===0) {
    lastDate = last[1] = 29;
}
    // 현재 월의 마지막 일이 며칠인지 구합니다.
var lastDate = last[m];


/* 현재 월의 달력에 필요한 행의 개수를 구합니다. */
    // theDay(빈 칸의 수), lastDate(월의 전체 일수)
var row = Math.ceil((theDay+lastDate)/7);

 
/* 달력 연도/월을 표기하고 달력이 들어갈 테이블을 작성합니다. */
document.write("<h1>" + y + "." + (m+1) + "</h1>");
    //문자 결합 연산자를 사용해 요일이 나오는 행을 생성합니다.
var calendar = "<table class='calendar_table' border= 1px>";
calendar += "<tr>";
calendar += "<th>일</th>";
calendar += "<th>월</th>";
calendar += "<th>화</th>";
calendar += "<th>수</th>";
calendar += "<th>목</th>";
calendar += "<th>금</th>";
calendar += "<th>토</th>";
calendar += "</tr>";

    // 달력에 표기되는 일의 초기값!
var dNum = 1;
for (var i=1; i<=row; i++) { // 행 만들기
    calendar += "<tr>";
    for (var k=1; k<=7; k++) { // 열 만들기
        // 월1일 이전 + 월마지막일 이후 = 빈 칸으로!
        if(i===1 && k<=theDay || dNum>lastDate) {
            calendar += "<td> &nbsp; </td>";
        } else {
            calendar += "<td>" + dNum + "</td>";
            dNum++;
        }
    }
    calendar += "</tr>";
}
    // 문서 출력!
document.write(calendar);
</script>

</div>
<!-- 	<div id="popupLayer">팝업 정중앙에 띄우기 예제</div>

	<div id="content">
		<div class="popup_wrap">
			<div class="popup_cont">
			</div>
		</div>
	</div> -->
	<!-- 
	<div class="data">
		<table class="table">
			<thead>
				<tr>
					<th>#</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Username</th>
					<th>Username</th>

					<th>First Name</th>
					<th>Last Name</th>
					<th>Username</th>
					<th>Username</th>

					<th>First Name</th>
					<th>Last Name</th>
					<th>Username</th>
					<th>Username</th>

					<th>First Name</th>
					<th>Last Name</th>
					<th>Username</th>
					<th>Username</th>

					<th>First Name</th>
					<th>Last Name</th>
					<th>Username</th>
					<th>Username</th>

					<th>First Name</th>
					<th>Last Name</th>
					<th>Username</th>
					<th>Username</th>

					<th>First Name</th>
					<th>Last Name</th>
					<th>Username</th>
					<th>Username</th>

					<th>First Name</th>
					<th>Last Name</th>
					<th>Username</th>
					<th>Username</th>

				</tr>
			</thead>
			<tbody>
				<tr>
					<td>자산</td>
					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td>@mdo</td>
				</tr>
				<tr>
					<td>부채</td>
					<td>Jacob</td>
					<td>Thornton</td>
					<td>@fat</td>
					<td>@fat</td>
				</tr>
				<tr>
					<td>매출액</td>
					<td>Larry</td>
					<td>the Bird</td>
					<td>@twitter</td>
					<td>@twitter</td>
				</tr>
				<tr>
					<td>영업이익</td>
					<td>Larry</td>
					<td>the Bird</td>
					<td>@twitter</td>
					<td>@twitter</td>
				</tr>
				<tr>
					<td>당기순이익</td>
					<td>Larry</td>
					<td>the Bird</td>
					<td>@twitter</td>
					<td>@twitter</td>
				</tr>
				<tr>
					<td>주식총수</td>
					<td>Larry</td>
					<td>the Bird</td>
					<td>@twitter</td>
					<td>@twitter</td>
				</tr>
			</tbody>
		</table>
	</div> -->
</body>
</html>
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

/* ���� ��¥�� ���� �޿� 1���� ��¥ ��ü�� �����մϴ�. */
var date = new Date(); // ��¥ ��ü ����
var y = date.getFullYear(); // ���� ����
var m = date.getMonth(); // ���� ��
var d = date.getDate(); // ���� ��

    // ���� ��(y)��(m)�� 1��(1)�� ������ ���մϴ�.
var theDate = new Date(y,m,1);
    // �� ���� ������?
var theDay = theDate.getDay();

/* ���� ���� ������ ���� ���մϴ�. */
    // 1������ 12�������� ������ ���� �迭�� ����ϴ�.
var last = [31,28,31,30,31,30,31,31,30,31,30,31];
    // 4�⸶�� �ִ� ������ ����մϴ�.(100��||400�� �ֱ�� ����)
if (y%4 && y%100!=0 || y%400===0) {
    lastDate = last[1] = 29;
}
    // ���� ���� ������ ���� ��ĥ���� ���մϴ�.
var lastDate = last[m];


/* ���� ���� �޷¿� �ʿ��� ���� ������ ���մϴ�. */
    // theDay(�� ĭ�� ��), lastDate(���� ��ü �ϼ�)
var row = Math.ceil((theDay+lastDate)/7);

 
/* �޷� ����/���� ǥ���ϰ� �޷��� �� ���̺��� �ۼ��մϴ�. */
document.write("<h1>" + y + "." + (m+1) + "</h1>");
    //���� ���� �����ڸ� ����� ������ ������ ���� �����մϴ�.
var calendar = "<table class='calendar_table' border= 1px>";
calendar += "<tr>";
calendar += "<th>��</th>";
calendar += "<th>��</th>";
calendar += "<th>ȭ</th>";
calendar += "<th>��</th>";
calendar += "<th>��</th>";
calendar += "<th>��</th>";
calendar += "<th>��</th>";
calendar += "</tr>";

    // �޷¿� ǥ��Ǵ� ���� �ʱⰪ!
var dNum = 1;
for (var i=1; i<=row; i++) { // �� �����
    calendar += "<tr>";
    for (var k=1; k<=7; k++) { // �� �����
        // ��1�� ���� + ���������� ���� = �� ĭ����!
        if(i===1 && k<=theDay || dNum>lastDate) {
            calendar += "<td> &nbsp; </td>";
        } else {
            calendar += "<td>" + dNum + "</td>";
            dNum++;
        }
    }
    calendar += "</tr>";
}
    // ���� ���!
document.write(calendar);
</script>

</div>
<!-- 	<div id="popupLayer">�˾� ���߾ӿ� ���� ����</div>

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
					<td>�ڻ�</td>
					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
					<td>@mdo</td>
				</tr>
				<tr>
					<td>��ä</td>
					<td>Jacob</td>
					<td>Thornton</td>
					<td>@fat</td>
					<td>@fat</td>
				</tr>
				<tr>
					<td>�����</td>
					<td>Larry</td>
					<td>the Bird</td>
					<td>@twitter</td>
					<td>@twitter</td>
				</tr>
				<tr>
					<td>��������</td>
					<td>Larry</td>
					<td>the Bird</td>
					<td>@twitter</td>
					<td>@twitter</td>
				</tr>
				<tr>
					<td>��������</td>
					<td>Larry</td>
					<td>the Bird</td>
					<td>@twitter</td>
					<td>@twitter</td>
				</tr>
				<tr>
					<td>�ֽ��Ѽ�</td>
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
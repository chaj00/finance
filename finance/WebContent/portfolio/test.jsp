<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', '10'],
          ['Work',     4],
          ['Eat',      1],
          ['Commute',  4],
          ['Watch TV', 1],

        ]);

        var options = {
        		
        		
          //title: 'My Daily Activities',
          pieHole: 0.3,
          slices: { 0: { color: '#2D7DA4' }, 1: { color: '#6AA42F' }, 2: { color: '#FFBD20' }, 3: { color: '#DB3615' }},
          'legend': { position: 'none' },
          width: 340,
          height: 330,
          pieSliceText: 'percentage',
          fontSize: 20,
          backgroundColor: "#ffffff",
          'is3D': true,
          enableInteractivity: true,
          tooltip: { isHtml: true },
	
          chartArea: {
              left: 20,
              top: 15,
              height: 300,
              width: 300
          }	
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="donutchart" style="width: 500px; height: 400px;"></div>
  </body>
</html>
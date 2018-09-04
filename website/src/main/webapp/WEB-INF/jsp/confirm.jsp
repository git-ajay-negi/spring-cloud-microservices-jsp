<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Training Airlin</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta charset="utf-8"/>
    <link href="/css/main.css" th:href="@{/css/main.css}" rel="stylesheet" media="screen"/>
</head>
<body>
	<nav>
       <ul>
          <li>Training Airline </li>
          <li><a href="/">Search</a></li>
          <li><a href="/search-booking">CheckIn</a></li>
        </ul>
    </nav> 
     <div align="center" class="form-style-8">
     	  <h2>Booking Confirmation</h2>
		  <div  align="center" style="color:green">
			<h3 >${message} </h3>
		  </div>
	</div>
  </body>
</html>
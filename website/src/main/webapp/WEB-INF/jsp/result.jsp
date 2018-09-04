<!DOCTYPE HTML>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns:th="http://www.thymeleaf.org">

<head>
        <script src="webjars/jquery/1.9.1/jquery.min.js"></script>

<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
     
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
        rel="stylesheet">
    <title>Training Airlin</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta charset="utf-8"/>
    <link href="/css/main.css" th:href="@{/css/main.css}" rel="stylesheet" media="screen"/>
<script>
    function rowClicked(value) {
    	alert(value);
        //location.href = "/search?param=" + value;
    	location.href = "/search;
    }
</script>    
</head>
<body>
	<nav>
       <ul>
          <li>BrownField Airline </li>
          <li><a href="/">Search</a></li>
           <li><a href="/search-booking">CheckIn</a></li>
        </ul>
    </nav> 
  <div align="center" class="form-style-8">
	<h2>Available Flights</h2>
		
	
	<table class="table table-striped">
	<thead>
        <tr>
            <th>#</th>
            <th>Flight</th>
            <th>From</th>
            <th>To</th>
            <th>Date</th>
            <th>Fare</th>
                        <th>Book</th>
            
        </tr>
    </thead>
	
	 <tbody>
	 <c:forEach items="${uidata.flights}" var="flight">
		<tr >
		  	 <td >${flight.id}</td>
		  	 <td >${flight.flightNumber}</td>
		  	 <td >${flight.origin}</td>
		  	 <td >${flight.destination}</td>
		  	 <td >${flight.flightDate}</td>
		  	 <td >${flight.fares.fare}</td>
 	 		 <td>
 	 		 <a href="/book/${flight.flightNumber}/${flight.origin}/${flight.destination}/${flight.flightDate}/${flight.fares.fare}">Book</a>
 	 		 </td>
		</tr>
		</c:forEach>
		 </tbody>
	</table>
    
    </div>
</body>
</html>
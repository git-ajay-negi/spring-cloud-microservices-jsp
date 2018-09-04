<!DOCTYPE HTML>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Infogain Training !!</title>
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
	<h2>Booking Search</h2>
    <form:form action="/search-booking-get" modelAttribute="uidata" method="post">
    	<table>
    	  <tr> <td>Booking Reference</td><td> <form:input type="text" name="bookingid" path="bookingid" value="${uidata.bookingid}" /> </td></tr>	     
	      <tr> <td></td><td><input type="submit" value="Search" /> </td></tr>	
	   </table>
	   <c:if test="${uidata.selectedFlight != null}">
	    <div >
	  <h3>
	   	<table>
		<tr>
		  	 <td >${uidata.selectedFlight.flightNumber}</td>
		  	 <td >${uidata.selectedFlight.origin}</td>
		  	 <td >${uidata.selectedFlight.destination}</td>
		  	 <td >${uidata.selectedFlight.flightDate}</td>
		 
		  	 <td>${uidata.passenger.firstName}</td>
		  	 <td>${uidata.passenger.lastName}</td>

	 		 <td> 	 		 <a href="/checkin/${uidata.selectedFlight.flightNumber}/${uidata.selectedFlight.origin}/${uidata.selectedFlight.destination}/${uidata.selectedFlight.flightDate}/${uidata.selectedFlight.fares.fare}/${uidata.passenger.firstName}/${uidata.passenger.lastName}/${uidata.passenger.gender}/${uidata.bookingid}">CheckIn</a>
	 		 
 	 		 </td>
		</tr>
	</table>
	</h3>
	   </div>
	   </c:if>
   </form:form>
      </div>
</body>
</html>
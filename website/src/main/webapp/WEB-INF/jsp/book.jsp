<!DOCTYPE HTML>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Infogain Training!!</title>
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
	<h2>Selected Flight</h2>
 <form:form action="/confirm"  modelAttribute="uidata"  method="post">
 	<h3>
 	<table>
 
     <tbody>
		<tr>
	   	 <td>
		   	 <span >${uidata.selectedFlight.flightNumber}</span>
		   	 <form:input type="hidden" path="selectedFlight.flightNumber" value="${uidata.selectedFlight.flightNumber}"/>
	   	 </td>
	  	 <td>
	  	 	<span >${uidata.selectedFlight.origin}</span>
	  		 <form:input type="hidden" path="selectedFlight.origin" value="${uidata.selectedFlight.origin}"/>
	  	 </td>
	  	 <td>
	  	 	<span >${uidata.selectedFlight.destination}</span>
	  	 	<form:input type="hidden" path="selectedFlight.destination" value="${uidata.selectedFlight.destination}"/>
	  	 </td>
	  	 <td>
	  		 <span >${uidata.selectedFlight.flightDate}</span>
	  	 	<form:input type="hidden" path="selectedFlight.flightDate" value="${uidata.selectedFlight.flightDate}"/>
	  	 </td>
	  	 <td>
	  	 	<span >${uidata.selectedFlight.fares.fare}</span>
	  	 	<form:input type="hidden" path="selectedFlight.fares.fare" value="${uidata.selectedFlight.fares.fare}"/>
	  	 </td>
	 	</tr>
	 	 </tbody>
	</table>
	</h3>
   	<table>
    	  <tr> <td>First Name </td><td> <form:input type="text" path="passenger.firstName" value="${uidata.passenger.firstName}" /> </td></tr>	     
	      <tr> <td>Last Name </td><td><form:input type="text" path="passenger.lastName" value="${uidata.passenger.lastName}" /></td></tr>	
	      <tr> <td>Gender</td> 
	      	<td>
	      		<form:select path="passenger.gender"  >
					  <form:option value="Male">Male</form:option>
					  <form:option value="Female">Female</form:option>
				</form:select>
	      	</td>
	      </tr>	
	      <tr> <td><input type="submit" value="Confirm" /> </td></tr>	
	   </table>
    </form:form>
  </div>
</body>
</html>
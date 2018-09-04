<!DOCTYPE HTML>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
          <li>ABC Training Airline </li>
          <li><a href="/">Search</a></li>
           <li><a href="/search-booking">CheckIn</a></li>
        </ul>
    </nav> 
      <div align="center" class="form-style-8">
	<h2>Flight Search</h2>
    <form:form  action="/search" modelAttribute="uidata.searchQuery" method="post">
    	<table>
	      <tr> <td>traveling from </td> <td> <form:input type="text" name="origin"  path="origin" value="${uidata.searchQuery.origin}" /></td></tr> 
        <tr> <td>going to </td> <td> <form:input type="text"  name="destination" path="destination"  value="${uidata.searchQuery.destination}" /></td></tr>	
	      <tr> <td>planning on </td> <td> <form:input type="text"  name="flightDate" path="flightDate"  value="${uidata.searchQuery.flightDate}" /></td></tr>	
	      <tr> <td> </td><td><form:button name="submit" >Submit this</form:button> </td></tr>	
	   </table>
    </form:form>
    </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="model.weatherBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<body>

<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="javascript:void(0)">Logo</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="mynavbar">
      <form class="d-flex" action="OWservlet" methoed="get">
        <input class="form-control me-2" type="text" name="city" placeholder="City">
        <input class="form-control me-2" type="text" name="country" placeholder="Country">
        <button class="btn btn-primary" type="submit" value="go">Search</button>
      </form>
    </div>
  </div>
</nav>
<%
	weatherBean wBean = (weatherBean) request.getAttribute("wBean");
	%>

<div class="card" style="width: 18rem;">
  <img class="card-img-top" src="<%= wBean.getImg() %>" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><% out.print(wBean.getCityStr()); %></h5>
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item"><% out.print("The weather in "+ wBean.getCityStr()); %></li>
    <li class="list-group-item"><% out.print("Temerature: " + Math.round(wBean.getTemprature()) +"C"); %></li>
    <li class="list-group-item"><% out.print(wBean.getCloudsStr()); %></li>
    <li class="list-group-item"><% out.print("Humidity: " + wBean.getHumiditystr()); %></li>
    <li class="list-group-item"><% out.print(wBean.getDateStr()); %></li>
  </ul>
</div>



</body>
</html>
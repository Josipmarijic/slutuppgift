<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    Cookie cookie = null;
    Cookie ck[] = request.getCookies();
    for (int i = 0; i < ck.length; i++) {
    	cookie = ck[i];
    	
    	if (cookie.getName().equals("city")) {
    		
    		
    		RequestDispatcher rd = request.getRequestDispatcher("AddACookie");
    		rd.forward(request, response);
    		
    		
    	}
    }
   
   
   
  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Main page</title>
</head>
<link href=”css/bootstrap.min.css” rel=”stylesheet” type=”text/css” />
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

<h1 class="h1">What's the weather like?</h1>





   
    
    
    
<script type=”text/javascript” src=”js/bootstrap.min.js”></script>
</body>
</html>
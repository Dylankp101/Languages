<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Languages</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

</head>
<body>


<div class="container table-responsive">

  <div class="row">
    <div class="col-sm">
    		<table class="table">
			  <thead>
			    <tr>
			      <th scope="col">#</th>
			      <th scope="col">Language</th>
			      <th scope="col">Creator</th>
			      <th scope="col">Version</th>
			      <th scope="col">Action</th>
			    </tr>
			  </thead>
			  <tbody>
			  <c:forEach items="${languages}" var="language">
 			    <tr>
			      <th scope="row"><c:out value="${language.id}"/></th>
			      <td><a href="/languages/${language.id}"><c:out value="${language.name}"/></a></td>
			      <td><c:out value="${language.creator}"/></td>
			      <td><c:out value="${language.version}"/></td>
			     <td><a href="/languages/${language.id}/edit">EDIT</a>/<a href="/delete/${language.id}">DELETE</a></td>
			    </tr>
			    </c:forEach> 
			  </tbody>
			</table>
    </div>
  </div>
  
  <div class="row">
      <div class="col-sm">
      <form:form action="/languages/create" method="post" modelAttribute="language">
      
      <div class="input-group mb-3">
  			<span class="input-group-text" id="basic-addon1">Language</span>
  			<input name="name" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
		</div>
		<div class="input-group mb-3">
  			<span class="input-group-text" id="basic-addon1">Creator</span>
  			<input name="creator" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
		</div>
		<div class="input-group mb-3">
  			<span class="input-group-text" id="basic-addon1">Version</span>
  			<input name="version" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
		</div>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
    </form:form>  
  </div>
  
  
</div>





<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>

</body>
</html>
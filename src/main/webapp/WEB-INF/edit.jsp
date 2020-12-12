<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ page isErrorPage="true" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

</head>
<body>



<div class="container">

   <div class="row">
         <form:form action="/languages/${language.id}/update " method="post" modelAttribute="language">
   <h5><a href="">EDIT</a>/<a href="">DELETE</a></h5>
      <div class="col-sm">
      <div class="input-group mb-3">
  			<span class="input-group-text" id="basic-addon1">Language</span>
  			<input name="name" type="text" class="form-control" placeholder="<c:out value="${language.name}"/> " aria-label="Username" aria-describedby="basic-addon1">
		</div>
		<div class="input-group mb-3">
  			<span class="input-group-text" id="basic-addon1">Creator</span>
  			<input name="creator" type="text" class="form-control" placeholder="<c:out value="${language.creator}"/>" aria-label="Username" aria-describedby="basic-addon1">
		</div>
		<div class="input-group mb-3">
  			<span class="input-group-text" id="basic-addon1">Version</span>
  			<input name="version" type="text" class="form-control" placeholder="<c:out value="${language.version}"/>" aria-label="Username" aria-describedby="basic-addon1">
		</div>
    </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form:form>
    <a href="/delete/${language.id}">DELETE</a>
    <a href="/languages">DashBoard</a>
  </div>
</div>






<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>

</body>
</html>
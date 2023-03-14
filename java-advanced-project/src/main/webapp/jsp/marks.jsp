<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <title>Marks</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">


</head>
<body class="security-app">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <a class="navbar-brand" href="#">Project</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item active">
                <a class="nav-link" href="/?lang=${param.lang}"><spring:message code="nav.home" /> <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="marks?userName=${pageContext.request.userPrincipal.name}&lang=${param.lang}"><spring:message code="nav.marks" /></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/universities?lang=${param.lang}"><spring:message code="nav.universities" /></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"></a>
              </li>
              <li class="nav-item">
                <a class="nav-link disabled" href="/login?logout&lang=${lang}"><spring:message code="nav.logout" /></a>
              </li>
            </ul>
          </div>
        </nav>


    <div class="ml-3">
        <h2 class="mb-1"><spring:message code="marks.greeting" /></h2>
        <h6><spring:message code="marks.addMarkText" /> <a href="/registerMark?username=${pageContext.request.userPrincipal.name}&lang=${param.lang}"><spring:message code="marks.addMarkLink" /></a></h6>
    </div>
    <div class="d-flex flex-wrap">
           <c:forEach items="${marks}" var="currentSubject">
              <div class="card mr-2 mb-2" style="width: 18rem;">
                <div class="card-body">
                  <h5 class="card-title">${currentSubject.name}</h5>
                  <h1 class="card-title">${currentSubject.points}</h1>
                </div>
              </div>
           </c:forEach>

        </div>



    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
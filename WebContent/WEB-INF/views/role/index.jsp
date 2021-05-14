<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import="cybersoft.java11.crm.utils.UrlConst"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Role Dashboard</title>
</head>
<body>
	<table class="table">
      <thead>
        <tr class="row text-center">
          <th class="col-3">Name</th>
          <th class="col-5">Description</th>
          <th class="col-3">Function</th>
        </tr>
      </thead>
      <tbody>
      	<c:if test="${roles.size()==0}">
      		<tr class="row text-center">
      			<td>There is no any role !!!</td>
      		</tr>
      	</c:if>
	  	<c:forEach var="role" items="${roles}">
	  		<tr class="row text-center">
	          <td class="col-3">${role.name}</td>
	          <td class="col-5">${role.description}</td>
	          <td class="col-3">
	            <a class="btn btn-primary" href="<c:url value="${UrlConst.ROLE_UPDATE}"/>?id=${role.getId}">
	              <i class="fa fa-edit"></i>
	            </a>
	            <a href="<c:url value="${UrlConst.ROLE_DELETE}"/>?id=${role.getId}" class="btn btn-danger">
	              <i class="fa fa-trash" aria-hidden="true"></i>
	            </a>
	          </td>
	        </tr>
	  	</c:forEach>      
      </tbody>
    </table>
</body>
</html>
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
	<div class="container">
    <h1 class="p-4 text-center text-uppercase text-primary">Role Dashboard</h1>
    <div class="mb-2 mr-2">
      <a class="btn btn-danger" href="<c:url value="${UrlConst.ROLE_ADD}"/>">Add Role</a>
    </div>
	
    <table class="table">
      <thead>
        <tr class="row text-center">
          <th class="col-3">Name</th>
          <th class="col-2">Description</th>
          <th class="col-2"></th>
          <th class="col-2"></th>
          <th class="col-3">Function</th>
        </tr>
      </thead>
      <tbody>
      	<c:if test="${roles.size()==0}">
      		<tr class="row text-center">
      			<td>There is no any user !!!</td>
      		</tr>
      	</c:if>
	  	<c:forEach var="role" items="${roles}">
	  		<tr class="row text-center">
	          <td class="col-3">${role.name}</td>
	          <td class="col-2">${role.description}</td>
	          <td class="col-2">
	          </td>
	          <td class="col-2"></td>
	          <td class="col-3">
	            <a class="btn btn-primary" href="<c:url value="${UrlConst.ROLE_UPDATE}"/>?roleId=${role.id}">
	              <i class="fa fa-edit"></i>
	            </a>
	            <a href="<c:url value="${UrlConst.ROLE_DELETE}"/>?username=${role.id}" class="btn btn-danger">
	              <i class="fa fa-trash" aria-hidden="true"></i>
	            </a>
	          </td>
	        </tr>
	  	</c:forEach>      
      </tbody>
    </table>
  </div>
</body>
</html>

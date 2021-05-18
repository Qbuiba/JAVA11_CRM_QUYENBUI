<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@page import="cybersoft.java11.crm.utils.PathConst"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.List" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ page import="cybersoft.java11.crm.model.User" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Dashboard</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" />
</head>

<body>
  <div class="container">
    <h1 class="p-4 text-center text-uppercase text-primary">User Dashboard</h1>
    <div class="mb-2 ml-2">
      <a class="btn btn-danger" href="<c:url value="${PathConst.USER_ADD}"/>">Add User</a>
      <a href="" class="btn btn-warning">Search</a>
    </div>
	
    <table class="table">
      <thead>
        <tr class="row text-center">
          <th class="col-3">Full name</th>
          <th class="col-2">Username</th>
          <th class="col-2">Role</th>
          <th class="col-2">Birthday</th>
          <th class="col-3">Function</th>
        </tr>
      </thead>
      <tbody>
      	<c:if test="${userList.size()==0}">
      		<tr class="row text-center">
      			<td>There is no any user !!!</td>
      		</tr>
      	</c:if>
	  	<c:forEach var="curUser" items="${userList}">
	  		<tr class="row text-center">
	          <td class="col-3">${curUser.fullname}</td>
	          <td class="col-2">${curUser.username}</td>
	          <td class="col-2">
	          	<c:if test="${curUser.chucVu==1}">Customer</c:if>
	          	<c:if test="${curUser.chucVu==2}">Staff</c:if>
	          	<c:if test="${curUser.chucVu==3}">Manager</c:if>
	          </td>
	          <td class="col-2">${curUser.yearofbirth}</td>
	          <td class="col-3">
	            <a class="btn btn-warning" href="<c:url value="${PathConst.USER_EDIT}"/>?username=${curUser.username}">
	              <i class="fa fa-edit"></i>
	            </a>
	            <a href="<c:url value="${PathConst.USER_DELETE}"/>?username=${curUser.username}" class="btn btn-danger">
	              <i class="fa fa-trash" aria-hidden="true"></i>
	            </a>
	          </td>
	        </tr>
	  	</c:forEach>      
      </tbody>
    </table>
  </div>

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
</body>

</html>
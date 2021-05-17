<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="cybersoft.java11.crm.utils.UrlConst"%>
<table class="table">
      <thead>
        <tr class="row text-center">
          <th class="col-3">Name</th>
          <th class="col-5">Description	</th>
          <th class="col-4">Functions</th>
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
	          <td class="col-5">${role.description}</td>
	          <td class="col-4">
	            <a class="btn btn-primary" href="<c:url value="${UrlConst.ROLE_UPDATE }"/>?name=${role.name}">
	              <i class="fa fa-edit"></i>
	            </a>
	            <a href="<c:url value="${UrlConst.ROLE_DELETE}"/>?name=${role.name}" class="btn btn-danger">
	              <i class="fa fa-trash" aria-hidden="true"></i>
	            </a>
	          </td>
	        </tr>
	  	</c:forEach>      
      </tbody>
    </table>
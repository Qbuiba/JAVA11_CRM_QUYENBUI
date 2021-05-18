<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import="cybersoft.java11.crm.utils.UrlConst"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	    <title>Role Update</title>
	    <!-- Required meta tags -->
    </head>
  <body>
      <!-- Breadcrumb -->
	            <div class="container page__heading-container">
	                <div class="page__heading">
	                    <div class="d-flex align-items-center">
	                        <div>
	                            <nav aria-label="breadcrumb">
	                                <ol class="breadcrumb mb-0">
	                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
	                                    <li class="breadcrumb-item active" aria-current="page">
	                                        Role
	                                    </li>
	                                </ol>
	                            </nav>
	                            <h1 class="m-0">Update Role</h1>
	                        </div>
	                        <div class="ml-auto">
	                            <a href="" class="btn btn-light"><i class="material-icons icon-16pt text-muted mr-1">settings</i>
	                                Settings
	                            </a>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <!-- End Breadcrumb -->
	
		<div class="container page__container">
			<!-- Page Content -->
                <div class="card card-form">
                    <div class="row no-gutters">
                        <div class="col-lg-4 card-body">
                            <p><strong class="headings-color"></strong></p>
                            <p class="text-muted"><a href="https://getbootstrap.com/docs/4.1/components/forms/" target="_blank"></a> Please input update information</p>
                        </div>
                        <div class="col-lg-8 card-form__body card-body">
                            <form action='<c:url value="<%=UrlConst.ROLE_UPDATE%>" />' method="post">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Role name:</label>
                                    <input name="roleName" type="text" class="form-control" id="name" value="${role.name }">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Description:</label>
                                    <input name="roleDescription" type="text" class="form-control" id="description" value="${role.description }" >
                                </div>
                                <div class="form-group">
			                        <input type="text" class="form-control" id="id" name="role-id" value="${role.id }" readonly hidden>
			                    </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
		</div>
	</body>
</html>
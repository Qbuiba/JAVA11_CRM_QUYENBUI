<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="dec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title><dec:title /></title>
		
		<jsp:include page="/decorators/components/links-header.jsp"></jsp:include>
		<dec:head />
	</head>
	<body class="layout-fixed">
		<div class="preloader"></div>
		
		<div class="mdk-header-layout js-mdk-header-layout">
			<!-- HEADER -->
			<jsp:include page="/decorators/components/header.jsp"></jsp:include>
			<!-- END HEADER -->
			
			<!-- PAGE CONTENT -->
			<div class="mdk-header-layout__content page">
				<!-- HEADER-MENU -->
		        <jsp:include page="/decorators/components/header-menu.jsp"></jsp:include>
				<!-- END - HEADER-MENU -->
				<dec:body />
			</div>
			<!-- END - PAGE CONTENT -->
		</div>
		<!-- END PAGE CONTENT -->
		
		
		
		<!-- SPONSER -->
		<jsp:include page="/decorators/components/sponsor.jsp"></jsp:include>
	 	<!-- END SPONSER -->
		<!-- FOOTER -->
		<jsp:include page="/decorators/components/footer.jsp"></jsp:include>
	 	<!-- END FOOTER -->
	</body>
</html>
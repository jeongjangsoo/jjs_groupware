<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Insert title here</title>
<meta content="" name="description">
<meta content="" name="keywords">
<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">
<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<script type="text/javascript">
	$(document).ready(function(){
		$("input[type='button']").click(function(e){
			var data=$(this).val();
			$()
		});
		
	});
	
	
</script>
</head>
<body>
<!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="http://localhost:9999/main" class="logo d-flex align-items-center">
        <img src="assets/img/smh.png" alt="">
        <span class="d-none d-lg-block">Smart Groupware</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->

        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="assets/img/pro.png" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">${user.MEMBER_NAME}</span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>${user.MEMBER_NAME}</h6>
              <c:if test="${user.DEPART_CODE eq '1'}">
              	<span>?????????</span>
              </c:if>
              <c:if test="${user.DEPART_CODE eq '2'}">
              	<span>?????????</span>
              </c:if>
              <c:if test="${user.DEPART_CODE eq '3'}">
              	<span>?????????</span>
              </c:if>
              <c:if test="${user.DEPART_CODE eq '4'}">
              	<span>?????????</span>
              </c:if>
              <c:if test="${user.DEPART_CODE eq '5'}">
              	<span>?????????</span>
              </c:if>
              <c:if test="${user.DEPART_CODE eq '6'}">
              	<span>?????????</span>
              </c:if>
              <c:if test="${user.RANK_CODE eq '1'}">
              	<span>??????</span>
              </c:if>
              <c:if test="${user.RANK_CODE eq '2'}">
              	<span>?????????</span>
              </c:if>
              <c:if test="${user.RANK_CODE eq '3'}">
              	<span>??????</span>
              </c:if>
              <c:if test="${user.RANK_CODE eq '4'}">
              	<span>??????</span>
              </c:if>
              <c:if test="${user.RANK_CODE eq '5'}">
              	<span>??????</span>
              </c:if>
              <c:if test="${user.RANK_CODE eq '6'}">
              	<span>??????</span>
              </c:if>
              <c:if test="${user.RANK_CODE eq '7'}">
              	<span>??????</span>
              </c:if>
              <c:if test="${user.RANK_CODE eq '8'}">
              	<span>??????</span>
              </c:if>
              <c:if test="${user.RANK_CODE eq '9'}">
              	<span>??????</span>
              </c:if>
              <c:if test="${user.RANK_CODE eq '10'}">
              	<span>??????</span>
              </c:if>
            </li>
            
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="room">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat-left-dots" viewBox="0 0 16 16">
	  				<path d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H4.414A2 2 0 0 0 3 11.586l-2 2V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12.793a.5.5 0 0 0 .854.353l2.853-2.853A1 1 0 0 1 4.414 12H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
				  	<path d="M5 6a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
				</svg>&nbsp;&nbsp;
                <span>??????</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="calendar">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar-check" viewBox="0 0 16 16">
				  <path d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
				  <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
				</svg>&nbsp;&nbsp;
                <span>?????????</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="list">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-card-checklist" viewBox="0 0 16 16">
				  <path d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h13zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z"/>
				  <path d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 1 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0zM7 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 0 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0z"/>
				</svg>&nbsp;&nbsp;
                <span>?????????</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="logout">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
				  <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
				  <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
				</svg>&nbsp;&nbsp;
                <span>????????????</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">
    
      <li class="nav-item">
        <a class="nav-link collapsed" href="commuting">
          	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clock" viewBox="0 0 16 16">
			  <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z"/>
			  <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z"/>
			</svg>&nbsp;&nbsp;
          <span>????????????</span>
        </a>
      </li><!-- End Commuting Page Nav -->

	  <li class="nav-item">
        <a class="nav-link collapsed" href="room">
          	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat-left-dots" viewBox="0 0 16 16">
  				<path d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H4.414A2 2 0 0 0 3 11.586l-2 2V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12.793a.5.5 0 0 0 .854.353l2.853-2.853A1 1 0 0 1 4.414 12H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
			  	<path d="M5 6a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
			</svg>&nbsp;&nbsp;
          <span>??????</span>
        </a>
      </li><!-- End chat Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="calendar">
          	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar-check" viewBox="0 0 16 16">
			  <path d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
			  <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
			</svg>&nbsp;&nbsp;
          <span>?????????</span>
        </a>
      </li><!-- End calendar Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="list">
          	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-card-checklist" viewBox="0 0 16 16">
			  <path d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h13zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z"/>
			  <path d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 1 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0zM7 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 0 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0z"/>
			</svg>&nbsp;&nbsp;
          <span>?????????</span>
        </a>
      </li><!-- End board Nav -->
	  
	  <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-clipboard-check" viewBox="0 0 16 16">
			  <path fill-rule="evenodd" d="M10.854 7.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 9.793l2.646-2.647a.5.5 0 0 1 .708 0z"/>
			  <path d="M4 1.5H3a2 2 0 0 0-2 2V14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V3.5a2 2 0 0 0-2-2h-1v1h1a1 1 0 0 1 1 1V14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V3.5a1 1 0 0 1 1-1h1v-1z"/>
			  <path d="M9.5 1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-3a.5.5 0 0 1-.5-.5v-1a.5.5 0 0 1 .5-.5h3zm-3-1A1.5 1.5 0 0 0 5 1.5v1A1.5 1.5 0 0 0 6.5 4h3A1.5 1.5 0 0 0 11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3z"/>
			</svg>&nbsp;&nbsp;
			<span>????????????</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="approvalp">
              <i class="bi bi-circle"></i><span>????????????</span>
            </a>
          </li>
          <li>
            <a href="approvaln">
              <i class="bi bi-circle"></i><span>???????????? ${ap.apro_status0}</span>
            </a>
          </li>
          <li>
            <a href="approvald">
              <i class="bi bi-circle"></i><span>???????????? ${ap.apro_status1}</span>
            </a>
          </li>
          <li>
            <a href="approvale">
              <i class="bi bi-circle"></i><span>???????????? ${ap.apro_status2}</span>
            </a>
          </li>
        </ul>
      </li><!-- End APPROVAL Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="message">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
		  	<path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z"/>
			</svg>&nbsp;&nbsp;
			<span>??????</span>
        </a>
      </li><!-- End member Nav -->

      <c:if test="${user.MEMBER_id == '1'}">
      <li class="nav-item">
        <a class="nav-link collapsed" href="member">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-lines-fill" viewBox="0 0 16 16">
			  <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1h-4zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2z"/>
			</svg>&nbsp;&nbsp;
			<span>????????????/??????</span>
        </a>
      </li><!-- End member Nav -->
      </c:if>

      <li class="nav-item">
        <a class="nav-link collapsed" href="logout">
          	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
			  <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
			  <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
			</svg>&nbsp;&nbsp;
         <span>????????????</span>
        </a>
      </li><!-- End Logout Page Nav -->

    </ul>

  </aside><!-- End Sidebar-->
  
  <main id="main" class="main">
  	<div class="sect">
  		<div style="text-align: right;" class="mbudivz">
	  		<button class="mbu"onclick="location.href='${capth}/approvaln'">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list-columns-reverse" viewBox="0 0 16 16">
				  <path fill-rule="evenodd" d="M0 .5A.5.5 0 0 1 .5 0h2a.5.5 0 0 1 0 1h-2A.5.5 0 0 1 0 .5Zm4 0a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1h-10A.5.5 0 0 1 4 .5Zm-4 2A.5.5 0 0 1 .5 2h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5Zm-4 2A.5.5 0 0 1 .5 4h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5Zm-4 2A.5.5 0 0 1 .5 6h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 0 1h-8a.5.5 0 0 1-.5-.5Zm-4 2A.5.5 0 0 1 .5 8h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 0 1h-8a.5.5 0 0 1-.5-.5Zm-4 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1h-10a.5.5 0 0 1-.5-.5Zm-4 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h6a.5.5 0 0 1 0 1h-6a.5.5 0 0 1-.5-.5Zm-4 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5Zm4 0a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5Z"/>
				</svg>
				<span>??????</span>
			</button>
	  		<button id="print" class="mbu" onclick="window.print()">
	  			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-printer" viewBox="0 0 16 16">
				  <path d="M2.5 8a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1z"/>
				  <path d="M5 1a2 2 0 0 0-2 2v2H2a2 2 0 0 0-2 2v3a2 2 0 0 0 2 2h1v1a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2v-1h1a2 2 0 0 0 2-2V7a2 2 0 0 0-2-2h-1V3a2 2 0 0 0-2-2H5zM4 3a1 1 0 0 1 1-1h6a1 1 0 0 1 1 1v2H4V3zm1 5a2 2 0 0 0-2 2v1H2a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1h-1v-1a2 2 0 0 0-2-2H5zm7 2v3a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h6a1 1 0 0 1 1 1z"/>
				</svg>
          		<span>??????</span>
	  		</button>
  			<c:if test="${vo.appro_auth2 == '1'}">
	  			<c:if test="${vo.appro_auth3 == '0'}">
		  			<c:if test="${user.RANK_CODE == 1}">
		  				<form action="${capth}/get" method="post" class="approvalButton">
		  					<input type="hidden" name="appro_id" value="${vo.appro_id}"/>
				  			<input type="hidden" name="appro_auth1" value="1"/>
				  			<input type="hidden" name="appro_auth2" value="1"/>
				  			<input type="hidden" name="appro_auth3" value="0"/>
			  				<button type="submit" class="mbu">
			  					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle" viewBox="0 0 16 16">
								  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
								  <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
								</svg>
								<span>??????</span>
			  				</button>
			  				<input type="hidden" name="apv_auth_name">
		  				</form>
				  		<form  action="${capth}/get" method="post" class="approvalButton">
				  			<input type="hidden" name="appro_id" value="${vo.appro_id}"/>
				  			<input type="hidden" name="appro_auth1" value="1"/>
				  			<input type="hidden" name="appro_auth2" value="1"/>
				  			<input type="hidden" name="appro_auth3" value="1"/>
			  				<button type="submit" class="mbu">
			  					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-circle" viewBox="0 0 16 16">
								  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
								  <path d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z"/>
								</svg>
								<span>??????</span>
			  				</button>
			  				<input type="hidden" name="apv_auth_name">
		  				</form>
		  			</c:if>
	  			</c:if>
  			</c:if>
  			<c:if test="${vo.appro_auth1 == '1'}">
	  			<c:if test="${vo.appro_auth2 == '0'}">
		  			<c:if test="${user.RANK_CODE == 2}">
		  				<form action="${capth}/get" method="post" class="approvalButton">
		  					<input type="hidden" name="appro_id" value="${vo.appro_id}"/>
				  			<input type="hidden" name="appro_auth1" value="1"/>
				  			<input type="hidden" name="appro_auth2" value="0"/>
			  				<button type="submit" class="mbu">
			  					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle" viewBox="0 0 16 16">
								  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
								  <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
								</svg>
								<span>??????</span>
			  				</button>
			  				<input type="hidden" name="appro_auth3" value="0"/>
			  				<input type="hidden" name="apv_auth_name">
		  				</form>
				  		<form action="${capth}/get" method="post" class="approvalButton">
				  			<input type="hidden" name="appro_id" value="${vo.appro_id}"/>
				  			<input type="hidden" name="appro_auth1" value="1"/>
				  			<input type="hidden" name="appro_auth2" value="1"/>
			  				<button type="submit" class="mbu">
			  					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-circle" viewBox="0 0 16 16">
								  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
								  <path d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z"/>
								</svg>
								<span>??????</span>
			  				</button>
			  				<input type="hidden" name="appro_auth3" value="0"/>
			  				<input type="hidden" name="apv_auth_name">
		  				</form>
		  			</c:if>
	  			</c:if>
  			</c:if>
  			<c:if test="${vo.appro_auth1 == '0'}">
  				<c:if test="${vo.depart_code eq user.DEPART_CODE}">
		  			<c:if test="${user.RANK_CODE == 3}">
		  				<form action="${capth}/get" method="post" class="approvalButton">
		  					<input type="hidden" name="appro_id" value="${vo.appro_id}"/>
			  				<button type="submit" class="mbu">
			  					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-circle" viewBox="0 0 16 16">
								  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
								  <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
								</svg>
								<span>??????</span>
			  				</button>
			  				<input type="hidden" name="appro_auth1" value="0"/>
			  				<input type="hidden" name="appro_auth2" value="0"/>
			  				<input type="hidden" name="appro_auth3" value="0"/>
			  				<input type="hidden" name="apv_auth_name">
		  				</form>
				  		<form action="${capth}/get" method="post" class="approvalButton">
				  			<input type="hidden" name="appro_id" value="${vo.appro_id}"/>
			  				<button type="submit" class="mbu">
			  					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-circle" viewBox="0 0 16 16">
								  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
								  <path d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z"/>
								</svg>
								<span>??????</span>
			  				</button>
			  				<input type="hidden" name="appro_auth1" value="1"/>
			  				<input type="hidden" name="appro_auth2" value="0"/>
			  				<input type="hidden" name="appro_auth3" value="0"/>
			  				<input type="hidden" name="apv_auth_name"/>
		  				</form>
		  			</c:if>
	  			</c:if>
  			</c:if>
  		</div>
  		
  		<div class="bord">
  		<div style="text-align: center;">
  			<h2 style="margin-top: 20px;">
				<c:if test="${vo.appro_sort == '0'}">
					????????????
				</c:if>
				<c:if test="${vo.appro_sort == '1'}">
					????????????
				</c:if>
				<c:if test="${vo.appro_sort == '2'}">
					????????????
				</c:if>
  			</h2>
  		</div>
  		
  			<table class="gettable1">
  				<tr class="gra">
  					<td rowspan='2' class="gratd1">??????</td>
  					<td class="gratd2">1??? ?????????</td>
  					<td class="gratd2">2??? ?????????</td>
  					<td class="gratd3">3??? ?????????</td>
  				</tr>
  				<tr class="gar">
  					<td class="votd1">
  					${vo.appro_mem1}<br>
  					<c:if test="${vo.appro_auth1 == '0'}">
  						?????????
  					</c:if>
  					<c:if test="${vo.appro_auth1 == '1'}">
  						??????
  					</c:if>
  					<c:if test="${vo.appro_auth1 == '2'}">
  						??????
  					</c:if>
  					<br>
  					<fmt:formatDate pattern="MM-dd HH:MM" value="${vo.appro_auth_date1}"/>
  					</td>
  					<td class="votd1">
  					${vo.appro_mem2}<br>
  					<c:if test="${vo.appro_auth2 == '0'}">
  						?????????
  					</c:if>
  					<c:if test="${vo.appro_auth2 == '1'}">
  						??????
  					</c:if>
  					<c:if test="${vo.appro_auth2 == '2'}">
  						??????
  					</c:if>
  					<br>
  					<fmt:formatDate pattern="MM-dd HH:MM" value="${vo.appro_auth_date2}"/>
  					</td>
  					<td class="votd2">
  					${vo.appro_mem3}<br>
  					<c:if test="${vo.appro_auth3 == '0'}">
  						?????????
  					</c:if>
  					<c:if test="${vo.appro_auth3 == '1'}">
  						??????
  					</c:if>
  					<c:if test="${vo.appro_auth3 == '2'}">
  						??????
  					</c:if>
  					<br>
  					<fmt:formatDate pattern="MM-dd HH:MM" value="${vo.appro_auth_date3}"/>
  					</td>
  				</tr>
  			</table>
  		
  			<table class="gettable4">
  				<tr class="gettr">
  					<td class="tdnum">????????????</td>
  					<td class="tdnum1">${vo.apv_num}</td>
  					<td class="tdnum">????????????</td>
  					<td class="tdnum1"><fmt:formatDate pattern="YYYY-MM-dd" value="${vo.appro_indate}"/></td>
  				</tr>
  				<tr class="gettr">
  					<td class="tdnum">?????????</td>
  					<td class="tdnum1">${vo.appro_member_id}</td>
  					<td class="tdnum">????????????</td>
  					<td class="tdnum1">${vo.depart_name1}</td>
  				</tr>
  				<tr class="gettr">
  					<td class="tdnum2">????????????</td>
  					<td colspan='3' class="tdfile">${vo.appro_title}</td>
  				</tr>
  				<tr class="gettr">
  					<td class="tdnum2">????????????</td>
  					<td colspan='3' class="tdfile">${vo.appro_filename}</td>
  				</tr>
  				<tr class="gettr1">
  					<td class="tdnum2">????????????</td>
  					<td colspan='3' class="tdnum3">${vo.appro_content}</td>
  				</tr>
  			</table>
  			</div>
  			
  			<h5 class="dih">1??? ????????? ????????????</h5>
  			<div>
  				<table class="dihta">
  					<tr class="dihtr">
  						<td class="dihtd1">??????</td>
  						<td class="dihtd1">?????????</td>
  						<td class="dihtd1">??????</td>
  						<td class="dihtd1">????????????</td>
  						<td class="dihtd1">????????????</td>
  						<td class="dihtd2">??????????????????</td>
  					</tr>

  					<tr class="dihtr1">
  						<td class="dihtd3">
  						<c:if test="${vo.appro_auth1 == '0'}">
  							?????????
  						</c:if>
  						<c:if test="${vo.appro_auth1 == '1'}">
  							??????
  						</c:if>
  						<c:if test="${vo.appro_auth1 == '2'}">
  							??????
  						</c:if>
  						</td>
  						<td class="dihtd3">${vo.appro_mem1}</td>
  						<td class="dihtd3">${vo.depart_name2}</td>
  						<td class="dihtd3">${vo.appro_title}</td>
  						<c:if test="${vo.appro_auth1 == '0'}">
  							<td class="dihtd3"></td>
  						</c:if>
  						<c:if test="${vo.appro_auth1 == '1'}">
	  						<td class="dihtd3"><fmt:formatDate pattern="YYYY-MM-dd" value="${vo.appro_auth_date1}"/></td>
  						</c:if>
  						<c:if test="${vo.apv_auth_name != 'N'}">
	  						<td class="dihtd4">${vo.apv_auth_name}</td>
  						</c:if>
  						<c:if test="${vo.apv_auth_name == 'N'}">
  							<c:if test="${user.RANK_CODE == 3}">
		  						<td class="dihtd4"><input type="text" class="selec"></td>
  							</c:if>
  						</c:if>
  					</tr>
  				</table>
  			</div>

  			<c:if test="${vo.appro_auth1 == '1'}">
  			<h5 class="dih">2??? ????????? ????????????</h5>
  			<div>
  				<table class="dihta">
  					<tr class="dihtr">
  						<td class="dihtd1">??????</td>
  						<td class="dihtd1">?????????</td>
  						<td class="dihtd1">??????</td>
  						<td class="dihtd1">????????????</td>
  						<td class="dihtd1">????????????</td>
  						<td class="dihtd2">??????????????????</td>
  					</tr>

  					<tr class="dihtr1">
  						<td class="dihtd3">
						<c:if test="${vo.appro_auth2 == '0'}">
  							?????????
  						</c:if>
  						<c:if test="${vo.appro_auth2 == '1'}">
  							??????
  						</c:if>
  						<c:if test="${vo.appro_auth2 == '2'}">
  							??????
  						</c:if>
						</td>
  						<td class="dihtd3">${vo.appro_mem2}</td>
  						<td class="dihtd3">${vo.depart_name3}</td>
  						<td class="dihtd3">${vo.appro_title}</td>
  						<c:if test="${vo.appro_auth1 == '0'}">
  							<c:if test="${vo.appro_auth2 == '0'}">
		  						<td class="dihtd3"></td>
  							</c:if>
  						</c:if>
  						<c:if test="${vo.appro_auth1 == '1'}">
  							<c:if test="${vo.appro_auth2 == '0'}">
		  						<td class="dihtd3"></td>
  							</c:if>
  						</c:if>
  						<c:if test="${vo.appro_auth1 == '1'}">
  							<c:if test="${vo.appro_auth2 == '1'}">
		  						<td class="dihtd3"><fmt:formatDate pattern="YYYY-MM-dd" value="${vo.appro_auth_date2}"/></td>
  							</c:if>
  						</c:if>
  						<c:if test="${vo.apv_auth_name != 'N'}">
	  						<td class="dihtd4">${vo.apv_auth_name}</td>
  						</c:if>
  						<c:if test="${vo.apv_auth_name == 'N'}">
  							<c:if test="${user.RANK_CODE == 2}">
		  						<td class="dihtd4"><input type="text" class="selec"></td>
  							</c:if>
  						</c:if>
  					</tr>
  				</table>
  			</div>
  			</c:if>

  			<c:if test="${vo.appro_auth2 == '1'}">
  			<h5 class="dih">3??? ????????? ????????????</h5>
  			<div>
  				<table class="dihta">
  					<tr class="dihtr">
  						<td class="dihtd1">??????</td>
  						<td class="dihtd1">?????????</td>
  						<td class="dihtd1">??????</td>
  						<td class="dihtd1">????????????</td>
  						<td class="dihtd1">????????????</td>
  						<td class="dihtd2">??????????????????</td>
  					</tr>

  					<tr class="dihtr1">
  						<td class="dihtd3">
						<c:if test="${vo.appro_auth3 == '0'}">
  							?????????
  						</c:if>
  						<c:if test="${vo.appro_auth3 == '1'}">
  							??????
  						</c:if>
  						<c:if test="${vo.appro_auth3 == '2'}">
  							??????
  						</c:if>
						</td>
  						<td class="dihtd3">${vo.appro_mem3}</td>
  						<td class="dihtd3">${vo.depart_name4}</td>
  						<td class="dihtd3">${vo.appro_title}</td>
  						<c:if test="${vo.appro_auth1 == '0'}">
  							<c:if test="${vo.appro_auth2 == '0'}">
  								<c:if test="${vo.appro_auth3 == '0'}">
			  						<td class="dihtd3"></td>
  								</c:if>
  							</c:if>
  						</c:if>
  						<c:if test="${vo.appro_auth1 == '1'}">
  							<c:if test="${vo.appro_auth2 == '0'}">
  								<c:if test="${vo.appro_auth3 == '0'}">
			  						<td class="dihtd3"></td>
  								</c:if>
  							</c:if>
  						</c:if>
  						<c:if test="${vo.appro_auth1 == '1'}">
  							<c:if test="${vo.appro_auth2 == '1'}">
  								<c:if test="${vo.appro_auth3 == '0'}">
			  						<td class="dihtd3"></td>
  								</c:if>
  							</c:if>
  						</c:if>
  						<c:if test="${vo.appro_auth1 == '1'}">
  							<c:if test="${vo.appro_auth2 == '1'}">
  								<c:if test="${vo.appro_auth3 == '1'}">
			  						<td class="dihtd3"><fmt:formatDate pattern="YYYY-MM-dd" value="${vo.appro_auth_date3}"/></td>
  								</c:if>
  							</c:if>
  						</c:if>
  						<c:if test="${vo.apv_auth_name != 'N'}">
	  						<td class="dihtd4">${vo.apv_auth_name}</td>
  						</c:if>
  						<c:if test="${vo.apv_auth_name == 'N'}">
	  						<c:if test="${user.RANK_CODE == 1}">
		  						<td class="dihtd4"><input type="text" class="selec"></td>
	  						</c:if>
  						</c:if>
  					</tr>
  				</table>
  			</div>
  			</c:if>
  		</div>
  		
  	</div>
  </main><!-- End #main -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/chart.js/chart.min.js"></script>
<script src="assets/vendor/echarts/echarts.min.js"></script>
<script src="assets/vendor/quill/quill.min.js"></script>
<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
<script src="assets/vendor/tinymce/tinymce.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>
<script>
const approvalButton = document.querySelector("form.approvalButton")
const reason = document.querySelectorAll("input.selec")

reason[2].addEventListener("change", () =>{
	reason.forEach((r)=>r.value = reason[2].value)
	
})

</script>
</body>
</html>
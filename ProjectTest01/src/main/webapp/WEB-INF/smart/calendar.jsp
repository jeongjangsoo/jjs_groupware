<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="kr.smhrd.entity.Calendar"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>calendar</title>

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
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" href="css/style.css" />
<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">
<!-- =======================================================
* Template Name: NiceAdmin - v2.4.1
* Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
* Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/
======================================================== -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- jscolor -->
<script src="assets/js/jscolor.js"></script>
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

    <div class="pagetitle">
      <h1>Calendar</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="http://localhost:9999/main">Home</a></li>
          <li class="breadcrumb-item">Users</li>
          <li class="breadcrumb-item active">Calendar</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    	

	<!-- Start mail -->
    <section class="section profile">
      <div class="meback">
      	
      </div>
      <!-- End calendar -->
    </section>

  </main><!-- End #main -->
  
	<style>
body {
line-height:20px;
}
 
 
#calendar {
  max-width: 1100px;
  margin-left:400px ;
}
 
 
#form-div {
  background-color: '';
  padding:5px 5px 5px;
  width: 100%;    
  margin-top:5px;
  -moz-border-radius: 7px;
  -webkit-border-radius: 7px;
}
 
.feedback-input {
  color:#3c3c3c;
  font-family: Helvetica, Arial, sans-serif;
  font-weight:400;
  font-size: 11px;
  border-radius: 0;
  line-height: 22px;
  background-color: #ffffff;
  padding: 3px 3px 3px 6px;
  margin-bottom: 10px;
  width:100%;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  -ms-box-sizing: border-box;
  box-sizing: border-box;
  border: 3px solid rgba(233,233,233,1);
}
 
.feedback-input:focus{
  background: #fff;
  box-shadow: 0;
  /*border: 3px solid #3498db;*/
  border-color: #3498db;
  color: #3498db;
  outline: none;
  /*padding: 13px 13px 13px 54px;*/
}
 
.focused {
  color:#30aed6;
  border:#30aed6 solid 3px;
}
 
/* Icons */
#name{
  background-image: url(http://rexkirby.com/kirbyandson/images/name.svg);
  background-size: 30px 30px;
  background-position: 11px 8px;
  background-repeat: no-repeat;
}
 
#email{
  background-image: url(http://rexkirby.com/kirbyandson/images/email.svg);
  background-size: 30px 30px;
  background-position: 11px 8px;
  background-repeat: no-repeat;
}
 
#comment{
  background-image: url(http://rexkirby.com/kirbyandson/images/comment.svg);
  background-size: 30px 30px;
  background-position: 11px 8px;
  background-repeat: no-repeat;
}
 
textarea {
  width: 100%;
  height: 150px;
  line-height: 150%;
  resize:vertical;
}
 
input:hover, textarea:hover,
input:focus, textarea:focus {
  background-color:white;
}
 
#button-blue{
  font-family: 'Montserrat', Arial, Helvetica, sans-serif;
  float:left; /* ?????? ??????(::after ???????????? ??????)*/
  width: 100%;
  border: #fbfbfb solid 4px;
  cursor:pointer;
  background-color: #0090CF;
  color:white;
  font-size:24px;
  padding-top:22px;
  padding-bottom:22px;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  transition: all 0.3s;
  margin-top:-4px;
  font-weight:700;
}
 
#button-blue:hover{
  background-color: rgba(0,0,0,0);
  color: #0493bd;
}
 
.ease {
  width: 0;
  height: 74px;
  background-color: #fbfbfb;
  -webkit-transition: .3s ease;
  -moz-transition: .3s ease;
  -o-transition: .3s ease;
  -ms-transition: .3s ease;
  transition: .3s ease;
}
 
.submit:hover .ease{
  width:100%;
  background-color:white;
}
</style>
<link href="${pageContext.request.contextPath}/fullcalendar-5.0.1/lib/main.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/fullcalendar-5.0.1/lib/main.js"></script>
<script src="${pageContext.request.contextPath}/fullcalendar-5.0.1/lib/locales/ko.js"></script>
<script src="fullcalendar-5.11.3/lib/locales-all.min.js"></script>

	<link href="jquery-ui-1.13.2/jquery-ui.css" rel="stylesheet">

	<script src="fullcalendar-5.0.1/lib/jquery-ui.js"></script>
	<script type='text/javascript'>
	
	
	var ctx ="${path}";
	   var isAdm ="${isAdm}";
	   var edit = true;
	   if(isAdm==1) edit=true;
	   
	   var diaLogOpt={
	        modal:true        //??????????????????
	        ,resizable:false  //?????? ?????? ?????????
	        , width : "570"   // dialog ?????? ??????
	        , height : "470"  // dialog ?????? ??????
	      };
	   var calFunc ={
			   calcDate: function(arg,calendar){
			      var rObj = new Object();
			      var start  = null;
			        var end    = null;
			        var allDay = arg.allDay;
			      var startDisp =null;
			      var endDisp = null;
			      var id = null;
			      var xcontent = null;
			      var title = null;
			      var color = null;
			      //============================== date get / set ======================================
			       
			        if(arg.id!=""&& arg.id!=null && arg.id!=undefined) id=arg.id;
			        if(arg.title!=""&& arg.title!=null && arg.title!=undefined) title=arg.title;
			        if(arg.extendedProps!=undefined){
			          if(arg._def.extendedProps.xcontent!=""&& arg._def.extendedProps.xcontent!=null && arg._def.extendedProps.xcontent!=undefined){
			              xcontent=arg._def.extendedProps.xcontent;
			          }
			        }
			        
			        if(allDay){//??????????????????
			            var start  = arg.start.toISOString().slice(0,10); //returnCdate(calendar,arg.start);
			            var end=null;             
			            if(arg.end!=""&& arg.end!=null && arg.end!=undefined){
			                end    = arg.end.toISOString().slice(0,10);  //?????? ???????????? ????????? ?????? ?????? ????????? 
			            }
			            if(start==end) end=null;  //??????????????? end?????? ??????
			            
			            startDisp = start;
			            if(end!=null) endDisp = dateRel(arg.end.toISOString().slice(0,10)); //???????????? ?????? ?????? ?????? 
			        }else{//????????? ?????? ????????????
			            start = arg.start.toISOString();             
			            if(arg.end!=""&& arg.end!=null && arg.end!=undefined){
			                end   = arg.end.toISOString();
			            }
			            startDisp = returnCdate(calendar,arg.start);
			            if(end!=null) endDisp = returnCdate(calendar,arg.end);
			        }
			        rObj.start=start;
			        rObj.end=end;
			        rObj.start=start;
			        rObj.startDisp=startDisp;
			        rObj.endDisp=endDisp;
			        rObj.id=id;
			        rObj.xcontent=xcontent;
			        rObj.title=title;
			       //============================== date get / set ======================================
			        return rObj;
			   },
			   
			  
			 //????????????
			   setDateRangeView :function(xobj){
			       var dispStr = xobj.startDisp;
			       if(xobj.endDisp!=null) dispStr+=" ~ "+xobj.endDisp;
			       
			       $("form#diaForm").find("input[name='CALENDAR_INDATE']").val(dispStr);
			       $("form#diaForm").find("input[name='CALENDAR_START']").val(xobj.start);
			       $("form#diaForm").find("input[name='CALENDAR_END']").val(xobj.end);
			       //$("form#diaForm").find("input[name='actType']").val("C"); //??????
			   },
			   
			  
			   //form?????? name?????? $obj??? ??????
			   getFormValue :function(){
			       var $dForm =$("form#diaForm");
			       var $obj = new Object();
			       $("form#diaForm").find("input,textarea,select").each(function(){
			           var xval = $(this).val();            
			           $obj[$(this).attr("name")]=xval;
			       });
			       
			       return $obj;
			   },
			   
			   //?????? ?????? ????????????
			   formDsbTrue :function(){
			       $("form#diaForm").find("input,textarea,select").each(function(){
			           $(this).attr("disabled",true);
			       });
			   },
			   
			   
			   //?????? ?????? ?????????
			   formDsbFalse :function(){                
			       $("form#diaForm").find("input,textarea,select").each(function(){
			               $(this).attr("disabled",false);
			       });
			   },
			   
			   //????????? ??????
			   setDataForm :function(xobj){
			       var dispStr = xobj.startDisp;
			       if(xobj.endDisp!=null) dispStr+=" ~ "+xobj.endDisp;
			       
			       $("form#diaForm").find("input[name='CALENDAR_INDATE']").val(dispStr);
			       $("form#diaForm").find("input[name='CALENDAR_START']").val(xobj.start);
			       $("form#diaForm").find("input[name='CALENDAR_END']").val(xobj.end);
			      // $("form#diaForm").find("input[name='actType']").val("U"); //??????
			       
			       
			       $("form#diaForm").find("input[name='id']").val(xobj.id);
			       $("form#diaForm").find("input[name='CALENDAR_TITLE']").val(xobj.title);
			       $("form#diaForm").find("textarea[name='CALENDAR_CONTENT']").val(xobj.xcontent);
			   }
			 };
			 //calFunc[e]
			  
			  
			  
			  
			 //?????? ??????    
			 function createClnd(cal,xobj){ 
			   if(!confirm("????????? ?????? ???????????????????")) return false; 
			   var formData=$("#diaForm").serialize();
			   $.ajax({ 
			       url: ctx+"/adms/calendar/management/create_ajx.do", 
			       type: "POST", 
			       //contentType: "application/json;charset=UTF-8",
			       data:formData
			  }).done(function(data) { 
			       var result = jQuery.parseJSON(data); 
			       console.log(result);
			       //?????? ???????????? ???????????? ?????? ????????? ????????? ?????? ?????????
			       cal.refetchEvents();
			  }).fail(function(e) {
			      alert("?????????????????????."+e);
			      
			  }).always(function() { 
			      $("#CALENDAR_TITLE").val("");
			      $("#CALENDAR_CONTENT").val("");
			  }); 
			   
			 }
			  
			  
			 //????????????
			 function updateClnd(cal,xobj,event){ 
			   if(!confirm("??????????????? ????????? ?????? ???????????????????")){
			       if(event!=undefined) event.revert();
			       return false; 
			   }
			  // var $obj = calFunc.getFormValue();    
			   var formData=$("#diaForm").serialize();
			   $.ajax({ 
			       url: ctx+"/adms/calendar/management/update_ajx.do", 
			       type: "POST", 
			       data:formData 
			  }).done(function(data) { 
			       var result = jQuery.parseJSON(data);
			       cal.refetchEvents();
			       console.log(data)
			  }).fail(function(e) {  
			      alert("?????????????????????."+e);
			  }).always(function() { 
			      $("#CALENDAR_TITLE").val("");
			      $("#CALENDAR_CONTENT").val("");
			  }); 
			 }
			  
			 //????????????
			 function deleteClnd(cal,xobj){ 
			   if(!confirm("??????????????? ????????? ?????? ???????????????????")) return false; 
			   var formData=$("#diaForm").serialize();
			  
			     
			   $.ajax({ 
			       url: ctx+"/adms/calendar/management/delete_ajx.do", 
			       type: "POST", 
			       //contentType: "application/json;charset=UTF-8",
			       data:formData
			  }).done(function(data) { 
			       var result = jQuery.parseJSON(data); 
			       cal.refetchEvents();
			  }).fail(function(e) {  
			      alert("?????????????????????."+e);
			  }).always(function() { 
			      $("#CALENDAR_TITLE").val("");
			      $("#CALENDAR_CONTENT").val("");
			  }); 
			 }
			 //=========================================== function =========================================== 
			  
			 //???????????? ,???,??? ?????? ???
			 var rightm = "";
			 rightm+=',listWeek';  
	
	
			 
	document.addEventListener('DOMContentLoaded', function () {
		
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
            allDay:false,
            selectable: true,
            navLinks: true,
            timeZone: 'Asia/Seoul',
            selectMirror: true,
            dayMaxEvents: true,
            editable: true, // false??? ?????? ??? draggable ?????? x 
			eventLimit:true,
			theme:true,
			themeSystem:'bootstrap',
            headerToolbar: {
                left: 'prevYear,prev,next,nextYear today',
                center: 'title',
                right:'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
            	}, 
            	
            locale : "ko",
            
           
			 eventChange: function(fetchInfo, successCallback, failureCallback) { // ???????????? ???????????? ???????????? ?????????
				 var start= fetchInfo.start.toISOString().slice(0, 7);
			       var end = fetchInfo.end.toISOString().slice(0, 7);
			       var param = "";
			       param+="start="+start;
			       param+="&end="+end;
			       
			       $.ajax({ 
			             url: ctx+"/adms/calendar/management/read_ajx.do", 
			             type: "POST",                  
			             data:param
			        }).done(function(data) { 
			             var result = jQuery.parseJSON(data); 
			             successCallback(result.list);
			             console.log(result);
			        }).fail(function(e) {  
			            alert("?????????????????????."+e);
			        }).always(function() { 
			            
			        }); 
				
			},
			eventDrop: function(info) {               
		           var xObj = calFunc.calcDate(info.event,calendar); //get event data
		                calFunc.setDataForm(xObj);  //Set Form Data
		          updateClnd(calendar,xObj,info); 
		    },
		       eventResize: function(info) {           
		             var xObj = calFunc.calcDate(info.event,calendar); //get event data
		           calFunc.setDataForm(xObj);  //Set Form Data
		          updateClnd(calendar,xObj,info);  
		       },
		  eventTimeFormat: { 
		        hour: '2-digit',
		        minute: '2-digit',
		        hour12: false
		  },
             			
			select: function(arg) { // ??????????????? ???????????? ????????? ??????
				console.log(arg);
				//$("#calendarModal").modal("show"); // modal ????????????
				//if(isAdm==0) return false; ???????????????
		        var xObj = calFunc.calcDate(arg,calendar);     //get event data     
		        

		        //================ dialog ?????? ?????? ===================
		        var btnOpt ={      
		        		
		                          "??????":function(){                            
		                            createClnd(calendar,xObj);  //??????????????? ?????? ??????
		                            $(this).dialog("close");
		                        },"??????":function(){
		                            $(this).dialog("close");
		                        }                
		                    }
		        
		        var dOpt =diaLogOpt;
		        dOpt.buttons = btnOpt;
		        $("#CALENDAR_TITLE").val("");
		         $("#CALENDAR_CONTENT").val("");
		        
		       //================ dialog ?????? ?????? ===================
		      calFunc.formDsbFalse();          //Form data disabeld false
		       $('#dialog').dialog(dOpt);       //??????????????? ??????
		       calFunc.setDateRangeView(xObj);  //SET Form data
		      
		        calendar.unselect();
			},
			//droppable: true,
			eventClick: function(calEvent, jsEvent) {
				//$("#calendarModal").modal("show");
				var xObj = calFunc.calcDate(calEvent.event,calendar);  //get event data          
       //================ dialog ?????? ?????? ===================
     var btnOpt ={                
                    "??????":function(){
                        deleteClnd(calendar,xObj); //??????????????? ?????? ??????
                        $(this).dialog("close");
                    },"??????":function(){
                        updateClnd(calendar,xObj); //??????????????? ?????? ??????
                        $(this).dialog("close");
                    },"??????":function(){
                        $(this).dialog("close");
                    }                
                  }
   //================ dialog ?????? ?????? ===================
     var dOpt =diaLogOpt;
     dOpt.buttons = btnOpt;                  
     //================ dialog ?????? ?????? ===================
    
     //================ ??????                      ===================
     $('#dialog').dialog(dOpt);  //??????????????? ??????
     calFunc.setDataForm(xObj);  //SET Form Data
				
			},
			editable:edit,
			dayMaxEvents: true,
			 events: function(info, successCallback, failureCallback){ // ajax ????????? ???????????? ?????? ?????????. 
				$.ajax({
					  url: "calendar_load",
					  type: "POST",
					  dataType: "JSON",
					  contentType: "application/json; charset=UTF-8",
					  traditional: true,
					  async: false, //??????
					  success : function(data){
						  var events = [];	 
						 $.each(data, function(index, element) {
   								events.push({
                   		 		title: element.calendar_TITLE,
                    			start: element.calendar_START,
                    			end: element.calendar_END,
                    			color:element.calendar_COLOR,
                    			content:element.calendar_CONTENT,
                    			id:element.calendar_ID
                  		 }); 
							});
						 successCallback(events);
						 
						
						console.log(events);
						
						
					  },
					  error : function(request,status,error){
						alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // ?????? ??? ??????
						console.log("code = "+ request.status + " message = " + request.responseText + " error = " + error);
					 
					  }
					  
				});
				
					
			}, 
            
        });
        
        calendar.render();
        $("span.fa-chevron-left").html("?????????"); 
        $("span.fa-chevron-right").html("?????????");
    });

	
	
	
	function dateRel(date){ 
		  var selectDate = date.split("-");
		  var changeDate = new Date();
		  changeDate.setFullYear(selectDate[0], selectDate[1]-1, selectDate[2]-1);
		  
		  var y = changeDate.getFullYear();
		    var m = changeDate.getMonth() + 1;
		    var d = changeDate.getDate();
		    
		    if(m < 10) { 
		        m = "0" + m;
		    }
		 
		    if(d < 10) {
		        d = "0" + d;
		    }
		    var resultDate = y + "-" + m + "-" + d;
		   return resultDate;
		}
		 
		function returnCdate(cal,time){      
		  return cal.formatDate(time,{month: 'long',year: 'numeric',day: 'numeric', hour:'numeric',minute:'numeric', timeZone: 'Asia/Seoul',locale: 'ko'});
		}
 </script>
  <div id="contents">
<div id="dialog" title="?????? ??????" style="display:none;">

    <div id="form-div">
        <form class="diaForm" id="diaForm" >
            <!-- <input type="hidden" name="actType" value="C" /> -->  <!-- C:?????? U:?????? D:?????? -->
            <input type="hidden" name="id" value="1" /> 
            <input type="hidden" name="CALENDAR_START" />
            <input type="hidden" name="CALENDAR_END" />
            <input type="hidden" name="CAL_SORT_ID" value="2" />
            <input type="hidden" name="CALENDAR_ALLDAY" value="2" />
            <input type="hidden" name="CAL_SORT_NAME" value="??????" />
            <input type="hidden" name="CAL_SORT_COLOR" value="BLUE" />
            <input type="hidden" name="CALENDAR_CATE_SELF" value="1" />
            
            
            
            <p class="name">
                <input name="CALENDAR_TITLE" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="???????????????" id="CALENDAR_TITLE" />
            </p>
            
            <p class="email">
                <input name="CALENDAR_INDATE" type="text" readonly="readonly" class="validate[required,custom[email]] feedback-input"  placeholder="??????????????? ??? ??????" />
            </p>
            
            <p class="text">
                <textarea name="CALENDAR_CONTENT" class="validate[required,length[6,100]] feedback-input" id="CALENDAR_CONTENT" placeholder="????????????"></textarea>
            </p>
            
            <p class="CalCOL">
                <input name="CALENDAR_COLOR" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="?????????" id="CALENDAR_COLOR" />
            </p>
                    
        </form>
    </div>
</div>
<br/>
<div id='calendar'></div>
</div>

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
  </footer><!-- End Footer -->

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

 
</body>

</html>
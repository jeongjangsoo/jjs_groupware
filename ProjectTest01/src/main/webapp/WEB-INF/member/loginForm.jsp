
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp" %>

	<div class="container">
	<form action="/login" method="post">
	  <div class="form-group">
	    <input type="text" name="MEMBER_id"  class="form-control" placeholder="Enter id"  required="required">
	  </div>
	  <div class="form-group">
	    <input type="password" name="MEMBER_PW"  class="form-control" placeholder="Enter password" required="required">
	  </div>
	   <p><input type="checkbox" name="idChecked"  value="checked" /><label>&nbsp;로그인 정보 저장</label></p>
	  <button type="submit" class="btn btn-primary">로그인</button>
	</form>
	</div>
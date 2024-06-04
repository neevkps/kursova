<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String redirectUrl = (String) request.getAttribute("redirectUrl");
    if (redirectUrl != null) {
        response.sendRedirect(redirectUrl);
    } else {
        response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        System.out.println("Internal server error: Redirect URL is not specified.");
    }
%>

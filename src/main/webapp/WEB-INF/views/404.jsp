<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Page Not Found</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; text-align: center; }
        .error { color: #d9534f; font-size: 24px; }
    </style>
</head>
<body>
    <div class="error">404 - Page Not Found</div>
    <p>The requested page could not be found.</p>
    <a href="${pageContext.request.contextPath}/">Go to Home Page</a>
</body>
</html>
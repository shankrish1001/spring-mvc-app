<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Redirect</title>
</head>
<body>
    <%
        response.sendRedirect(request.getContextPath() + "/");
    %>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: tin
  Date: 8/6/14
  Time: 11:59 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Please log in</title>
    <meta name="layout" content="main"/>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <g:form controller="user" action="login">
                    <h4 class="text-danger ie"><em>Please try to log in again.</em></h4>
                    <div class="form-group">
                        <input type="text" name="username" class="form-control" placeholder="User Name">
                        <input type="password" name="password" class="form-control" placeholder="Password">
                    </div>
                    <button type="submit" class="btn btn-primary">Log In</button>
                </g:form>
            </div>
        </div>
    </div>
</body>
</html>
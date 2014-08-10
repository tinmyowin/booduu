<%--
  Created by IntelliJ IDEA.
  User: tin
  Date: 8/4/14
  Time: 10:29 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>News shared by community</title>
    <meta name="layout" content="main"/>
    <link href="${resource(dir: 'css', file: 'booduu.css')}" rel="stylesheet" media="screen">
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div id="newsPost">
                <g:each in="${posts}" var="post">
                    <p class="individualNewsPost">
                    <h4 id="postSubject">${post.subject}</h4>
                    <h5 id="postContent">${post.content}</h5>
                    <g:if test="${post.image}">
                        <div id="postImage"><img class="img-responsive" src="<g:createLink controller='image' action='renderPostImage' id='${post.id}'/>"/></div>
                    </g:if>
                    <h5>${post.dateCreated} <small>by ${post.user.userId}, tagged <strong>${post.tags.name}</strong></small> </h5>
                    </p>
                </g:each>
            </div>
        </div>
    </div>
</div>
</body>
</html>

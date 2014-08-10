<html>
    <head>
        <title>Register New User</title>
        <meta name="layout" content="main"/>
    </head>
    <body>

        <div class="container">
            <div class="row">
                <div class="col-md-4">

                    <h4>Register New User</h4>

                    %{--<g:hasErrors>--}%
                        %{--<div class="errors">--}%
                           %{--<g:renderErrors bean="${user}" as="list" />--}%
                        %{--</div>--}%
                    %{--</g:hasErrors>--}%
                    <g:form action="registerUser">
                        <dl>
                            <div class="form-group">
                                <dt>User Id</dt>
                                <dd><g:textField name="userId" value="${user?.userId}" class="form-control"/></dd>
                            </div>
                            <div class="form-group">
                                <dt>Password</dt>
                                <dd><g:passwordField name="password" value="${user?.password}" class="form-control"/></dd>
                            </div>
                            <div class="form-group">
                                <dt>Full Name</dt>
                                <dd><g:textField name="profile.fullName" value="${user?.profile?.fullName}" class="form-control"/></dd>
                            </div>
                            <div class="form-group">
                                <dt>Bio</dt>
                                <dd><g:textArea name="profile.bio" value="${user?.profile?.bio}" class="form-control"/></dd>
                            </div>
                            <div class="form-group">
                                <dt>Email</dt>
                                <dd>
                                    <g:textField name="profile.email" value="${user?.profile?.email}" class="form-control"/>
                                    <g:hasErrors bean="${user}" field="profile.email">
                                        <g:eachError bean="${user}" field="profile.email">
                                            <p style="color: red;"><g:message error="${it}"/></p>
                                        </g:eachError>
                                    </g:hasErrors>
                                </dd>
                            </div>
                            <dt><g:submitButton name="register" value="Register"/></dt>
                        </dl>
                    </g:form>
                </div>
            </div>
        </div>
    </body>
</html>

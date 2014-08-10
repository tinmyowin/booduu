%{--<!DOCTYPE html>--}%
%{--<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->--}%
%{--<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->--}%
%{--<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->--}%
%{--<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->--}%
%{--<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->--}%
<!DOCTYPE html>
<html>
<head>
    <title>Let's BooDuu</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="${resource(dir: 'css', file: 'bootstrap.css')}" rel="stylesheet" media="screen">
    <link href="${resource(dir: 'css', file: 'bootstrap-multiselect.css')}" rel="stylesheet" media="screen">
    <g:layoutHead/>
</head>

<body>

<nav class="navbar navbar-default" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${createLink(action:'timeline',controller:'post')}">BooDuu</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <!--li class="active"><a href="#">Home</a></li-->
                <li><a href="#">Hot!</a></li>
                <li><a href="${createLink(action:'labeledPost',controller:'post', id: 'Tweets')}">Tweets</a></li>
                <li><a href="${createLink(action:'labeledPost',controller:'post', id: 'News')}">News</a></li>
                <li><a href="${createLink(action:'labeledPost',controller:'post', id: 'Games')}">Games</a></li>
                <li><a href="${createLink(action:'labeledPost',controller:'post', id: 'Music')}">Music</a></li>
                <li><a href="${createLink(action:'labeledPost',controller:'post', id: 'Car')}">Car</a></li>
                <li><a href="/BooDuu">Admin</a></li>
            </ul>
            <g:form controller="user" action="login" class="navbar-form navbar-right">
                <div class="form-group">
                    <input type="text" name="username" class="form-control" placeholder="User Name">
                    <input type="password" name="password" class="form-control" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-primary">Log In</button>
                <a href="${createLink(action:'register',controller:'user')}" class="btn btn-default" role="button">Sign Up</a>
            </g:form>
        </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<g:layoutBody/>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="${resource(dir: 'js', file: 'bootstrap.js')}"></script>
<script src="${resource(dir: 'js', file: 'bootstrap-multiselect.js')}"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('.multiselect').multiselect();
    });
</script>
</body>
</html>


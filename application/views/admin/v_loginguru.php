<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
    <base href="<?php echo base_url('assets/admin/login/purple_login');?>/" />
    <title>Login Administrator</title>
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans' rel='stylesheet' type='text/css'>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- -->
    <script>var __links = document.querySelectorAll('a');function __linkClick(e) { parent.window.postMessage(this.href, '*');} ;for (var i = 0, l = __links.length; i < l; i++) {if ( __links[i].getAttribute('data-t') == '_blank' ) { __links[i].addEventListener('click', __linkClick, false);}}</script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script>$(document).ready(function(c) {
            $('.alert-close').on('click', function(c){
                $('.message').fadeOut('slow', function(c){
                    $('.message').remove();
                });
            });
        });
    </script>
</head>
<body>
<!-- contact-form -->
<div class="message warning">
    <div class="inset">
        <div class="login-head">
            <h1>Login Pengajar</h1>
            <div class="alert-close"> </div>
        </div>
        <form method="post" action="">
                <?php echo (isset($result)?'<li style="color:red;font-style: italic">'.$result.'</li>':'')?>
            <li>
                <input type="text" class="text" value="ID Pengajar" name="email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Id Pengajar';}" required><span class="icon user"></span>
            </li>
            <div class="clear"> </div>
            <li>
                <input type="password" value="Password" name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required> <span class="icon lock"></span>
            </li>
            <div class="clear"> </div>
            <div class="submit">
                <input type="submit" value="Sign in" name="login">
                <h4><a href="#">Lost your Password ?</a></h4>
                <div class="clear">  </div>
            </div>

        </form>
        
    </div>
</div>
</div>
<div class="clear"> </div>
<!--- footer --->
<div class="footer">
    <p>Template by <a href="http://w3layouts.com">w3layouts</a></p>
</div>
</body>
</html>
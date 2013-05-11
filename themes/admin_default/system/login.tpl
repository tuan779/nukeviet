<!-- BEGIN: main -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset={CHARSET}" />
		<meta http-equiv="expires" content="0" />
		<meta name="resource-type" content="document" />
		<meta name="distribution" content="global" />
		<meta name="copyright" content="Copyright (c) {SITE_NAME}" />
		<meta name="robots" content="noindex, nofollow" />
		<title>{SITE_NAME} | {PAGE_TITLE}</title>
		<link rel="stylesheet" type="text/css" href="{NV_BASE_SITEURL}themes/{ADMIN_THEME}/css/login.css" />
		<script type="text/javascript">
			var jsi = new Array('{SITELANG}', '{NV_BASE_SITEURL}', '{CHECK_SC}', '{GFX_NUM}');
			var login_error_security = '{LOGIN_ERROR_SECURITY}';
			var nv_cookie_prefix = '{NV_COOKIE_PREFIX}';
		</script>
		<script type="text/javascript" src="{NV_BASE_SITEURL}js/global.js"></script>
		<script type="text/javascript" src="{NV_BASE_SITEURL}js/admin_login.js"></script>
		<!--[if IE 6]>
		<script type="text/javascript" src="{NV_BASE_SITEURL}js/fix-png-ie6.js"></script>
		<script type="text/javascript">
		DD_belatedPNG.fix('#');
		</script>
		<![endif]-->
	</head>
	<body>
		<div id="wrapper">
			<div id="logo">
				<!-- BEGIN: image -->
				<a title="{SITE_NAME}" href="{NV_BASE_SITEURL}"><img border="0" src="{LOGO}" width="{WIDTH}" height="{HEIGHT}" alt="{SITE_NAME}" /></a>
				<!-- END: image -->
				<!-- BEGIN: swf -->
				<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="{WIDTH}" height="{HEIGHT}" >
					<param name="wmode" value="transparent" />
					<param name="movie" value="{LOGO}" />
					<param name="quality" value="high" />
					<param name="menu" value="false" />
					<param name="seamlesstabbing" value="false" />
					<param name="allowscriptaccess" value="samedomain" />
					<param name="loop" value="true" />
					<!--[if !IE]> <-->
					<object type="application/x-shockwave-flash" width="{WIDTH}" height="{HEIGHT}" data="{LOGO}" >
						<param name="wmode" value="transparent" />
						<param name="pluginurl" value="http://www.adobe.com/go/getflashplayer" />
						<param name="loop" value="true" />
						<param name="quality" value="high" />
						<param name="menu" value="false" />
						<param name="seamlesstabbing" value="false" />
						<param name="allowscriptaccess" value="samedomain" />
					</object>
					<!--> <![endif]-->
				</object>
				<!-- END: swf -->
			</div>
			<div id="login-header">
				<div id="login-header-left"></div>
				<div id="login-header-center">
					<h3><strong>{LOGIN_TITLE}</strong></h3>
				</div>
				<div id="login-header-right"></div>
			</div>
			<div id="login-content">
				<div>
					<div>
						{LOGIN_INFO}
						<form class="loginform" method="post" action="{NV_BASE_ADMINURL}index.php" onsubmit="return nv_checkadminlogin_submit();">
							<ul>
								<!-- BEGIN: lang_multi -->
								<li>
									<label>{LANGTITLE}:</label>
									<select id="langinterface" name="langinterface" onchange="top.location.href=this.options[this.selectedIndex].value;">
										<!-- BEGIN: option -->
										<option value="{LANGOP}" {SELECTED}>{LANGVALUE} </option>
										<!-- END: option -->
									</select>
								</li>
								<!-- END: lang_multi -->
								<li>
									<label>{N_LOGIN}:</label>
									<input name="nv_login" type="text" id="login" value="{V_LOGIN}" />
								</li>
								<li>
									<label>{N_PASSWORD}:</label>
									<input name="nv_password" type="password" id="password" />
								</li>
								<!-- BEGIN: captcha -->
								<li>
									<label>{N_CAPTCHA}:</label>
									<input name="nv_seccode" type="text" id="seccode" maxlength="{GFX_NUM}" style="width:60px;"/>
									<img id="vimg" alt="{N_CAPTCHA}" src="{NV_BASE_SITEURL}index.php?scaptcha=captcha" width="{GFX_WIDTH}" height="{GFX_HEIGHT}" />
									<img alt="{CAPTCHA_REFRESH}" src="{CAPTCHA_REFR_SRC}" width="16" height="16" class="refresh" onclick="nv_change_captcha();"/>
								</li>
								<!-- END: captcha -->
							</ul>
							<div id="smb">
								<input class="submitform" type="submit" value="{N_SUBMIT}" />
							</div>
						</form>
						<p style="text-align:right; padding:10px;">
							<a class="lostpass" title="{LANGLOSTPASS}" href="{LINKLOSTPASS}">{LANGLOSTPASS}?</a>
						</p>
					</div>
				</div>
			</div>
			<div id="login-footer">
				<div id="login-footer-left"></div>
				<div id="login-footer-center"></div>
				<div id="login-footer-right"></div>
			</div>
			<div id="copyright">
				<p>
					Copyright &copy; <a href="{SITEURL}">{SITE_NAME}</a>. All rights reserved.
				</p>
			</div>
		</div>
		<script type="text/javascript">
			document.getElementById('login').focus();
		</script>
	</body>
</html>
<!-- END: main -->
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head profile="http://gmpg.org/xfn/11">
	<base href="<%=basePath%>"/>
	<title>用户登录 - 磨房</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="icon" type="image/ico" href="http://static.doyouhike.net/favicon.ico" />
	<link rel="bookmark icon" type="image/ico" href="http://static.doyouhike.net/favicon.ico" />
	<link rel="shortcut icon" type="image/ico" href="http://static.doyouhike.net/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="../../../css/user.css" />
	<script type="text/javascript">
	    var MISC_PATH =  'http://static.doyouhike.net/';
	    var DATA_URL =  'http://static.doyouhike.net/files/';
	    var SITE_DOMAIN = 'www.doyouhike.net';
	    var FILE_PATH = '/home/doyouhike/production/www/application_4.3.2_20140219/models';
	</script>
	<script type="text/javascript" src="../../../js/jquery-1.9.1.min.js"></script>
	<style type="text/css">
		.container {
			margin-top: 0px;
			margin-bottom: 0px;
			position: absolute;
			top: 0;
			left: 0px;
			width: 100%;
		}
		/*
		    *底部
		    */
		body {
			min-width: 996px;
		}
		
		#footer {
			padding: 20px 0 20px;
			background: #fff;
			border-top: 1px solid #e5e5e5;
			position: fixed;
			width: 100%;
			width: 100% !important;
			bottom: 0px;
			background: rgba(255, 255, 255, 0.7);
			-ms-filter:
				"progid:DXImageTransform.Microsoft.gradient(GradientType=1,startColorstr=#80ffffff,endColorstr=#80ffffff)";
			/*Filter for IE8 */
			filter: progid:DXImageTransform.Microsoft.gradient(GradientType=1,
				startColorstr=#80ffffff, endColorstr=#80ffffff );
			/*Filter for older IEs */
		}
		.footerContent {
			width: 996px;
			margin: 0 auto;
			overflow: hidden;
		}
		
		.footerContent p {
			float: left;
			color: #757575;
		}
		
		#footer p.copyP a {
			display: none;
		}
		
		#footer .footerContent ul {
			float: right;
			display: block;
		}
		
		#footer .footerContent ul li a {
			color: #49758b;
		}
		
		#footer .helpCenter {
			display: none;
		}
		
		@media screen and (min-height: 830px) {
			body {
				height: 100%;
				overflow-y: hidden;
			}
		}
	</style>
</head>
<body>
<img alt="" class="CoverImg" src="../../../imgs/login/login_cover_all.jpg"/>
<div class="container">
	<div class="register login">
		<div class="loginBox">
			<div class="title">
				<h2>登录到磨房</h2>
				<div class="tipsBack"></div>
			</div>
			<form action="/user/login" method="post" id="loginForm">
				<dl class="clearfix">
					<dd>
						<input class="text username" type="text" name="username" value=""
							placeholder="" autocomplete="off"
							onfocus="this.style.color='#333';this.className='text';"
							onblur="if(this.value==''){ this.style.color='#757575';if(!this.defaultValue) this.className='text username';}" />
					</dd>
					<dd class="tips">
						<span class="left"></span> 
						<span class="center"></span> 
						<span class="right"></span>
					</dd>
				</dl>
				<dl class="clearfix">
					<dd>
						<input class="text password" type="password" name="password"
							value="" placeholder="" autocomplete="off"
							onfocus="if(this.value==this.defaultValue) this.value='';this.style.color='#333';this.className='text';"
							onblur="if(this.value==''){ this.style.color='#757575';this.className='text password';}" />
					</dd>
					<dd class="tips">
						<span class="left"></span> 
						<span class="center"></span> 
						<span class="right"></span>
					</dd>
				</dl>
				<div class="errorTips"></div>
				<dl class="clearfix">
					<dd>
						<label>
						<input type="checkbox" name="cookie"
							id="rememberUsername" value="1" style="margin-right:5px;" />下次自动登录
							<span style="padding-left: 30px;">
							<a href="/user/account/lost_password" class="Link">忘记密码？</a>
							</span>
						</label>
					</dd>
				</dl>
				<p class="sub_p">
					<input type="hidden" name="url" value="/user/register/" /> 
					<input type="submit" value="立即登录" class="button-main" style="height:42px;" /> 
					<span>还没有磨房帐号？<a href="/user/register" class="Link">立即注册</a></span>
				</p>
			</form>
		</div>
		<div class="logobox">
			<a href="/"><img alt="磨房-发现心世界"
				src="../../../imgs/login/logo.png" />
			</a>
		</div>
	</div>

	<script type="text/javascript">
        //显示提示信息
        function clearTips(obj,str,msgs){
            $(obj).removeClass('fail').removeClass('ok').removeClass('loading');
            if(str) $(obj).addClass(str);
            $(obj).find('.center').html(msgs);
            return $(obj);
        }

        $(function(){
            //更换验证码
            $(".verifyCode").click(function(){
                $(this).find("a").css("backgroundImage","url(../captcha?time_stamp="+(new Date().getTime())+")");
            });
            //表单验证
            var submitBtn = $(".button-green");
            $("#loginForm").validate({
                rules: {
                    username: {
                        required: true
                    },
                    password: {
                        required: true
                    },
                    captcha: {
                        required: true,
                        remote: {
                            url: "../api/user/checkCaptcha", //后台处理程序
                            type: "post",  //数据发送方式
                            dataType: "json",       //接受数据格式
                            data: {
                                    captcha:function() {
                            		return $("#captcha").val();
                                }
                            } //要传递的数据

                        }
                    }
                },
                messages: {
                    username: {
                        required: "用户名不能为空!"
                    },
                    password: {
                        required: "密码不能为空!"
                    },
                    captcha: {
                        required: "验证码不能为空!",
                        remote : "请输入正确的验证码"
                    }
                },errorPlacement: function(error, element) {
                    if(error.text()){
                        if(!$('.errorTips').html()) $('.errorTips').html(error.text());
                    }
                    else{
                        if(element.get(0).id=='captcha'){
                            $('.errorTips').html('');
                        }
                        else{
                            $('.errorTips').html('');
                        }
                    }
                },

                success:function(label){
                }
            });
            //聚焦
            $('input[name="username"]').focus();

        });
    </script>
	<div class="clear"></div>
</div>
<!--底部-->
<div id="footer">
	<div class="footerContent">
		<!--help-->
		<div class="helpCenter">
			<dl class="first">
				<dt>关于我们</dt>
				<dd>
					<a href="/doc/about.html">磨房简介</a>
				</dd>
				<dd>
					<a href="/doc/job.html">加入磨房</a>
				</dd>
				<dd>
					<a href="/doc/contact.html">联系我们</a>
				</dd>
			</dl>
			<dl>
				<dt>网站条款</dt>
				<dd>
					<a href="/doc/copyright.html">版权说明</a>
				</dd>
				<dd>
					<a href="/doc/privacy.html">隐私条款</a>
				</dd>
			</dl>
			<dl>
				<dt>
					<a href="/doc/about.html">帮助中心</a>
				</dt>
				<dd>
					<a href="/doc/city_forum.html">玩转磨房</a>
				</dd>
				<dd>
					<a href="/forum/leisure/176462,0,0,0.html">推荐阅读</a>
				</dd>
				<dd>
					<a href="/doc/links.html">友情链接</a>
				</dd>
			</dl>
			<dl>
				<dt>关注我们</dt>
				<dd class="sina">
					<a href="http://weibo.com/1819732165">新浪微博</a>
				</dd>
				<dd class="weixin">
					<a href="#">mofangweixin</a>
				</dd>
			</dl>
			<dl class="last">
				<dt>移动应用</dt>
				<dd class="phone">
					<a href="/appdownload/forum">磨房社区</a>
				</dd>
				<dd class="phone">
					<a href="/appdownload/event">磨房活动</a>
				</dd>
			</dl>
			<p>
				<img alt="二维码图片" src="../../../imgs/login/dycode.jpg" />
			</p>
			<div class="clear"></div>
		</div>
		<p class="copyP">
			&copy; 2000 - 2014 www.doyouhike.net Version 4.3.2 - 2014-02-14
			11:45:00 +0800 粤ICP备11038623号-2 &nbsp; 
			<a href="https://cert.ebs.gov.cn/03ac4c8d-aca7-4753-b8fe-b88d06fbb77a" target="_blank">
			<img src="../../../imgs/login/govIcon.gif"
				title="深圳市市场监督管理局企业主体身份公示" alt="深圳市市场监督管理局企业主体身份公示" width="20"
				height="27" style="border-width:0px;border:hidden;" />
			</a>
		</p>
		<ul>
			<li><a href="/doc/about.html">关于我们</a>|</li>
			<li><a href="/doc/copyright.html">版权声明</a>|</li>
			<li><a href="/doc/copyright.html">隐私保护</a>|</li>
			<li><a href="/doc/contact.html">联系我们</a>
			</li>
		</ul>

	</div>
</div>
</body>
</html>
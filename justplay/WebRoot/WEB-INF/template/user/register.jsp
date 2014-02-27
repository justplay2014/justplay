<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>用户注册</title>
<link href="../css/user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.cookie.js"></script>
<script type="text/javascript" src="../js/jquery.form.js"></script>

<script type="text/javascript">
	//提交按钮变灰
	function setDisable(obj) {
		$("#registerForm .button-green").addClass("disable").find("input").get(
				0).disabled = true;
		$(obj).data("disable", true);
	}

	//提交按钮变亮
	function setAble(obj) {
		$(obj).data("disable", false);

		var flag = false;
		var $username = $("#registerForm").find("input[name='username']");
		var $email = $("#registerForm").find("input[name='email']");
		var $pwd = $("#registerForm").find("input[name='pwd']");
		if ($username.data("disable") || $email.data("disable")
				|| $pwd.data("disable")) {
			flag = true;
		}
		if (!flag)
			$("#registerForm .button-green").removeClass("disable").find(
					"input").get(0).disabled = false;
	}

	// 清楚输入框提示
	function clearTips(obj, str, msgs) {
		$(obj).removeClass("fail").removeClass("ok").removeClass("loading");
		if (str) {
			$(obj).addClass(str);
		}
		$(obj).find(".center").html(msgs);
		return $(obj);
	}

	//在线检验邮箱
	function checkEmail(email) {
		var reg = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)/;
		return reg.test(email);
	}

	//密码强度检测
	function checkPwd(obj) {
		var v = obj.value;
		var n = /[a-z]/.test(v) + // 小写字母
		/[A-Z]/.test(v) + // 大写字母
		/\d/.test(v) + // 数字
		/[^0-9a-z]/i.test(v) + // 符号
		/[^0-9a-z]/i.test(v) + // 符号
		(v.length >= 6) + // 长度级别 1
		(v.length >= 8) + // 长度级别 2
		(v.length >= 10); // 长度级别 3
		return n;
	}

	var vuser = false; // 用户名标志
	var vemail = false; // 邮箱标志
	var vpwd = false; // 密码标志
	var vpwd_alt = false; // 重复密码标志

	$(function() {
		// 在线检验用户名
		var timtout_username = null;
		$("#registerForm input[name='username']")
				.keyup(
						function(e) {
							if (e.keyCode == 9)
								return;
							clearTimeout(timtout_username);
							//不能输入空格
							this.value = this.value.replace(" ", "");

							var user_name = $.trim(this.value);
							var that = this;

							$(that).data("istimeout", false);
							timtout_username = setTimeout(
									function() {
										if ($(that).data("istimeout"))
											return;

										if ($.trim(user_name) == "") {
											clearTips($(that).parent().nextAll(
													".tips"), "fail", "用户名不能为空");
											setDisable(that);
										} else if (!new RegExp(
												"^([\u4E00-\uFA29]|[\uE7C7-\uE7F3]|[a-zA-Z0-9_-])*$")
												.test(user_name)) {
											clearTips($(that).parent().nextAll(
													".tips"), "fail",
													"只允许中英文,数字,中划线-,下划线_");
											setDisable(that);
										} else if ($.trim(user_name).length < 2) {
											clearTips($(that).parent().nextAll(
													".tips"), "fail",
													"请输入2-14字");
											setDisable(that);
										} else if ($.trim(user_name).length > 14) {
											clearTips($(that).parent().nextAll(
													".tips"), "fail",
													"请输入2-14字");
											setDisable(that);
										} else {
											var req = {};
											req.user_name = user_name;

											clearTips($(that).parent().nextAll(
													".tips"), "loading",
													"在线验证中...");
											$.post("validUser.action", {
												"username" : user_name
											}, function(ok) {
												if (ok) {
													//不存在
													clearTips($(that).parent()
															.nextAll(".tips"),
															"ok", "");
													setAble(that);
													vuser = true;
												} else {
													//已经存在
													clearTips($(that).parent()
															.nextAll(".tips"),
															"fail", "用户名已经存在");
													setDisable(that);
												}
											});
										}
									}, 800);

						})
				.blur(
						function() {
							var user_name = $.trim(this.value);
							var that = this;

							if ($(that).data("istimeout"))
								return;

							$(that).data("istimeout", true);
							if ($.trim(user_name) == "") {
								clearTips($(that).parent().nextAll(".tips"),
										"fail", "用户名不能为空");
								setDisable(that);
							} else if (!new RegExp(
									"^([\u4E00-\uFA29]|[\uE7C7-\uE7F3]|[a-zA-Z0-9_-])*$")
									.test(user_name)) {
								clearTips($(that).parent().nextAll(".tips"),
										"fail", "只允许中英文,数字,中划线-,下划线_");
								setDisable(that);
							} else if ($.trim(user_name).length < 2) {
								clearTips($(that).parent().nextAll(".tips"),
										"fail", "请输入2-14字");
								setDisable(that);
							} else if ($.trim(user_name).length > 14) {
								clearTips($(that).parent().nextAll(".tips"),
										"fail", "请输入2-14字");
								setDisable(that);
							} else {
								var req = {};
								req.user_name = user_name;

								clearTips($(that).parent().nextAll(".tips"),
										"loading", "在线验证中...");
								$.post("validUser.action", {
									"username" : user_name
								}, function(ok) {
									if (ok) {
										//不存在
										clearTips($(that).parent().nextAll(
												".tips"), "ok", "");
										setAble(that);
										vuser = true;
									} else {
										//已经存在
										clearTips($(that).parent().nextAll(
												".tips"), "fail", "用户名已经存在");
										setDisable(that);
									}
								});
							}
						});

		var timtout_email = null;
		$("#registerForm input[name='email']").keyup(
				function(e) {

					if (e.keyCode == 9)
						return;

					clearTimeout(timtout_email);
					var email = this.value;
					var that = this;

					$(that).data("istimeout", false);
					timtout_email = setTimeout(function() {
						if ($(that).data("istimeout"))
							return;

						if ($.trim(email) == "") {
							clearTips($(that).parent().nextAll(".tips"),
									"fail", "邮箱不能为空");
							setDisable(that);
							return;
						}

						//检查是否符合邮箱格式
						if (!checkEmail(email)) {
							clearTips($(that).parent().nextAll(".tips"),
									"fail", "请输入正确的邮箱地址");
							setDisable(that);
						} else {
							var req = {};
							req.email = email;
							clearTips($(that).parent().nextAll(".tips"),
									"loading", "在线验证中...");
							$.post("validEmail.action", {
								"email" : email
							}, function(ok) {
								if (ok) {
									//不存在
									clearTips(
											$(that).parent().nextAll(".tips"),
											"ok", "");
									setAble(that);
									vemail = true;
								} else {
									//已经存在
									clearTips(
											$(that).parent().nextAll(".tips"),
											"fail", "邮箱已存在");
									setDisable(that);
								}
							});
						}
					}, 800);

				}).blur(
				function() {
					var email = this.value;
					var that = this;

					if ($(that).data("istimeout"))
						return;

					$(that).data("istimeout", true);
					if ($.trim(email) == "") {
						clearTips($(that).parent().nextAll(".tips"), "fail",
								"邮箱不能为空");
						setDisable(that);
						return;
					}

					//检查是否符合邮箱格式
					if (!checkEmail(email)) {
						clearTips($(that).parent().nextAll(".tips"), "fail",
								"请输入正确的邮箱地址");
						setDisable(that);
					} else {
						var req = {};
						req.email = email;
						clearTips($(that).parent().nextAll(".tips"), "loading",
								"在线验证中...");
						$.post("validEmail.action", {
							"email" : email
						}, function(ok) {
							if (ok) {
								//不存在
								clearTips($(that).parent().nextAll(".tips"),
										"ok", "");
								setAble(that);
								vemail = true;
							} else {
								//已经存在
								clearTips($(that).parent().nextAll(".tips"),
										"fail", "邮箱已存在");
								setDisable(that);
							}
						});
					}
				});

		//检查密码
		var timeout_pwd = null;
		$("#registerForm input[name='pwd']").keyup(
				function(e) {

					if (e.keyCode == 9)
						return;

					clearTimeout(timeout_pwd);
					var pwd = this.value;
					var that = this;

					$(that).data("istimeout", false);
					timeout_pwd = setTimeout(function() {
						if ($(that).data("istimeout"))
							return;

						if ($.trim(pwd) == "") {
							clearTips($(that).parent().nextAll(".tips"),
									"fail", "密码不能为空");
							setDisable(that);
						} else if (that.value.length < 6) {
							clearTips($(that).parent().nextAll(".tips"),
									"fail", "密码的长度至少是6位");
							setDisable(that);
						} else if (checkPwd(that) < 4) {
							clearTips($(that).parent().nextAll(".tips"), "ok",
									"密码过于简单,建议修改");
							vpwd = true;
							setAble(that);
						} else {
							clearTips($(that).parent().nextAll(".tips"), "ok",
									"");
							vpwd = true;
							setAble(that);
						}

						$(that).data("istimeout", true);
					}, 500);

				}).blur(
				function() {
					var pwd = this.value;
					var that = this;

					if ($(that).data("istimeout"))
						return;

					$(that).data("istimeout", true);
					if ($.trim(pwd) == "") {
						clearTips($(that).parent().nextAll(".tips"), "fail",
								"密码不能为空");
						setDisable(that);
					} else if (that.value.length < 6) {
						clearTips($(that).parent().nextAll(".tips"), "fail",
								"密码的长度至少是6位");
						setDisable(that);
					} else {
						clearTips($(that).parent().nextAll(".tips"), "ok", "");
						vpwd = true;
						setAble(that);
					}
				});

		//检查两次输入的密码
		$("#registerForm input[name='pwd_alt']").blur(
				function() {
					var pwd = $("#registerForm input[name='pwd']").val();
					var pwd_alt = $(this).val();
					if (pwd != pwd_alt) {
						clearTips($(this).parent().nextAll(".tips"), "fail",
								"您输入的两次密码不一样");
						setDisable(that);
					} else if (pwd == pwd_alt && pwd == "") {
						clearTips($(this).parent().nextAll(".tips"), "fail",
								"密码不能为空");
						setDisable(that);
					} else {
						clearTips($(this).parent().nextAll(".tips"), "ok", "");
						vpwd_alt = true;
						setAble(that);
					}
				});

		//检验表单
		$("#registerForm").submit(function() {
			var flag = vuser && vemail && vpwd && vpwd_alt;
			if (flag) {
				return true;
			} else {
				return false;
			}
		});
	});
</script>
</head>

<body style="background:url(../imgs/register/bg_regist.jpg)">
	<div class="register">
		<div class="title clearfix">
			<h2>JUSTPLAY注册</h2>
			<div class="tipsBack"></div>
		</div>
		<form id="registerForm" method="post" action="user/register.action">
			<dl class="clearfix">
				<dt>用户名：</dt>
				<dd>
					<input class="text" type="text" value="" id="username"
						name="username" />
				</dd>
				<dd class="tips">
					<span class="left"></span> <span class="center">JUSTPLAY推荐用户使用简单易读的用户名</span>
					<span class="right"></span>
				</dd>
			</dl>
			<dl class="clearfix">
				<dt>邮箱：</dt>
				<dd>
					<input class="text" type="text" value="" name="email" />
				</dd>
				<dd class="tips">
					<span class="left"></span> <span class="center">请输入您常用的邮箱</span> <span
						class="right"></span>
				</dd>
			</dl>
			<dl class="clearfix">
				<dt>密码：</dt>
				<dd>
					<input class="text" type="password" value="" name="pwd" />
				</dd>
				<dd class="tips">
					<span class="left"></span> <span class="center">请勿使用过于简单的密码</span>
					<span class="right"></span>
				</dd>
			</dl>
			<dl class="clearfix">
				<dt>确认密码：</dt>
				<dd>
					<input class="text" type="password" name="pwd_alt" value="" />
				</dd>
				<dd class="tips">
					<span class="left"></span> <span class="center"></span> <span
						class="right"></span>
				</dd>
			</dl>

			<!-- 
			<dl class="clearfix">
				<dt>验证码：</dt>
				<dd>
					<input class="text" type="text" value="" name="check_code" />
				</dd>
				<dd>
					<img src="imageCode.action" class="check_code" alt="check_code" />
				</dd>
				<dd class="tips">
					<span class="left"></span> 
					<span class="center"></span>
					<span class="right"></span>
				</dd>
			</dl>
			 -->
			<div class="noticeBox">
				<p class="sub_p">
					<a class="button-green"> <input type="submit" value="立即注册" />
					</a> <a class="noticeLink" href="javascript:;">注册须知</a> <span>已经注册？
						<a href="/user/login?url=/user/register/"> 马上登录 <i>&gt;&gt;</i></a>
					</span>
				</p>

			</div>
		</form>
		
	</div>
</body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
 <script type="text/javascript" src="JS/jquery-1.8.3.js"></script>
    <script>
        $(function () {
        //验证用户名
            function checkUserName($name) {
                if ($name.val() == "") {
                    //验证不通过显示提示
                    if ($name.find("~span").length == 0) {
                        $name.after("<span>请输入用户名</span>");
                    }
                    return false;
                } else {
                    var reg = /^[a-z0-9_-]{0,16}$/;
                    if (reg.test($name.val()) == false) {
                        $name.find("~span").remove();
                        $name.after("<span>用户名输入有误</span>");
                        return false;
                    }
                    else {
                        //验证通过，清除提示
                        $name.find("~span").remove();
                        return true;
                    }
                }
            }
            //验证密码
            function checkPassWord($pwd) {
                if ($pwd.val() == "") {
                    //验证不通过显示提示
                    if ($pwd.find("~span").length == 0) {
                        $pwd.after("<span>请输入密码</span>");
                    }
                    return false;
                } else {
                    var reg = /^[a-z0-9_-]{6,18}$/;
                    if (reg.test($pwd.val()) == false) {
                        $pwd.find("~span").remove();
                        $pwd.after("<span>密码输入有误</span>");
                        return false;
                    }
                    else {
                        //验证通过，清除提示
                        $pwd.find("~span").remove();
                        return true;
                    }
                }
            }

            $("input[name='username']").blur(function () {
                checkUserName($(this));
            });
            $("input[name='pwd1']").blur(function () {
                checkPassWord($(this));
            });
             $("#form01").submit(false);
           
        });
    </script>
	<script>
        window.onload=function() {
            var year = document.getElementById('year');
            var now = new Date();
            for (var i = 1900; i <= now.getFullYear(); i++) {
                year.add(new Option(i));
            }

            var month=document.getElementById('month');
            for (var i = 1; i <= 12; i++) {
                month.add(new Option(i));
            }
            var day=document.getElementById('day');
            for (var i = 1; i <= 31; i++) {
                day.add(new Option(i));
            }
        }
    </script>
</head>
<body>
<form action="<%=path%>/show.jsp" method="post">
    <table width="500" align="center" style="line-height: 50px">
        <tr>
            <td colspan="2" height="100" align="center">用户注册</td>

        </tr>
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="username" size="30"
                       maxlength="
                10"/></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="pwd1" size="30" maxlength="12"/>
            </td>
        </tr>
        <tr>
            <td>密码确认</td>
            <td><input type="password" name="pwd2" size="30" maxlength="12"/>
            </td>
        </tr>

        <tr>
            <td>性别</td>
            <td><input type="radio" name="sex" value="male" checked/>男 <input
                    type="radio" name="sex" value="female"/>女
            </td>

        </tr>
        <tr>
            <td>电子邮箱</td>
            <td><input type="text" name="email" size="30"
                       maxlength="
                10"/></td>
        </tr>

        <tr>
            <td>出生日期</td>
            <td><select id="year" name="year">
                <option value="0" selected>请选择</option>
            </select> 年

                <select id="month" name="month">
                    <option value="0" selected>请选择</option>

                </select> 月


                <select id="day" name="day">
                    <option value="0" selected>请选择</option>
                </select> 日
            </td>
        </tr>

        <tr>
            <td></td>
            <td><input type="submit" value="提交"/></td>
        </tr>
    </table>

</form>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%pageContext.setAttribute("path", request.getContextPath()+"/"); %>
<%String path = request.getContextPath()+"/";%>

<!DOCTYPE html>
<html>
<head>
    <title>clientReg</title>
    <!-- 导入JQ -->
    <script src="${path}js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        var flag = false;
        /* 用户名 */
        function checkUserid()
        {
            var userid = document.getElementById("userid").value;
            var useriderror = document.getElementById("useriderror");
            if(userid == null || userid.length == 0)
            {
                useriderror.innerHTML="<font color='red'>用户名不可为空！</font>";
                return false;
            }
            //账号重复验证  异步提交
            $.post("${path}reg/checkUserid.action",
                {
                    "userid": userid
                },
                function(redata)
                {
                    if(redata == "success")
                    {
                        $("#useriderror").html("<font color='green'>用户名可用！</font>");
                        flag = true;
                    }
                    else
                    {
                        $("#useriderror").html("<font color='red'>用户名已存在！</font>");
                        flag = false;
                    }
                }
            )

/*            $.ajax({
                url:"${path}clientLoginRegServlet?method=checkUserid",
                type:"POST",
                dataType:"text",
                data:{userid:$("#userid").val()},
                success:function(redata){
                    if(redata == "success")
                    {
                        $("#useriderror").html("账号可用");
                        flag = true;
                    }
                    else
                    {
                        $("#useriderror").html("<font color='red'>账号已存在</font>");
                        flag = false;
                    }
                },
                error:function(){
                    alert("error");
                    flag = false;
                }
            });*/
            return flag;
        }
        /* 姓名 */
        function checkUname()
        {
            var uname = document.getElementById("uname").value;
            var unameerror = document.getElementById("unameerror");
            if(uname == null || uname.length == 0)
            {
                unameerror.innerHTML="<font color='red'>姓名不可为空！</font>";
                return false;
            }
            else
            {
                unameerror.innerHTML="√";
                return true;
            }
        }
        /* 密码 */
        function checkUpass()
        {
            var upass = document.getElementById("upass").value;
            var upasserror = document.getElementById("upasserror");
            if(upass == null || upass.length == 0)
            {
                upasserror.innerHTML="<font color='red'>密码不可为空！</font>";
                return false;
            }
            else
            {
                upasserror.innerHTML="√";
                return true;
            }
        }
        /* 确认密码 */
        function checkUpass2()
        {
            var upass = document.getElementById("upass").value;
            var upass2 = document.getElementById("upass2").value;
            var upasserror2 = document.getElementById("upasserror2");
            if(upass2 == null || upass2.length == 0)
            {
                upasserror2.innerHTML="<font color='red'>请输入确认密码！</font>";
                return false;
            }
            else if(upass != upass2)
            {
                upasserror2.innerHTML="<font color='red'>两次密码不一致！</font>";
                return false;
            }
            else
            {
                upasserror2.innerHTML="√";
                return true;
            }
        }
        /* 年龄*/
        function checkUage()
        {
            var test = /^[1-9]\d{0,2}$/;
            var uage = document.getElementById("uage").value;
            var uageerror = document.getElementById("uageerror");
            if(uage == null || uage.length == 0)
            {
                uageerror.innerHTML="<font color='red'>请输入年龄！</font>";
                return false;
            }
            else if (!test.test(uage))
            {
                uageerror.innerHTML="<font color='red'>年龄格式不正确！</font>";
                return false;
            }
            else
            {
                uageerror.innerHTML="√";
                return true;
            }
        }
        /* 手机*/
        function checkUphone()
        {
            var test = /^1([38]\d|5[0-35-9]|7[3678])\d{8}$/;
            var uphone = document.getElementById("uphone").value;
            var uphoneerror = document.getElementById("uphoneerror");

            if(uphone == null || uphone.length == 0)
            {
                uphoneerror.innerHTML="<font color='red'>请输入手机号！</font>";
                return false;
            }
            else if (!test.test(uphone))
            {
                uphoneerror.innerHTML="<font color='red'>手机号格式不正确！</font>";
                return false;
            }
            else
            {
                uphoneerror.innerHTML="√";
                return true;
            }
        }
        /* 通讯地址*/
        function checkUaddress()
        {
            var uaddress = document.getElementById("uaddress").value;
            var uaddresserror = document.getElementById("uaddresserror");
            if(uaddress.length > 30)
            {
                uaddresserror.innerHTML="<font color='red'>地址不可超过30字！</font>";
                return false;
            }
            else
            {
                uaddresserror.innerHTML="√";
                return true;
            }
        }
        /* 表单提交时判断 */
        function formSubmit(form)
        {
            /* 			checkUserid  & checkUname & checkUpass & checkUpass2 & checkUage & checkUphone & checkUaddress
             */			var check = checkUserid() && checkUname() && checkUpass() && checkUpass2() && checkUage() && checkUphone() && checkUaddress();
            with(form)
            {
                if(check)
                {
                    return true;
                    alert("提交成功！");
                }
                else
                {
                    document.getElementById("submiterror").innerHTML="<font color='red'>填写内容有误，请重新填写！</font>";
                    return false;
                }
            }
        }

        /*表单提交*/
        function submit() {

        }
    </script>
</head>
<body style="text-align:center;">
<h1>用户注册</h1>
<div style="text-align: left;margin-left: 40%;">

    <form action="${path}reg/confirmReg.action" method="post" enctype="multipart/form-data" onsubmit="return formSubmit(this);">

        用户名：<input type="text" id="userid" name="userid" placeholder="您登录时用的账号" onblur="checkUserid()"/>
        <span id="useriderror" style="color: green"></span><p/>

        姓名：<input type="text" id="uname" name="uname" onblur="checkUname()"/>
        <span id="unameerror" style="color: green"></span><p/>

        密码：<input type="password" id="upass" name="upass" onblur="checkUpass()"/>
        <span id="upasserror" style="color: green"></span><p/>

        确认密码：<input type="password" id="upass2" name="upass2" onblur="checkUpass2()"/>
        <span id="upasserror2" style="color: green"></span><p/>

        性别：<input type="radio" id="male" name="usex" value="男"  checked="checked"/>男
        <input type="radio" id="female" name="usex" value="女"/>女<p/>

        年龄：<input type="text" id="uage" name="uage" onblur="checkUage()"/><span id="uageerror"></span><p/>
        <span id="uageerror" style="color: green"></span><p/>

        手机：<input type="text" id="uphone" name="uphone" onblur="checkUphone()"/><span id="uphoneerror"></span><p/>
        <span id="uphoneerror" style="color: green"></span><p/>

        通讯地址：<input type="text" id="uaddress" name="uaddress" onblur="checkUaddress()"/><span id="uaddresserror"></span><p/>
        <span id="uaddresserror" style="color: green"></span><p/>

        头像：<input type="file" name="header"><p/>

        <input type="submit" value="注册"/>
        <a href="${path}a/clientLogin.jsp"><input type="button" value="返回"/></a>

    </form>
    <span id="submiterror" style="color: green"></span><p/>
</div>
</body>
</html>
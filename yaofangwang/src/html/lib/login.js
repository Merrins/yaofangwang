$(() => {
    $("#username").val("button1");
    $("#password").val("123456789");

    $(".tab-item").click(function () {
        $(this).addClass("ac").siblings().removeClass("ac");
        $(".login_item").eq($(this).index()).show().siblings().hide();
    });
    let name;
    let pw;
    $("#username").blur(function () {
        let reg1 = /^[\w-]{4,16}$/;
        let reg2 = /^\w+@\w+\.\w$/;
        let reg3 = /^1[3-5]\d{9}$/;
        if ($(this).val().trim() == "") {
            $(".user").find(".stu").text("用户名、邮箱或手机不能为空");
        } else if (reg1.test($(this).val().trim())) {
            $(".user").find(".stu").text("");
        } else if (reg2.test($(this).val().trim())) {
            $(".user").find(".stu").text("");
        } else if (reg3.test($(this).val().trim())) {
            $(".user").find(".stu").text("");
        } else {
            $(".user").find(".stu").text("请输入正确的用户名、邮箱或手机");
        }
    })
    $("#password").focus(function () {
        $("#username").trigger("blur");
        // console.log("+++");

    })
    $("#password").blur(function () {
        if ($(this).val() == "") {
            $(".user").find(".stu").text("密码不能为空");
        } else if ($(this).val().length < 6) {
            $(".user").find(".stu").text("请填写正确格式的密码");
        } else {

            // $(".user").find(".stu").text("");
        }
    })
    //账户登录
    $(".btn").click(function () {
        $("#username").trigger("blur");
        $("#password").trigger("blur");
        // if()
        if ($(".xy").is(":checked") == false) {
            alert("请勾选协议")
        } else if ($(".user").find(".stu").text() == "" && $("#password").val().trim() != "" && $("#username").val().trim() != "") {
            // console.log("信息输出正确");
            name = $("#username").val().trim();
            pw = $("#password").val().trim()

            console.log("===");
            
            $.ajax({
                type: "post",
                url: "../server/login.php",
                data: `username=${name}&password=${pw}`,
                dataType: "json",
                success: function (response) {
                    // console.log(response.data.msg);
                    if (response.status == "success") {
                        localStorage.username = name;
                        localStorage.id = response.data.userId;
                        alert("成功登录");
                        // window.open("../yf.html")
                        window.location.href = "../index.html";
                    } else {
                        alert(response.data.msg)
                    }
                }
            });
        }

    })

    // 快捷登录
    $("#phone").blur(function () {
        if ($(this).val() != "" && /^1[3-5]\d{9}$/.test($(this).val())) {
            $(".phone").find(".stu").text("");
        } else {
            $(".phone").find(".stu").text("请填写正确格式的手机号");
        }
    })
    $("#mscode").focus(function () {
        $(".phone").trigger("blur");
    })

    let randomNumber;
    function getRandom(min, max) {
        return parseInt(Math.random() * (max - min + 1)) + min
    }

    $(".mssend").click(function () {
        if ($(".phone").find(".stu").text() == "") {
            randomNumber = getRandom(100000, 999999);
            $.ajax({
                type: "post",
                url: " http://route.showapi.com/28-2",
                data: {
                    "showapi_appid": '126622', 
                    "showapi_sign": 'fefce4ecfad3406f8a7f0f874904025e', 
                    "mobile":$(".phone").val(),
                    "content":`您好,A,验证码是${randomNumber}, 本次登录密码有效时间为3分钟`,
                    "tNum":"T170317003223",
                    "title":"秀派科技"
                },
                dataType: "json",
                success: function (response) {
                    console.log("成功", response);

                },
                error: function (response) {
                    console.log("失败");

                }
            });
        } else {
            console.log("请输入正确信息");

        }
    })
})
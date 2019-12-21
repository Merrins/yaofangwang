$(()=>{
    // 协议
    $(".ck").click(function(){
        // console.log($(this).children());
        
        $(this).children().toggleClass("checked");
    })

    // 用户名
    $("#name").blur(function(){
        
        if($(this).val()!="" && /^[\w-]{2,18}$/.test($(this).val().trim()) ){
            $(this).parent().siblings(".status").removeClass("false");
        }else{
            $(this).parent().siblings(".status").addClass("false");
        }
    })
    // 密码
    $("#password").blur(function(){
        
        if($(this).val()!="" && /^[\w]{6,20}$/.test($(this).val().trim()) ){
            $(this).parent().siblings(".status").removeClass("false");
        }else{
            $(this).parent().siblings(".status").addClass("false");
        }
    })
    // 确定密码
    $("#repw").blur(function(){
        if($(this).val()!="" && $(this).val().trim() == $("#password").val().trim()){
            $(this).parent().siblings(".status").removeClass("false");
        }else{
            $(this).parent().siblings(".status").addClass("false");
        }
    })
    // 手机号
    $("#phone").blur(function(){
        
        if($(this).val()!="" && /^1[3-5]\d{9}$/.test($(this).val().trim()) ){
            $(this).parent().siblings(".status").removeClass("false");
        }else{
            $(this).parent().siblings(".status").addClass("false");
        }
    })
    // 验证码
    $("#mscode").blur(function(){
        if($(this).val()!=""){
            $(this).parent().siblings(".status").removeClass("false");
        }else{
            $(this).parent().siblings(".status").addClass("false");
        }
    })
    $(".btn2").click(function(){
        $("#name").trigger("blur");
        $("#password").trigger("blur");
        $("#repw").trigger("blur");
        $("#phone").trigger("blur");
        $("#mscode").trigger("blur");
        if($(".false").length != 0){
            return;
        }
        if($(".ck").children().hasClass("checked") == false){
            alert("请阅读并同意用户协议！！！");
            return;
        }
        console.log();
        $.ajax({
            type: "post",
            url: "../server/register.php",
            data: `name=${$("#name").val()}&password=${$("#password").val()}&phone=${$("#phone").val()}`,
            dataType: "json",
            success: function (response) {
               console.log("注册成功，网页跳转",response) 
               alert(`${$("#name").val()}注册成功`);
               window.location.href = "../yf.html"
            }
        });
    })
})
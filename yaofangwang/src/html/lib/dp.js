$(() => {
    let name = window.location.href.slice(window.location.href.indexOf("?")+1).slice( window.location.href.slice(window.location.href.indexOf("?")+1).indexOf("=") +1);
    console.log(decodeURI(name));
    // let detailPagedata ; //yb

    $.ajax({
        type: "post",
        url: "../server/dp.php",
        data: `name=${name}`,
        dataType: "json",
        success: function (data) {
            // console.log(data);  
            renderUI(data[0]);
            $(".in-left").Zoom(data[0], this);
            let good_id = data[0].id;
            Event(good_id);
        }
    });
   
    
    function renderUI(dataT){
        let oBox = $(`
        <div class="maininfo">
            <div class="in-left">
            </div>
            <div class="in-center">
                <h2>
                    <i class="icon_otc "></i>
                    <span>${dataT.name}</span>
                </h2>
            <div class="appad">
                <p class="AppDown">新客APP下单领20元券</p>
                <p class="AppDownTwo">
                    <a target="_blank" href="">立即去领</a>
                </p>
            </div>
            <div class="m-info">
                <dl class="">
                    <dt class="l">通用名</dt>
                    <dd class="w2 l"><strong>${dataT.name}</strong></dd>

                    <dt class="l">商品名/商标</dt>
                    <dd class="w3 l"></dd>

                    <dt class="l">包装规格</dt>
                    <dd class="w2 l">${dataT.specification}</dd>

                    <dt class="l">剂型/型号</dt>
                    <dd class="w3 l">${dataT.dosageForm}</dd>

                    <dt class="l">生产企业</dt>
                    <dd class="w2 l">${dataT.manufacturers}</dd>

                    <dt class="l">批准文号</dt>
                    <dd class="w3 l">
                        <div class="f2">
                            <img style="height:14px;" src=${dataT.approvalNumbers}>
                        </div>
                    </dd>

                </dl>
            </div>
            <div class="prices">
                <dl class="price">
                    <dt>零售价格</dt>
                    <dd class="money">￥${dataT.price}</dd>
                </dl>
                <div class="qrcode">
                    <i class="icon"></i>
                    手机扫一扫
                </div>
            </div>
            <dl>
                <dt>运    费</dt>
                <dd class="w">
                    <span class="downup">至 广州市</span>
                    <span>快递：9.00</span>
                </dd>
            </dl>
            <dl class="s">
                <dt>需求数量</dt>
                <dd>
                    <span class="quantity">
                        <p class="sub bgg" style="cursor:pointer">-</p>
                        <input type="text" class="num" value="1" id="num">
                        <p class="add" style="cursor:pointer">+</p>
                    </span>
                    <span class="par">
                        库存：
                        <label for="" id="reserve">98</label>
                        瓶
                    </span>
                    <span class="wtime">
                        有效期至：
                        <label for="">6个月</label>
                    </span>
                </dd>
            </dl>
            <div class="mainop">
                <div  class="ibtn2" id="buy">提交需求</div>
                <div  class="ibtn1" id="addcart">加入需求单</div>
            </div>
        </div>
        <div class="in-rigth"></div>
    </div>
        `)
        $(".wrap").append(oBox)
    }

    function Event(id) { 
        // 数量增加按钮 + - 
        $(".sub").click(function () { 
            console.log("+++");
            
            let count = $(this).parent().children(".num").val()*1 ; 
            if(count == 1){
                $(this).addClass("bgg")
            }else{
                count = $(this).parent().children(".num").val()*1 - 1 
                $(this).parent().children(".num").val(count);
            }
        })
        $(".add").click(function () {
            let count = $(this).parent().children(".num").val()*1 + 1 
            $(this).parent().children(".num").val(count);
            $(this).parent().children(".sub").removeClass("bgg")
        })

        // 加入需求单
        $("#addcart").click(function(){
            let good_id = id;
            console.log("add",good_id);
            $.ajax({
                type: "post",
                url: "../server/mycart.php",
                data:{ type:"add",good_id:good_id},
                dataType: "json",
                success: function (response) {
                    if (response.status == "success") {
                        alert("添加成功")
                    }
                }
            });
        })

        $("#buy").click(function(){
            
            window.location.href = "./cart.html";
        })
    }
    
    /*  name  img 规格 剂型 生产企业 文号 价格 库存 有效期*/ 
    
})
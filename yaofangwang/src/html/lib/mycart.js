$(() => {
    //获取商品数据
    $.ajax({
        data: { type: "get" },
        url: "../server/mycart.php",
        dataType: "json",
        success: function (data) {
            console.log(data);
            renderUI(data)
            Event()
        }
    });

    // 渲染购物车数据库的所有商品
    function renderUI(dataT) {
        let html = dataT.map(function (ele) {
            return `
            <div class="cartItem" gid=${ele.good_id}>
                <i class="ck"></i>
                <img class="cartItem_img" src=${ele.src} alt="">
                <div class="info">
                    <p class="info_name">${ele.name}</p>
                    <p class="info_s">${ele.specification}</p>
                    <p class="info_place">${ele.manufacturers}</p>
                </div>
                <p class="price">￥${ele.price}</p>
                <p class="num">${ele.num}</p>
                <p class="total">￥${(ele.num*1) * (ele.price*1)}</p>
                <div class="del">删除</div>
            </div>
            `
        }).join("");

        let cBox = $(`<div class="cartlistBox">${html}</div>`);
        // 插入元素后jq用法
        $(cBox).insertAfter(".cartMain_hd")
    }
    function Event(){
        // 单选
        $("body").on("click",".ck",function(){
            $(this).toggleClass("checked");
            totalMoney()
        })
        // ，当有单选框被选中时，全选 ，处理bug？
        $(".ck1").on("click",function(){
            $(this).toggleClass("checked");
            $(".ck").toggleClass("checked");
            totalMoney()
        })
        // 删除 事件委托
        $("body").on("click",".del",function(){
            let good_id = $(this).parent().attr("gid");
            $.ajax({
                url: "../server/mycart.php",
                data: {type:"del",good_id},
                dataType: "json",
                success: function (response) {
                    console.log(response);
                    if(response.status == "success"){
                        location.reload();
                    }
                    
                }
            });
        })
    }
    // 计算总价
    function totalMoney(){
        let total_count = 0;
        let total_price = 0;
        // 累加
        $(".cartItem").each((index,ele)=>{
            if($(ele).find(".ck").hasClass("checked")){
                let count = $(ele).find(".num").text()*1;
                let price = $(ele).find(".total").text().substr(1) *1
                total_count += count;
                total_price += count * price;
            }
        })
        $(".piece_num").text(total_count);
        $(".total_text").text("￥" + total_price.toFixed(2));

    }
})
$(()=>{
    // // header
    // $.get("./lib/header.html",
    //     function (data) {
    //         // console.log(data);
    //         $("body").prepend(data)
    //     },
    //     "html"
    // );
    // 商品列表
    let typeVal = "default";

    new Promise(function(resolve,reject){
        getDataWithPageCount(1, typeVal, resolve);
    }).then(function(){
        getPageCount();
    })

    function getDataWithPageCount(index, type, callBack){
        $.ajax({
            type: "get",
            url: "../server/goodsgetData.php",
            data: `page=${index}&type=${type}`,
            dataType: "json",
            success: function (data) {
                console.log(data);
                renderUI(data);
                Event();
                if(callBack) callBack()
            }
        })
    }
    function getPageCount(){
        $.ajax({
            type: "get",
            url: "../server/goodsgetpage.php",
            dataType: "json",
            success: function(response) {
                // console.log(response);
                let count = response.count;
                let html = "";
                for (let i = 0; i < count; i++) {
                    html += `<a href="javascript:;" class=${i == 0 ? "active" : ""}>${i + 1}</a>`;
                }
                $("#page").html(html);

                $("#page a").click(function() {
                    $(this).addClass("active").siblings().removeClass("active");
                    getDataWithPageCount($(this).index() + 1, typeVal);
                })
            }
        });
    }

    function renderUI(dataA){
        let html = dataA.map((ele)=>{
            return `
            <li>
                <img class="photo" src=${ele.src} alt="">
                <p class="price">￥${ele.price}</p>
                <a href="" class="txt">${ele.name}</a>
                <p  class="str">${ele.specification}</p>
                <p class="str">${ele.dosageForm}</p>
                <div class="ph">
                    批准文号：
                    <img src=${ele.approvalNumbers}  alt="">
                </div>
                <div class="op">
                    <span>共<b>${ele.shops}</b>个商家有售</span>
                    <a href="detailPage.html?name=${ele.name}">查看详情</a>
                </div>
                <p class="factory">${ele.manufacturers}</p>
            </li>`
        }).join("");        
        $(".goodsLists").html(html)
    }

    function Event(){
        $(".goodsLists").children().hover(function(){
            $(this).find(".factory").toggle();
            $(this).find(".op>a").toggle();
        })
        $(".filter").on("click","span",function(){
            typeVal = $(this).data("type");
            getDataWithPageCount(1, typeVal);
            $("#page a").eq(0).addClass("active").siblings().removeClass("active");
        })
    }
})
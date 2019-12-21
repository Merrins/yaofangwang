$(() => {
    $.getJSON("./server/sliderData.json",
        function (data) {
            // 获取轮播图data
            $(".banner").slider(data, this);
        }
    );
    $.getJSON("./server/menuData.json",
        function (data) {
            // console.log(data);

            $(".tl").menubar(data, this)
        }
    );
    // 顺序获取
    new Promise(function (resolve, reject) {
        $.getJSON("./server/activityData.json",
            function (data) {
                console.log("限时购数据", data);
                getxsg(data);
                resolve();
            }
        );
    }).then(function () {
        $.getJSON("./server/floorData.json",
            function (data) {
                console.log("楼层数据", data);

                $(".main").append($("<div class='floorBox'></div>"))
                data.map((ele) => {
                    let manager = new FloorManager(ele);
                    manager.init();
                })
            }
        );
    }).then(function(){
        $.getJSON("./server/moreData.json",
            function (data) {
                console.log("还没看够数据",data);
                moreData(data);
            }
        );
    });
    // 限时购
    function getxsg(data) {
        let html = data.map(function (ele) {
            return `
            <div class="item">
                <a href="#" class="img"><img src=${ele.src} alt=""></a>
                <a href="" class="name">${ele.name}</a>
                <div class="price" >￥${ele.price}</div>
            </div>
            `
        }).join("")
        let xsgBox = $(`<div class="xsg">
                            <div class="h2">
                                <i></i>
                                <span class="title">限时购</span>
                            </div>
                            <div class="cont">${html}</div>
                            </div>`);
        $(".main").append(xsgBox)
    }

    // 还没看够
    function moreData(data){
        let mhtml = data.map(function(ele){
            return `
            <div class="listitem">
                <img src=${ele.src} alt="">
                <a href="" class="name">${ele.name}</a>
                <p class="price">￥${ele.price}</p>
            </div>
            `
        }).join("")
        let moreBox = $(`
        <div class="mitem">
            <div class="mitem_title">
                <div></div>
                <p class="mitem_txt">还没看够</p>
                <div></div>
            </div>
            <div class="mitem_list">${mhtml}</div>
        </div>                
        `)
        $(".main").append(moreBox)
    }

    // 右边
    $(".slideRightBox").children().hover(function () {
        $(this).toggleClass("hover");
    });

    $(".slideRightBox").find(".last").click(function () {
        $('body,html').animate({
            "scrollTop": 0
        }, 500);
    })
    // 左边
    $(".floormove").children().hover(function () {
        // console.log("+++");
        $(this).toggleClass("on");
    })
    $(".floormove").children().click(function () {
        console.log($(this).index());
        // console.log($(".floor").eq($(this).index()).offset().top);
        let t = $(".floor").eq($(this).index()).offset().top;
        $('body,html').animate({
            "scrollTop": t
        }, 500);
        $(this).addClass("active").siblings().removeClass("active")
    })
    // 监听滚动条
    $(window).scroll(function (event) {
        if ($(window).scrollTop() < 900) {
            $(".floormove").fadeOut(500)
            $(".floormove").children().removeClass("active");
        } else {
            $(".floormove").fadeIn(300)
        }

    })
})
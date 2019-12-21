// 轮播图插件
(function ($) {

    class SliderManager {
        constructor(data, root) {
            this.data = data;
            // 传入的root--即传入的- $(标签)
            this.root = $(root);
            this.timer = null;
            this.index = 0;
            this.oBox = null;
            this.sliderImg = null;
            this.control = null;
            this.sliderNav = null;
        }
        init() {
            this.renderUI();
            this.autoPlay();
            this.addMouseenterEventHandler();
            this.addClickEventHandler();
            this.addClickEventHandlerWithNavItem()
        }
        renderUI() {
            this.oBox = $("<div class='sliderBox'></div>");
            this.sliderImg = $("<ul class='sliderImg'></ul>");
            this.control = $("<div class='control'><span class='prev'>&lt;</span><span class='next'>&gt;</span></div>");
            this.sliderNav = $("<ol class='sliderNav'></ol>");
            let oImg = this.data.src.map((ele, index) => `<li style= "${index == 0 ? "" : "display:none;"} background:${this.data.bg[index]};"><img src=${ele} alt=""></li>`).join("");
            let oNav = this.data.nav.map((ele, index) => `<li class =${index == 0 ? "on" : ""}>${ele}</li>`).join("");
            this.sliderImg.html(oImg);
            this.sliderNav.html(oNav);
            this.oBox.append(this.sliderImg);
            this.oBox.append(this.control);
            this.oBox.append(this.sliderNav);
            this.root.append(this.oBox);

            // console.log((this.oBox)[0]);
            // console.log(this.root);
            
            
            // 一大块分小块命名生成（可以调用复用），再拼起来
        }
        autoPlay() {
            // console.log(this.sliderImg.children());
            this.timer = setInterval(() => {
                this.next()
            }, 3000)
        }
        addMouseenterEventHandler() {
            this.sliderImg.hover(() => {
                clearInterval(this.timer);
            }, () => {
                this.autoPlay();
            })
            // 添加滑动事件的标签一定要，覆盖改变的标签，否则当进入其他标签是闪闪闪闪
            this.oBox.hover(()=>{
                this.control.toggle();
                this.sliderNav.toggle();
            })

        }
        addClickEventHandlerWithNavItem() {
            let self = this;
            this.sliderNav.on("mouseenter", "li", function () {
                $(this).addClass("on").siblings().removeClass("on");
                self.sliderImg.children().eq($(this).index()).show().siblings().hide();
            })

        }
        prev() {
            this.index--;
            if (this.index == -1) {
                this.index = this.data.src.length - 1;
            }
            this.sliderImg.children().eq(this.index).show().siblings().hide();
            this.checkNavItem()
        }
        next() {
            this.index++;
            if (this.index == this.data.src.length) {
                this.index = 0;
            }
            this.sliderImg.children().eq(this.index).show().siblings().hide();
            this.checkNavItem()
        }
        checkNavItem() {
            this.sliderNav.children().eq(this.index).addClass("on").siblings().removeClass("on");
        }
        addClickEventHandler() {
            this.control.on("click", ".prev", () => {
                this.prev()
            })
            this.control.on("click", ".next", () => {
                this.next()
            })
        }


    }
    // 添加到jq原型对象上
    $.prototype.extend({
        slider(data) {
            // this.each指向调用的实例对象，每个都fn;  参数this
            this.each(function () {        
                let manager = new SliderManager(data, this);
                manager.init();
            })
        }
    })
})(jQuery)
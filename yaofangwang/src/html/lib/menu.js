(function ($) {
    class MenuManager {
        constructor(data, root) {
            this.data = data;
            this.root = $(root);

        }
        init() {
            this.renderUI();
            this.addMouseenterEvent()
        }
        renderUI() {
            let leftBox = this.data.map((ele) => {
                let html = ele.such.map((item) => {
                    return `<a href="./html/goodsList.html" target="_blank">${item}</a >`
                }).join("");
                return ` 
                <li>
                    <i></i>
                    <p>${ele.name}</p>
                    <div class="">${html}</div>
                </li>`
            }).join("");

            let rightBox = this.data.map((ele) => {
                let sitemsBox = ele.list.map(item => {
                    let html = item.suml.map(item1 => {
                        return `<a href="">${item1}</a>`
                    }).join("");
                    return `<li>
                                <h3 class="type">${item.type}</h3>
                                <div>${html}</div>
                            </li>`
                }).join("");


                let imghtml = ele.item.simg.map(item2 => {
                    return `<li><img src=${item2} alt=""></li>`
                }).join("")
                let lhtml = ele.item.move.map(item3 => {
                    return `<li>${item3}</li>`
                }).join("")

                return `<div class="content">
                            <ul class="sitems">${sitemsBox}</ul>
                            <div class="rmpp">
                                <ul class="pz">${imghtml}</ul>
                                <img class="bi" src=${ele.item.gimg} alt="">
                                <div class="hg">
                                    <h6 class="name">推荐商家</h6>
                                    <ul class="hg-list">${lhtml}</ul>
                                </div>
                            </div>
                        </div>`
            }).join("");

            let oBox = $(`<div class="menu">
                                <ul class="left">${leftBox}</ul>
                                <div class="right">${rightBox}</div>
                            </div>`);
            this.root.append(oBox);
        }
        addMouseenterEvent() {
            this.root.on("mouseenter", ".left>li", function () {
                $(this).addClass("hover").siblings().removeClass("hover");
                $(this).parent().parent().find(".right").show();
                $(this).parent().parent().find(".right .content").eq($(this).index()).show().siblings().hide();
            })
            // 移出-范围
            this.root.mouseleave(function(){
                $(this).find(".left li").removeClass("hover");
                $(this).find(".right").hide();
                $(this).find(".right .content").hide();
            })
        }
    }
    $.prototype.extend({
        menubar(data) {
            this.each(function () {
                let manager = new MenuManager(data, this);
                manager.init()
            })
        }
    })
})(jQuery)
class FloorManager {
    constructor(data) {
        this.data = data;
        this.root = null;
    }
    init() {
        this.renderUI();
        this.insertView();
        this.addmouseenterEventHandler();
        this.addsEventHandler()
    }
    renderUI() {
        // console.log(this.data.nav);
        
        let navhtml = "";
        if(this.data.nav.length != 0){
            navhtml = this.data.nav.map((ele,index) => `<a href="" class="${index==0?"cur":""}">${ele}</a>`).join("");
        }
        let slidehtml = this.data.left.bimg.map((ele,index) => `<img src=${ele} style=${index == 0 ? "display:block" : "display:none"} alt="">`).join("");

        let pphtml = this.data.left.brabd.map(ele => `<li><img src=${ele} alt=""></li>`).join("");

        let listhtml = this.data.right.map((ele, index) => {  
            let html = ele.map(item => {
                let infohtml = item.info != ""? `<div class="info">${item.info}</div>`:""
                return `<li class="">
                                <img class="photo" src=${item.img} alt="">
                                <a href="" class="txt">${item.name}</a>
                                <p class="st">${item.ml}</p>
                                <p class="price">${item.price}</p class="">
                                ${infohtml}      
                        </li>`
            }).join("");
            return ` <ul class="clist" style = ${index == 0 ? "display:block" : "display:none"}>${html}</ul>`
        }).join("");

        let oFloorBox = $(`<div class = "floor">
                                <div class="title">
                                    <span class="layer">
                                        <i class="l">${this.data.layer}</i>
                                        <i class="f">F</i>
                                    </span>
                                    <h2>${this.data.title}</h2>
                                    <div class="snav">${navhtml}</div>
                                </div>
                                <div class="content">
                                    <div class="cleft">
                                        <div class="slide2">${slidehtml}</div>
                                        <ul class="pp">${pphtml}</ul>
                                    </div>
                                    <div class="cright">${listhtml}</div>
                                </div>
                            </div>`)
        this.root = oFloorBox;
    }
    insertView() {
        $(".floorBox").append(this.root)
    }
    addmouseenterEventHandler() {
        Array.from(this.root.find(".snav").children()).forEach((ele,index)=>{
            $(ele).mouseenter(()=>{
                $(ele).addClass("cur").siblings().removeClass("cur");
                this.root.find(".cright").children().eq(index).show().siblings().hide()
            })
        })
    }
    addsEventHandler(){
        let index = 0;
        let timer = setInterval(()=>{
            index++;
            if(index == 2){
                index = 0;
            }
            this.root.find(".slide2 img").eq(index).show().siblings().hide();
        },5000)

    }

}
let data = [];
let main = $(".goodlist li")
main.each(function(){
    let A = {}
    A.src = $(this).find(".photo img").attr("src")
    A.price = $(this).find(".money").text().slice(1)*1
    A.name = $(this).find(".txt").text()
    A.specification = $(this).find(".st:eq(0)").text().slice(3)
    A.dosageForm = $(this).find(".st:eq(1)").text().slice(3)
    A.approvalNumbers = $(this).find(".ph img").attr("src")
    A.shops = $(this).find(".op b").text()*1
    A.manufacturers =$(this).find(".n").text().slice(5)
    data.push(A);
})

let data = []
let main = $("#rcmnd-item").find(".rp-item")
main.each(function(){
    let A ={}
    A.src = $(this).find("img").attr("src");
    A.name = $(this).find(".rpi-name").text();
    A.price =  $(this).find(".rpi-money").text()
    data.push(A)
})


let data = [];
let main = $(".mitem:not(:last)")

for(let i = 0 ,len = main.length;i<len;i++){
    let A = {};
    A.layer = i +1;
    A.title = $(main[i]).find(".title h2").text();
    A.nav = [];
    $(main[i]).find(".snavs").children("a").each(function(){
        A.nav.unshift($(this).text())
    })

    A.right=[];
    $(main[i]).find(".hlist2").each(function(){
        let B = [];
        $(this).children().each(function(){
            let C = {};
            C.img = $(this).find(".photo img").attr("src");
            C.name = $(this).find(".txt").text();
            C.ml = $(this).find(".st").text();
            C.price = $(this).find(".money").text();
            C.info = $(this).find(".gx").text();
            B.push(C);
        })
        A.right.push(B) 
    })
    A.left = {};
    A.left.bimg = [];
    A.left.brabd = [];
    $(main[i]).find(".slide2 li img").each(function(){
        A.left.bimg.push($(this).attr("src"))
    })
    $(main[i]).find(".pp img").each(function(){
        A.left.brabd.push($(this).attr("src"))
    })
    
    data.push(A);
}





let data = [];
let main = $(".maincat ").children();
let main1 = $(".subcat ")
for(let i = 0 ,len = main.length;i<len;i++){
    let A = {};
    A.name = $(main[i]).find("h2").text()
    A.such = [];
    $(main[i]).find(".sub a").each(function(){
        A.such.push($(this).text())
    });

    A.list = [];
    let main2 = $(main1[i]).find(".sitems li:not(:last)");
    main2.each(function(){
        let C = {};
        C.type = $(this).find(".bit").text();
        C.suml = []
        $(this).find("a:not(:first)").each(function(){
            C.suml.push($(this).text())
        })
        A.list.push(C); 
    })

    A.item = {}
    A.item.simg=[]
    A.item.move =[]
    $(main1[i]).find(".pp img").each(function(){
        A.item.simg.push(this.src)
    })

    A.item.gimg=$(main1[i]).find(".adout img").attr("src");
    $(main1[i]).find(".tj li").each(function(){
        A.item.move.push($(this).text());
    })
    data.push(A)
}
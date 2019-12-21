$(()=>{
    // left
    $(".container .left").find("li:not(:first)").hover(function(){
        $(this).find(">div").toggle();
    })
    // right
    $(".container .right").find(".daohang").hover(function(){
        $(this).find(".other").toggle();
        $(this).toggleClass("hover")
    })
    $(".container .right").find(".person").hover(function(){
        $(this).toggleClass("hover")
        $(this).find(".menu_list").toggle();
    })
    $(".container .right").find(".carts").hover(function(){
        $(this).toggleClass("hover")
        $(this).find(".cart_box").toggle();
    })
})
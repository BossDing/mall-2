$(".single li span").bind("click",function(){
	Image.Select(this);
});
$(".goodScore li").bind("click",function(){
    $(".goodScore li").css("background-image","url(images/qp_xqpl0.png)");
    var n = $(this).index();
    $("#commentScore").val(n+1);
    for(i=0;i<=n;i++){
        $($(".goodScore li")[i]).css("background-image","url(images/qp_xqpl.png)");
    }
    $(".goodScore li").children().hide();
    $(this).children().show();
});
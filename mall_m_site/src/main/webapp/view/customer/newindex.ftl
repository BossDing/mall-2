<!DOCTYPE html>
<html>
<head>
<#assign basePath=request.contextPath>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=0.9,user-scalable=no"/>
    <meta name="MobileOptimized" content="320">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link href="${basePath}/css/style.css" rel="stylesheet">
    <link href="${basePath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${basePath}/css/idangerous.swiper.css" rel="stylesheet">
    <link rel="stylesheet" href="${basePath}/css/person.css">
    <title>个人中心</title>
 <script>if(myObj&&myObj.setHomeFlag){myObj.setHomeFlag('false');}</script> <script>if(myObj&&myObj.setHomeFlag){myObj.setHomeFlag('false');}</script></head>
<body style="font-size:16px;">
<div class="head">
<#-- <div class="pc"><#include "../../publicHeader2_ftl.ftl" /></div>-->
    <div class="account">
    <#--<span class="sp1"><a href="#"><img src="${basePath}/images/newimage/mail.png"></a></span>-->
        <span class="sp2" id="accountManage">账户</span>

        <p><strong>${cust.customerNickname!""}</strong><#if cust.isEnterprise=="1"><em>企业用户</em><#else><em>个人用户</em><em
                id="comAuth">企业认证<i>x</i></em></#if></p>
        <br class="clear">
    </div>
    <div class="colect">
        <p class="co-p1" id="myfollw"><br><span id="myfollwCount">0</span><br>收藏的商品</p>

        <p class="co-p2" id="browserecord"><br><span id="browserecordCount">0</span><br>浏览记录</p>
    </div>
    <div class="cus-head">
        <img src="<#if (cust.customerImg!'') !="">${cust.customerImg}<#else>${basePath}/images/newimage/mall.png</#if>">
    </div>
</div>
<div class="order">
    <a href="${basePath}/customer/myorder.html?tag=4" class="order-my"><span
            class="ord-sp1">我的订单</span><img src="${basePath}/images/newimage/qp_sxq.png"><span
            class="ord-sp2">全部订单</span></a>

    <div class="oblig">
        <a href="${basePath}/customer/myorder-0-1.html?tag=4" class="obl-left">待付款</a>
        <a href="${basePath}/customer/myorder-3-1.html?tag=4" class="obl-center"><span
                id="myoverOrderCount">2</span>待收货</a>
        <a href="${basePath}/customer/myorder-4-1.html?tag=4" class="obl-right">待评价</a>
    </div>
    <br class="clear">
</div>
<div class="wealth order" style="display: none;">
    <p class="wealth-my"><span class="ord-sp1">我的财富</span></p>

    <div class="int">
        <a class="int-p1" href="#"><img src="${basePath}/images/newimage/coupon.png">优惠券<span id="couponCount">0</span></a>

        <p class="int-p2"><img src="${basePath}/images/newimage/int.png">积分<span id="pointSum">0</span></p>
        <br class="clear">
    </div>
</div>

<div class="fit">
    <a href="tel:96008" class="fit3 invite"><span class="ord-sp1">联系客服</span><img
            src="${basePath}/images/newimage/qp_sxq.png"><span class="fit-sp">96008</span></a>
</div>
<!--分享好友弹出层-->
<div id="ctDia" class="bh-dialog dia101" style="display: none;">
    <div class="dia-tit">
        <h4>分享好友</h4>
        <a class="dia-close" href="javascript:;" onclick="clss(this)" target="_self"></a>
    </div>
    <div class="dia-cont">
        <div class="dia_collect_intro tc pt30" style="text-align: center;padding-top: 30px;">
            <span id="content" style="font-size:16px">http://test.qpmall.com/mobile/register.html?NTAi</span><br>
            <img class="dia-logo" src="http://test.qpmall.com/images/brand/logo.jpg" width="50px" height="50px" style=" position: absolute;top: 150px; left: 200px">
            <div id="qrcode" style="width:150px; height:150px; margin: 0 auto"><canvas width="150" height="150" style="display: none;"></canvas><img alt="Scan me!" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAACWCAYAAAA8AXHiAAALS0lEQVR4Xu2d23bjOgxD2///6DkrKzmta8kENyklvWAeJ4pEgyB4sZ2+v729/Xvb/O/fv69HvL+/p088fpd873zALhvIvue1Rxs71xaBSexLOyWx8OZhE0sAFZGbOM7ESjCSLCHgR0rTiepdNpB9/yyxogsnRDoTYBX4Zxs6RCPXc1yrroWoG0mF1X0VZrt8/iUV7jpEOSNyXEQAE+uODvGbCvpqwJ33NbEgkipIqsqigqS6rxXrgUAn+iBHSstNrDlsSLFUFF2lMCK31TNml3fc61UEJcqyy17SJFTHOSrAwlRYdbqJdae9wsHESiQNEqmkGyKF/S5HJS7/YwnBYZe9f1axqoASB6u1kRpHMq9SQNWpHXuj2R8p3qsZaqbOL0mFJlZ/TBARsUpuE0uFd+JzK9ZIbhMrQRy1xMQysT44orosRaarz1WkVlPLyvqGNAURDhGGCoeokfoWc6xqjWVi5cYYJtY3vc+1qsuyYj0QUK10thNRymLF4vXNr0qFq2oWMhdSUZ7N8ypIVjkqsrdzW4nUdbsUlvgf1Vhk4+PalYr1jO5N2UtweIYaqyKbkJKQn9RuL39sRl2YiTW688cRi0QmWUtSIWmHve9Yq93+J1JNRUri11DBXv0yxcpaiABKaqzfvO8qIg21ponVe7zlpyusidV8vumnE2CXwm4j1j9VPe86+WLfZ9UA2bEFaeXP9Q35rupMq7i8yr3vJtb4lgvpRDtzt+qIhsS6ifVAqxqZBGylJCZWB837d61Yk/uVJtYTiaVqACLrq9b2L3++gxqBZOszso9S0XBmdPqRFZL+SIYgb/SkFcvE4iQ0sRKhb2KZWEixsgNSIq+kU0pw+mOJsoHIepTOiP3KpijtZ1Pqbd2uORa5YY0wM7H0j2p0inkTS0gHiUwS8VasOwKqHrNiTZhSTVG0U6qeo4LGijU6VWIWTd7JXX2iPNXagpyhSEYUIJvOiH0zlYrOqdZC1Kbq+kFxTSz9dIOJpelmYj0wsmJpspAVJpaJRfiSXjsQKztuoIV0Nn3IIjD4TfhVdYfqyCJ0OzbsUk0yyCQ2qLr1i89NLN3qm1h3BEwsCIIVa06cDi7hTWjCUCK/ZNwQrU0XAIJoKh2Tc1at3TU7I9faepw7O25QgJlYCiH2uYmV6LJIjbIK0POZu/ZldMmvXmUveSpFYYYKfSuWvgmdp8O6lb+KWNWaah2c8U4q+qJbUCoas3WfqlHIbTCiAFWMlU/V9ZTPPSqWMmJVIV02VjyCa2KNyCqfmljNF1atWPNwNrFMrJLQv0yxjpP3VezddTFqX9J9HteurN1K3k8MdIlvqiWBGoiSkdJTfh/rDDYBKSIAcSK5pxcBXLVd2aqChpxrYim0T58r8K1YdwS+PbFWGRgVzh35Jcqi0h1JjTAePpZ3bMiOQ27rSMpaNfI4X1v6b+koKV5Fwtb9qcM4ghBWdYzq2rNEM7EeSK0iixVrTFFnZVHktmIl/ijArul0dV/lVCuW1uQwFZLubVUhTdKDIkA1qsm+CiOi8qSuWxU0u7LHsG/0BClp0TWnP1fsKhhNrDsCRGGrhFXC8qV4V9EYRZiJNdZRVQfPyFElgPJLdV8Ta9KIqKhWoGWV0cS6oPWqlBVFjXJiNR2rcYOK5OrnBLOqWhDbduGrbEinwk6RbWLNax8TK/FkgWLw1ee7IsqKNdZ8Mx9UM4Ly95e3dDpTb9I6kyaA1ClEGcm+EfmJY8iZz7oWkrqJ30wsFXqNV8eeVT4Qwu4SjzOMJpaJ9YEACQRVwphYJtYeYmUn74TNCV9dLlGRkJ0hKRvIoyXRmZ1aiNRu1bUqTa7qTMv3Ck2s+cjAxJp3ny+fYw1FX/CzRee1nZGCFWskhMKTdMAmVuJFBqdCrdZDKtzxwiqpk4gKqYiK0pKqNUhKq55DWn1VI2bJvssX0m8mlnYhcQ5JF9V0rJxKBpkkSFADYWKZWFcIkAwxrM3+2oxKJbva1qzkqyaAKEkniqsqRJy4S7GUj4kSpn/RTx1qYo0FbieFdr5LCLAqcIfAtmKxH21VymLFeowxTCwT63+1UVmJKGE5FRKpjmoCMtFfdebNnih1R/VaR7FWOo7UgatGKeRMEyvxVku1fiRBo5oP3bt+rngWgaP6zMQysQhnL9cuGzesSkskqled6VT4yY8OpqFirfqTJ8+oWTrpIqqNSOpQ4U3SJqlZSOFMZnbk0WQ0eTex2JvDJtYcgSFwTSwT63+qqLKkrFiddLErVz+jVSa3SFQ6rg5IlQ0kxRIbSBlAbNjyw2sqXVRrC+XUzrlRIUrITZxKcCBOJTaYWBMvrFJJpRYm1h0BQm4r1oQ11Si+bUXU4lcrVvQ8VrUVVbc9SMoirXN1347yrbKvQ2ZCUIJR54nXZe8VEpkkF7fKcVG6M7HmHjGxCFMfa3elrKMphLBWrIljaGFHeGDFGtHaRVjVdZNgLL/+RVJLZz5W7cgUecmwT+11pVKq1iRBU1W0jg0E+4GU1VfsTSxdl3ScqqbgWad3bMieMVtnxWqOG6L00XHqnyEWSQedXN1JD6QzJfXC8XpISiI4qLVkpECeNOn4NWpU0orVMYC0rSbWHelOgW5iwd82VenBijWSsqOwREzOvrFiNdWhAz5R5z+TCjvpjcg8ATTK+YQAxOGqQM/aTzBRKvSMVKjsLSuWiXWnjIl1MXbJzrFU11K9YU2U5LyWKAs5h+xrYplYaW6ZWBoqmQqjV+yj7VWHpk3LtdWqnqie0yFPtpZTalZVebJvFh+6zsR6IEYCobP26CBCAHVmdZRCCZNdb2KZWFmuoHWSWMfivZN21EFXkay+V00XqtCvtuRKWbJpctZRZj2rMMuOOEhDdltLVDN85j17oedD1ffIfToTa0TTxLpgmIl1B6aaIUwsEysU719NrO8+boi6LFUjZL+r6qZqPUbsU+UD6Taz103tIyOa8PexootVzsgCRWRdRXi0FwElGhMoGwhmWYxII6LWduwjGJpYiUd3rFi6Jhwem3EqHB+qs2LNdQ0p1qvnWDTPZ9OHSllkJkMArXa8CgdiQxYjtU7dOQjTqomlH30hTjWx7nR7+YBURaqKqqvPrVhV5D6/11Ksao3VMbvavRESElAUCY/nki5WYbRLCVeNG4h9g29MLDYBN7EeqU78JdzyuEFFY3Vesko9rFh6RKAygBVrwmIT68XEqv5qMlGsjgqRpxtW1ULEXhX1EU7kHDKkrY5S1N0UUhuHb+kQ8uwA8LaniTXWNIqQJtaEjVHUqIiyYmkSdvC1YsG3m8/8VopQbUw65/zoVNgBNFKLzr6kve+ck7V/pWqSKT2ZTRESZq/7tq6sWM9wDK3bTKwRMeUnEyvBMhPrFxKr6lSSLhLc+lii7CGphXSbKAUcJtJKWUitRvZSOGUx75yZ/ssUyhjiKLXX1ecKMBNr7AqrWJ9HPWqf4UG/6LEZ5cirgtKKdUeGRPzZcR0Mid8iwhD7TawHkkRhnQqVXo0d40tSIZkM74qoavuuICZRrva6GgWQM5R6kQBD9r4iFZpYxEVj3WRiTdLO7b9MLBMrjQCRVBMrDet01GLFulCsq9pBwa0ArRJWPbtFxhivqAk7HSTxRYT/t+sKVXFZLbIVWaJ9yRMAKhiI/Vknq2tTAXhls/KFiQV/zZg4SoFvxXo0G6veK4yijUTQs9SiOps6E4dc2/m75GbxrjS/SlGH4DSxRo1RClZ1holFCofJ2k4xacWag2/FSvx6S8RbE+sXEqspVJdfJ3VIR+2qdZ4qyIn9VRsU9qtqQnVOtvlQfvpRb+kQUNSFZ1v72zoT644WGoL/pPcKTaw5AqTZIBhGHbAKXCtW4o0eKxZXrP8AlblyfAAFqr4AAAAASUVORK5CYII=" style="display: block;"></div>
        </div>

        <div class="dia-btn" style="padding-top: 30px;">
            <a id="copy" data-clipboard-target="content" href="javascript:;" target="_self">复制</a>
            <a onclick="clss(this)" href="javascript:;" target="_self">取消</a>
            <br>
            <span style="color: red; font-size:12px">亲！如果您的好友成功注册为会员，会有积分送给您哦！</span>
            <div class="zclip" id="zclip-ZeroClipboardMovie_1" style="position: absolute; left: 117px; top: 281px; width: 100px; height: 30px; z-index: 99;"><embed id="ZeroClipboardMovie_1" src="/js/ZeroClipboard.swf" loop="false" menu="false" quality="best" bgcolor="#ffffff" width="100" height="30" name="ZeroClipboardMovie_1" align="middle" allowscriptaccess="always" allowfullscreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" flashvars="id=1&amp;width=100&amp;height=30" wmode="transparent"></div></div>
        <!--/dia_ops-->
    </div>
    <!--/dia_cont-->
</div>
<div class="foot">
    <p>由${(mobSiteBasic.technicalSupport)!''}提供技术支持</p>
</div>
<#include '../common/smart_menu.ftl' />
</body>
<script src="${basePath}/js/customer/jquery-1.11.3.min.js"></script>
<script src="${basePath}/js/fastclick.min.js"></script>
<script src="${basePath}/js/idangerous.swiper-2.1.min.js"></script>
<script src="${basePath}/js/jquery.keleyi.js"></script>
<script src="${basePath}/js/publicModel.js"></script>
<script>
    $("#accountManage").bind("click", function () {
        window.location.href = "${basePath}/customer/toAccountManage.html?tag=4";
    });
    $("#myfollw").bind("click", function () {
        window.location.href = "${basePath}/customer/myfollw.htm?tag=4";
    });
    $("#browserecord").bind("click", function () {
        window.location.href = "${basePath}/customer/toBrowserecordList.html?tag=4";
    });
    if ('${cust.isEnterprise}' != "1") {
        $("#comAuth").bind("click", function () {
            window.location.href = "${basePath}/customer/toAttestation.htm?tag=4";
        });
        $("#comAuth i").bind("click", function () {
            $("#comAuth").unbind();
            $("#comAuth").remove();
        });
    }
    $(function () {
        //我的收藏
        $.ajax({
            url: '${basePath}/getByCustomerIdCount.htm',
            type: 'post',
            async: false,
            success: function (data) {
                $("#myfollwCount").text(data);
            }
        });
        //我的浏览记录
        $.ajax({
            url: '${basePath}/getBrowserecordCount.htm',
            type: 'post',
            async: false,
            success: function (data) {
                $("#browserecordCount").text(data);
            }
        });
        //我的优惠券
        $.ajax({
            url: '${basePath}/getCouponByCustomerIdCount.htm',
            type: 'post',
            async: false,
            success: function (data) {
                $("#couponCount").text(data);
            }
        });
        //我的积分
        $.ajax({
            url: '${basePath}/getCustomerPointByCustomerIdCount.htm',
            type: 'post',
            async: false,
            success: function (data) {
                $("#pointSum").text(data);
            }
        });
        //我的待收货订单数
        $.ajax({
            url: '${basePath}/searchTotalCount.htm',
            type: 'post',
            async: false,
            success: function (data) {
                if(data==0){
                    $("#myoverOrderCount").hide();
                }else{
                    $("#myoverOrderCount").text(data);
                }
            }
        });

    });
$(".int-p1").bind("click",function(){
    window.location.href = "${basePath}/customer/coupon.html?type=1";
})
</script>
</html>
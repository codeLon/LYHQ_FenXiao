<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Hidistro.UI.Web.Vshop.Default" %>

<%@ Register TagPrefix="Hi" Namespace="Hidistro.UI.SaleSystem.CodeBehind" Assembly="Hidistro.UI.SaleSystem.CodeBehind" %>
<%@ Register TagPrefix="H2" Namespace="Hidistro.UI.Common.Controls" Assembly="Hidistro.UI.Common.Controls" %>

<!DOCTYPE html>
<html lang="en-US">
<head>
    <meta charset="UTF-8" />
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=1" name="viewport" />
    <meta http-equiv="content-script-type" content="text/javascript">
    <meta name="format-detection" content="telephone=no" />
    <!-- uc强制竖屏 -->
    <meta name="screen-orientation" content="portrait">
    <!-- QQ强制竖屏 -->
    <meta name="x5-orientation" content="portrait">
    <title><%=htmlTitleName %></title>
    <meta name="description" content="<%=Server.HtmlEncode(Desc) %>" />
    <!-- <link rel="stylesheet" href="/PublicMob/css/style.css"> -->
    <link rel="stylesheet" href="/Admin/Shop/PublicMob/css/dist/style.css">
    <link rel="stylesheet" href="/Admin/Shop/PublicMob/css/SpsBtn.css">
    <link rel="stylesheet" href="/Admin/Shop/PublicMob/css/Menu.css">
    <link rel="stylesheet" href="Admin/Shop/PublicMob/css/mobile-index.css" />
    <link rel="stylesheet" href="<%=cssSrc %>">
    <style type="text/css">
        /*隐藏美洽客服手机端右下角层*/
        .mc_button {
            display: none;
        }

        #followtx {
            max-width: 640px;
            background: #333;
            position: absolute;
            line-height: 40px;
            display: none;
            z-index: 999;
            color: #fff;
            opacity: 0.9;
        }

            #followtx input {
                border-radius: 5px;
                padding: 2px 6px;
                float: right;
                margin: 6px 50px 4px 0px;
                display: block;
                background: #46c411;
                color: #fff;
                border: 1px solid #fff;
            }

            #followtx .closeFlow {
                cursor: pointer;
                position: absolute;
                font-weight: 700;
                top: -2px;
                right: 10px;
                color: #888;
            }
        /*.g-box{display:inline-block;height:100px;float:left;margin-right:2px}
 .g-box section{float:left}
 .g-flex{margin-left:0px}*/
        .icon_buy {
            display: none !important;
        }
    </style>
    <script src="/Utility/WeixinApi.js?v=3.7"></script>
    <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
    <H2:WeixinSet ID="weixin" runat="server"></H2:WeixinSet>
    <script type="text/javascript">
        var wxinshare_title = '<%=Server.HtmlEncode(siteName)%>'; var wxinshare_desc = '<%=Server.HtmlEncode(Desc.Replace("\n","").Replace("\r",""))%>';
        var wxinshare_link = window.location.href; var fxShopName = '<%=Server.HtmlEncode(siteName)%>'; var wxinshare_imgurl = '<%=imgUrl%>'
    </script>
    <script src="/templates/common/script/WeiXinShare.js?2016"></script>
    <script>WinXinShareMessage(wxinshare_title, wxinshare_desc, wxinshare_link, wxinshare_imgurl);</script>
</head>
<body style="">
    <div id="followtx">
        <div class="closeFlow">×</div>
        <input type="button" id="FollowMe" value="立即关注" />
        关注公众号，享专属服务！
    </div>
    <div class="membersbox pad50 " id="divCommon" style="max-width: 640px; margin: 0 auto; position: relative;">
        <Hi:HomePage runat="server" ID="H_Page"></Hi:HomePage>
        <section class="members_bottom">
        </section>
        <section class="members_bottom">
            <%if (ShowCopyRight != "1")
                { %>

            <%} %>
        </section>

        <nav class="home_link">
            <div class="home_link_li">
                <a href="mTravel/LineList.aspx" class="home_link_a">
                    <div class="home_link_box mgrt tj">
                        <em>Special offer</em>
                        <span>特价产品</span>
                    </div>
                </a>
                <a href="mTravel/LineList.aspx?d=1" class="home_link_a">
                    <div class="home_link_box mglt hg">
                        <em>Outbound tourism</em>
                        <span>出境旅游</span>
                    </div>
                </a>
            </div>
            <div class="home_link_li">
                <a href="mTravel/LineList.aspx?d=2" class="home_link_a">
                    <div class="home_link_box mgrt hb">
                        <em>Domestic tourism</em>
                        <span>国内旅游</span>
                    </div>
                </a>
                <a href="mTravel/LineList.aspx?d=3" class="home_link_a">
                    <div class="home_link_box mglt rb">
                        <em>Travel around</em>
                        <span>周边旅游</span>
                    </div>
                </a>
            </div>
            <div class="home_link_li">
                <a href="mTravel/LineTheme.aspx" class="home_link_a">
                    <div class="home_link_box mgrt zy">
                        <em>Island tourism</em>
                        <span>主题旅游</span>
                    </div>
                </a>
                <a href="mTravel/VisaModel.aspx" class="home_link_a">
                    <div class="home_link_box mglt qz">
                        <em>Island tourism</em>
                        <span>签证服务</span>
                    </div>
                </a>
            </div>
        </nav>
        <!--特价线路-->
    </div>

    <div class="gy_tit">
        <em>推荐产品</em>
    </div>
    <ul class="tejia_box">
    </ul>
    <div class="pbox" id="productListContainer">
        <div class="y-shoplist-box" id="goodslist">
            <ul class="clearfix">
            
              
            </ul>
        </div>
    </div>

    <script src="/Admin/Shop/PublicMob/js/dist/lib-min.js"></script>
    <script src="/Admin/Shop/PublicMob/js/dist/main.js"></script>

    <!--<script src="/PublicMob/js/dist/cbb_jssdk.js"></script>-->
    <H2:MeiQiaSet ID="MeiQiaSet" runat="server"></H2:MeiQiaSet>
    <%--    <script src="/Admin/shop/Public/js/dist/lib-min.js"></script>--%>
    <script src="/Admin/shop/Public/js/dist/underscore.js"></script>
    <script src="/Utility/ShowIndex.js"></script>
    <script src="/Utility/jquery.cookie.js"></script>


    <script>
        $(function () {

            //检查视频参数是否出错
            if ($(".diyShowVideo").length > 0) {
                $(".diyShowVideo").each(function () {
                    $(this).find(".diy-video").each(function () {
                        if ($(this).attr("src") != null && $(this).attr("src").indexOf("false") == 0) {
                            $(this).hide(); //如果为false 则隐藏
                        }
                    });
                });
            }

            //AddMenu();

            // 点击我要分销功能
            $(document).on('click', '#fxBtn', function () {
                $("#mmexport").show();
            });
            $(document).on('touchend', '#fxBtn', function () {
                $('#fxBtn').click();
            })
            // $('#fxBtn').on('touchend',function(){
            //     $(this).click();
            // })
            $(document).on('touchend', "#mmexport", function () {
                $(this).hide();
            });
            (function () {
                $(".mingoods img").each(function () {
                    if ($(this).attr("src") == "") {
                        $(this).attr("src", "/Utility/pics/none.gif");
                    }
                });

                ///关注检查，没有关注，就引出提示，每天弹一次
                var followtype = "";
                var WeixinfollowUrl = "<%=WeixinfollowUrl%>";
                var AlinfollowUrl = "<%=AlinfollowUrl%>";
                var followurl = "";
                if (/micromessenger/i.test(navigator.userAgent.toLowerCase())) {
                    followtype = "wx"; //微信端打开
                    followurl = WeixinfollowUrl;
                }
                else if (/alipay/i.test(navigator.userAgent.toLowerCase())) {
                    followtype = "fw"; //服务窗口打开
                    followurl = AlinfollowUrl;
                }


                if (followtype != "" && followurl != "") {
                    setTimeout(function () {
                        if ($.cookie(followtype + "follow") == null) {
                            $.post("/api/VshopProcess.ashx",
                                { followtype: followtype, action: "followCheck" }, function (msg) {
                                    if (msg.type != 3) {

                                        $("#followtx").width($(window).width());
                                        $("#followtx").css("left", $("#divCommon").offset().left + "px");

                                        $(document).on('scroll', function (evt) {
                                            $("#followtx").css("top", $(document).scrollTop() + "px");
                                        });

                                        $("#followtx").show(300);
                                    } else {
                                        $.cookie(followtype + "follow", "true", { expires: 7 }); //7天再检查提醒一次
                                    };
                                });
                        }
                    }, 1000);
                }

                $(".closeFlow").click(function () {
                    $("#followtx").hide(300);
                    $.cookie(followtype + "follow", "true", { expires: 0.5 }); //12小时提醒一次
                });

                $("#FollowMe").click(function () {
                    window.location.href = followurl; //点击转到相应关注页面
                });

                ///公众号关注检查END


                // 控制添加商品的图片显示高度，确保商品布局正常
                $('.b_mingoods,.mingoods').each(function (index, el) {
                    var me = $(this),
                        imgHeight = me.find('img').width();
                    me.find('img').closest('a').height(imgHeight);
                });
                $('.board3').each(function (index, el) {
                    var me = $(this);
                    var bwidth = me.width();
                    if (me.hasClass('small_board') || !me.hasClass('big_board')) {
                        me.children('span').attr('style', 'height:' + bwidth + 'px !important;overflow:hidden;');
                    }
                    if (me.hasClass('big_board')) {
                        me.children('span').attr('style', 'height:' + (bwidth * 2 + 10) + 'px !important;overflow:hidden;');
                    }
                });
                $('.mdetail_goodsimg ul li').each(function (index, el) {
                    var me = $(this);
                    var imgWidth = me.width();
                    me.height(imgWidth);
                });




            })();
        });
    </script>

    <script type="text/javascript" src="/Admin/Shop/PublicMob/plugins/swipe/swipe.js"></script>
    <script>
        // var elem = document.getElementById('mySwipe');
        // window.mySwipe = Swipe(elem, {
        //    startSlide: 0,
        //    auto: 3000,
        //    callback: function(m) {
        //    	 indexs.eq(m).addClass('cur').siblings().removeClass('cur')
        //    },
        // });
        // window.indexs = $(".members_flash_time span");
        $(function () {
            var t = new Date().getMinutes();
            $.getJSON("/api/Hi_Ajax_GetProductsCount.ashx?t=" + t, function (data) {
                $("#goodsCount").html(data.count);
                if ($("#StoreName").length > 0) {
                    $("#StoreName").html(data.storeName);
                    if (data.logoUrl != "") {
                        $("#imglogo").attr("src", data.logoUrl);
                    }
                }
            })
            $('.j-swipe').each(function (index, el) {
                var me = $(this);
                me.attr('id', 'Swiper' + index);
                var id = me.attr('id');
                // alert(id)
                var elem = document.getElementById(id);
                window.mySwipe = Swipe(elem, {
                    startSlide: 0,
                    auto: 3000,
                    callback: function (m) {
                        $(elem).find('.members_flash_time').children('span').eq(m).addClass('cur').siblings().removeClass('cur')
                    },
                });
            });
        });

    </script>

    <script type="text/j-template" id="menu">
      <div class="menuNav" id="menuNav">
          <ul id="ul">
                    <# _.each(menuList,function(item){ #>
                    <li>
                   
                          <# if(item.SubMenus.length > 0){ #>
                            <div class="navcontent" data="1">
                            <# if(item.ShopMenuPic.length > 0){ #>
                                <img src="<#= item.ShopMenuPic#>" style="width :20px;height:20px;" />
                            <# } #>
                             <#= item.Name #>
                        
    	                    <div class="childNav">
                            <ul>
                                 <# _.each(item.SubMenus,function(chlitem){ #>
                                    <li><a href="<#= chlitem.Content #>"><#= chlitem.Name #></a></li>
                                 <# }) #>
                           </ul>
                           </div>
                
                        <# } else{ #>
                               <div class="navcontent" data="0">
                                 <a href="<#= item.Content #>">
                               <# if(item.ShopMenuPic.length > 0){ #>
                                <img src="<#= item.ShopMenuPic#>" style="width :20px;height:20px;" />
                                <# } #>
                               <#= item.Name #></a>
                         <# } #>
                        </div>
                    </li>
                    <# }) #>
            </ul>
    </div>
    </script>
</body>
</html>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>驾友网——管理员权限页</title>
<link rel="stylesheet" type="text/css" href="../css/base.css" />
<link rel="stylesheet" type="text/css" href="../css/jqtransform.css" />
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="../js/slides.min.jquery.js"></script>
<script type="text/javascript" src="../js/jquery.jqtransform.js"></script>
<script type="text/javascript" src="../js/default.js"></script>
</head>

<body>
	<#include "header.ftl">
    
    <div class="container clearfix">
    	
        <div class="left_menu fl">
        	<h2 class="hide">管理小组</h2>
            <div class="menu_wp">
            	<div class="menu_box">
                	<h3><a href="javascript:;">基本信息</a></h3>
                    <ul class="menu_list">
                    	<li><a href="javascript:;">小组资料</a></li>
                        <li><a href="javascript:;">小组头像</a></li>
                        <li><a href="javascript:;">小组背景</a></li>
                    </ul><!--/menu_list-->
                </div><!--/menu_box-->
                <div class="menu_box cur">
                	<h3><a href="javascript:;">权限管理</a></h3>
                    <ul class="menu_list">
                    	<li><a href="javascript:;">访问权限</a></li>
                        <li><a href="javascript:;">删除权限</a></li>
                        <li class="current"><a href="javascript:;">管理员权限</a></li>
                        <li><a href="javascript:;">解散小组</a></li>
                    </ul><!--/menu_list-->
                </div><!--/menu_box-->
                <div class="menu_box">
                	<h3><a href="javascript:;">成员管理</a></h3>
                    <ul class="menu_list">
                    	<li><a href="javascript:;">小组成员</a></li>
                        <li><a href="javascript:;">黑名单</a></li>
                    </ul><!--/menu_list-->
                </div><!--/menu_box-->
                <div class="menu_box">
                	<h3><a href="javascript:;">禁止回应的话题</a></h3>
                    <ul class="menu_list">
                    	<li><a href="javascript:;">禁止回应的话题</a></li>
                    </ul><!--/menu_list-->
                </div><!--/menu_box-->
                <div class="menu_box">
                	<h3><a href="javascript:;">回收站</a></h3>
                    <ul class="menu_list">
                    	<li><a href="javascript:;">回收站</a></li>
                    </ul><!--/menu_list-->
                </div><!--/menu_box-->
            </div><!--/menu_wp-->
        </div><!--/left_menu-->
		
        <div class="rig_cont fl">
        	<h3 class="rc_tit">管理员权限</h3>
            <div class="manage_cont">
            	<div class="manager_wp">
                	<h4 class="mg_tit">请选择要操作的管理员</h4>
                    <ul class="manager_list mt20 clearfix">
                    	<li class="clearfix">
                        	<div class="rowElem clearfix fl"><input type="checkbox" /></div>
                            <img class="fl" alt="" src="../images/images_24.jpg" />
                            <div class="manager_info fl ml10">
                            	<span>BY夏眠</span>
                                <p class="mt10">江苏 南京</p>
                            </div><!--/manager_info-->
                        </li>
                        <li class="clearfix">
                        	<div class="rowElem clearfix fl"><input type="checkbox" /></div>
                            <img class="fl" alt="" src="../images/images_24.jpg" />
                            <div class="manager_info fl ml10">
                            	<span>BY夏眠</span>
                                <p class="mt10">江苏 南京</p>
                            </div><!--/manager_info-->
                        </li>
                        <li class="clearfix">
                        	<div class="rowElem clearfix fl"><input type="checkbox" /></div>
                            <img class="fl" alt="" src="../images/images_24.jpg" />
                            <div class="manager_info fl ml10">
                            	<span>BY夏眠</span>
                                <p class="mt10">江苏 南京</p>
                            </div><!--/manager_info-->
                        </li>
                        <li class="clearfix">
                        	<div class="rowElem clearfix fl"><input type="checkbox" /></div>
                            <img class="fl" alt="" src="../images/images_24.jpg" />
                            <div class="manager_info fl ml10">
                            	<span>BY夏眠</span>
                                <p class="mt10">江苏 南京</p>
                            </div><!--/manager_info-->
                        </li>
                    </ul><!--/manager_list-->
                    
                    <div class="manager_operating mt10 clearfix">
                    	<div class="rowElem clearfix fl mr10"><input type="button" value="免去已选择的管理员" /></div>
                        <div class="rowElem clearfix fl mr10"><input type="button" value="添加新管理员" /></div>
                        <div class="rowElem clearfix fl mr10"><input type="button" value="转让本小组" /></div>
                    </div><!--/manager_operating-->
                </div><!--/manager_wp-->
                
                <div class="manager_per mt50">
                	<h4 class="mg_tit">以下是管理员的权限</h4>
                    <ul class="per_list mt30">
                    	<li>删除帖子</li>
                        <li>删除图片</li>
                        <li>删除评论</li>
                        <li>帖子管理<span>（置顶、热帖、精选、取消）</span></li>
                        <li>成员管理<span>（除了提升管理员之外的全部权限，包括黑名单管理、提出成员、释放黑名单）</span></li>
                        <li>管理回收站<span>（删帖和恢复）</span></li>
                        <li>修改帖子回应权限<span>（禁止回应和恢复、删除回复权限、修改帖子权限）</span></li>
                        <li>管理小组设置<span>（小组头像、小组简介、小组背景图、访问小组方式、小组名称）</span></li>
                    </ul><!--/per_list-->
                </div><!--/manager_per-->
            </div><!--/manage_cont-->
            <script type="text/javascript">
				$(function() {
					$(".rowElem").jqTransform();
				});
			</script>
        </div><!--/rig_cont-->
    </div><!--/container-->
   <#include "footer.ftl">

</body>
</html>
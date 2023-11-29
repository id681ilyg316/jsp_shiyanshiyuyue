<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>实验室预约平台 - 后台管理面板</title>
<link rel="StyleSheet" href="dtree.css" type="text/css" />
	<script type="text/javascript" src="dtree.js"></script>

<link href="css_admin/admin_skin.css" rel="stylesheet" type="text/css" />
<link href="css_admin/alogin_skin.css" rel="stylesheet" type="text/css" />
<link href="css_admin/topleft_skin.css" rel="stylesheet" type="text/css" />
<link href="css_admin/manage_menu.css" rel="stylesheet" type="text/css" />
<link href="css_admin/newdiv_window.css" rel="stylesheet" type="text/css" />

</head>



<body class="menu_body" >

<base target="frame_main" />
<div class="amanagemenu_div">
  <div class="Left_NavTop"></div>
  <span class="mmenu_title2">网站栏目</span>
  
  
  
  <div class="dtree">

	<script type="text/javascript">
		d = new dTree('d');

		d.add(0,-1,'');
		d.add(1,0,'authority','','个人资料管理 ',"","","","","","","","open");
		d.add(2,0,'authority','','实验室预约 ');
//		d.add(3,0,'authority','','老师评论管理 ');
//		d.add(4,0,'authority','','我的成绩查询 ');
//		d.add(5,0,'authority','','系统管理 ',"","","","","","","","open"); 
		
		d.add(12,1,'authority','','个人资料管理 ',"","","xueshengxinxi_updt2.jsp");
		//d.add(13,1,'authority','','管理员用户 ',"","","yhzhgl.jsp");
		//d.add(14,1,'authority','','注册用户管理 ',"","","yonghuzhuce_list.jsp");
		
		d.add(12,2,'authority','','实验室预约 ',"","","shiyanshixinxi_list_yy.jsp");
		d.add(13,2,'authority','','我的预约记录 ',"","","yuyuejilu_list2.jsp");
				
		d.add(12,3,'authority','','老师评论管理 ',"","","jiaoshixinxi_list_pl.jsp");
		
//		d.add(12,4,'authority','','考勤添加 ',"","","kaoqinjilu_add.jsp");
		d.add(13,4,'authority','','我的成绩查询 ',"","","chengjixinxi_list2.jsp");
		
//		d.add(12,5,'authority','','友情连接添加 ',"","","youqinglianjie_add.jsp");
//		d.add(13,5,'authority','','友情连接查询 ',"","","youqinglianjie_list.jsp");
//		d.add(14,5,'authority','','系统公告设置 ',"","","dx.jsp?lb=系统公告");
//		d.add(15,5,'authority','','系统简介设置 ',"","","dx.jsp?lb=系统简介");
//		d.add(16,5,'authority','','留言管理 ',"","","liuyanban_list.jsp");
//		d.add(17,5,'authority','','数据备份 ',"","","databack.jsp");
		document.write(d);
		
	</script>

</div>
  <span class="mmenu_title2">版权所有</span>
  <p style="padding-left:10px;">实验室预约平台 <br />开发日期：<%java.util.Date date = new java.util.Date();
java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA);

String result = format.format(date);
out.print(result);%><br />联系电话：xxxxxxx</p>
</div>
</body>
</html>
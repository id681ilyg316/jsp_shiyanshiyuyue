<%@ page language="java"  pageEncoding="gb2312"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />


<title>实验室预约平台 - 后台管理面板</title>

<link href="css_admin/admin_skin.css" rel="stylesheet" type="text/css" />
<link href="css_admin/alogin_skin.css" rel="stylesheet" type="text/css" />
<link href="css_admin/topleft_skin.css" rel="stylesheet" type="text/css" />
<link href="css_admin/manage_menu.css" rel="stylesheet" type="text/css" />
<link href="css_admin/newdiv_window.css" rel="stylesheet" type="text/css" />

</head>


<frameset rows="121,*" framespacing="0" border="0" frameborder="0">
  <frame name="frame_top" src="top.jsp" scrolling="no" noresize="true" target="frame_main" />
  <frameset cols="179,*">
    <frame id="frame_left" name="frame_left" src="mygo.jsp" scrolling="auto" target="frame_main" />
    <frame id="frame_main" name="frame_main" src="sy.jsp" scrolling="yes" target="frame_main" style=" margin-right:5px;" />
  </frameset>
  <noframes>
  <body topmargin="0" leftmargin="0">
  <p>此网页使用了框架，但您的浏览器不支持框架。请访问<a href="http://cny8.taobao.com/">助学系统</a></p>
  </body>
  </noframes>
</frameset>

</html>
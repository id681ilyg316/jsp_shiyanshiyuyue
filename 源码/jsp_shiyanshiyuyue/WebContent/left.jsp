<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ʵ����ԤԼƽ̨ - ��̨�������</title>
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
  <span class="mmenu_title2">��վ��Ŀ</span>
  
  
  
  <div class="dtree">

	<script type="text/javascript">
		d = new dTree('d');

		d.add(0,-1,'');
		d.add(1,0,'authority','','ϵͳ�û����� ',"","","","","","","","open");
		d.add(2,0,'authority','','ʵ���ҹ��� ');
		d.add(3,0,'authority','','ѧ����Ϣ���� ');
		d.add(4,0,'authority','','��ʦ��Ϣ���� ');
		d.add(5,0,'authority','','ϵͳ���� ',"","","","","","","","open");
		
		d.add(12,1,'authority','','�޸����� ',"","","mod.jsp");
		d.add(13,1,'authority','','����Ա�û� ',"","","yhzhgl.jsp");
//		d.add(14,1,'authority','','ע���û����� ',"","","yonghuzhuce_list.jsp");
		
		d.add(12,2,'authority','','ʵ������� ',"","","shiyanshixinxi_add.jsp");
		d.add(13,2,'authority','','ʵ���ҹ��� ',"","","shiyanshixinxi_list.jsp");
		d.add(14,2,'authority','','ԤԼ��¼���� ',"","","yuyuejilu_list.jsp");
				
		d.add(12,3,'authority','','�༶��Ϣ��� ',"","","banji_add.jsp");
		d.add(13,3,'authority','','�༶��Ϣ���� ',"","","banji_list.jsp");
		d.add(14,3,'authority','','ѧ����Ϣ��� ',"","","xueshengxinxi_add.jsp");
		d.add(15,3,'authority','','ѧ����Ϣ���� ',"","","xueshengxinxi_list.jsp");
		
		d.add(12,4,'authority','','��ʦ��Ϣ��� ',"","","jiaoshixinxi_add.jsp");
		d.add(13,4,'authority','','��ʦ��Ϣ���� ',"","","jiaoshixinxi_list.jsp");
		
//		d.add(12,5,'authority','','����������� ',"","","youqinglianjie_add.jsp");
//		d.add(13,5,'authority','','�������Ӳ�ѯ ',"","","youqinglianjie_list.jsp");
//		d.add(14,5,'authority','','ϵͳ�������� ',"","","dx.jsp?lb=ϵͳ����");
//		d.add(15,5,'authority','','ϵͳ������� ',"","","dx.jsp?lb=ϵͳ���");
//		d.add(16,5,'authority','','���Թ��� ',"","","liuyanban_list.jsp");
		d.add(17,5,'authority','','���ݱ��� ',"","","databack.jsp");
		document.write(d);
		
	</script>

</div>
  <span class="mmenu_title2">��Ȩ����</span>
  <p style="padding-left:10px;">ʵ����ԤԼƽ̨ <br />�������ڣ�<%java.util.Date date = new java.util.Date();
java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA);

String result = format.format(date);
out.print(result);%><br />��ϵ�绰��xxxxxxx</p>
</div>
</body>
</html>
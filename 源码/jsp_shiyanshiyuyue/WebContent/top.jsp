<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>javascript:alert('�Բ������ѳ�ʱ��δ��½,����IE�����´򿪵�½��');window.close();</script>");
	out.close();
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>ʵ����ԤԼƽ̨ - ��̨�������</title>

<link href="css_admin/admin_skin.css" rel="stylesheet" type="text/css" />
<link href="css_admin/alogin_skin.css" rel="stylesheet" type="text/css" />
<link href="css_admin/topleft_skin.css" rel="stylesheet" type="text/css" />
<link href="css_admin/manage_menu.css" rel="stylesheet" type="text/css" />
<link href="css_admin/newdiv_window.css" rel="stylesheet" type="text/css" />

</head>
<script language="javascript">
function chg_theclass(total_num,now_i,clsName,obj_type,other_var)
{
    var event_obj,obj_idstr;
    obj_idstr="";
    if(obj_type)
    {
        if(obj_type==1)
        {
            obj_idstr="top_menu";
        }
        else if(obj_type==2)
        {
            obj_idstr="submenu_" + other_var + "_";
        }
    }
    for(var i=0;i<=total_num;i++)
    {
        var the_itemstr=obj_idstr + i;
        if(document.getElementById(the_itemstr))
        {
            event_obj=document.getElementById(the_itemstr);
            if(now_i==i)
            {
                event_obj.className = clsName;
            }
            else
            {
                event_obj.className = event_obj.className.replace(clsName,"");
            }
        }
    }
}
</script>



<body>

<base target="frame_main" />
<div id="Header">
  <div id="Logo"><a href="admins.jsp" target="_top"><img src="images/Logo_Main.jpg" alt="" width="155" height="89" /></a></div>
  <div  style="color:#CCCCCC;font-size: 26pt;font-weight: bold; float:left; line-height:80px">ʵ����ԤԼƽ̨</div>
  <ul id="menu">
    <li><a id="top_menu0" href="sy.jsp" target="frame_main" class="current" onclick="chg_theclass(4,0,'current',1)">������ҳ</a></li>
    <!--<li><a id="top_menu1" href="suoping.jsp" target="_parent">��ʱ�뿪</a></li>-->
    
    <!--<li><a id="top_menu2" href="admins_left.asp?mshowvar=1" target="frame_main" onclick="chg_theclass(4,2,'current',1)">���ù���</a></li>-->
    
    <li><a id="top_menu3" href="yhzhgl.jsp" target="frame_main" onclick="chg_theclass(4,3,'current',1)">����Ա����</a></li>
    
    <li><a id="top_menu4" href="logout.jsp" target="_parent" onclick="chg_theclass(4,4,'current',1)">�˳�ϵͳ</a></li>
    
  </ul>
</div>
<div id="Tool">
 
  <div class="Report" id="lscroll_outer" style="overflow: hidden; width: 500px; white-space: nowrap;">
    <table width="800" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td >
		
		<img src="images/man.gif" align="absmiddle" width="14" height="14" />��ӭ���٣�<strong class="font5bad27 fbold"><%=request.getSession().getAttribute("username")%>[<%=request.getSession().getAttribute("cx")%>]</strong>
          
          ���ѽ��뱾ϵͳ
		  
		 
          </td>
        <td id="demo_obj2"></td>
      </tr>
    </table>
  </div>


  <div class="Toolbar"><a href="logout.jsp" target="_top" class="a5">�˳�����</a>
    <a  onclick="javascript:window.parent.frame_main.location.reload();" class="a2" style="cursor:pointer">ˢ����ҳ��</a>
    <a href="mod.jsp" target="frame_main" class="a3">�޸�����</a>
    <a href="javascript:parent.frame_main.history.back();" target="frame_main" class="a1">������һҳ</a></div>
</div>

<br />


	
</body>
</html>


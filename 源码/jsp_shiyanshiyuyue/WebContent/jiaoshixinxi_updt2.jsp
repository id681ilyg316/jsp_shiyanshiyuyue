<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>��ʦ��Ϣ</title>
	<!--bixanjxiqxi-->
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<!--hxsglxiangdxongjxs-->
  <body >
<% 

String id = request.getParameter("id"); 
HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"jiaoshixinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmaps("gonghao",(String)request.getSession().getAttribute("username"),"jiaoshixinxi"); 
%>
  <form  action="jiaoshixinxi_updt2.jsp?f=f&id=<%=mmm.get("id")%>"  name="f1"  onsubmit="return checkform();">
  �޸Ľ�ʦ��Ϣ:
  <br><br>
  <%
  //lixanxdoxngcxhaxifxen
   %>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>���ţ�</td><td><input name='gonghao' type='text' id='gonghao' value='<%= mmm.get("gonghao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>���룺</td><td><input name='mima' type='text' id='mima' value='<%= mmm.get("mima")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>�Ա�</td><td><select name='xingbie' id='xingbie'><option value="��">��</option><option value="Ů">Ů</option></select></td></tr><script language="javascript">document.form1.xingbie.value='<%=mmm.get("xingbie")%>';</script>
     <tr><td>��Ƭ��</td><td><input name='zhaopian' type='text' id='zhaopian' size='50' value='<%= mmm.get("zhaopian")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('zhaopian')" style='border:solid 1px #000000; color:#666666'/></td></tr>
     <tr><td>ְ�ƣ�</td><td><input name='zhicheng' type='text' id='zhicheng' value='<%= mmm.get("zhicheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>���̿γ̣�</td><td><input name='zhujiaokecheng' type='text' id='zhujiaokecheng' value='<%= mmm.get("zhujiaokecheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>�绰��</td><td><input name='dianhua' type='text' id='dianhua' value='<%= mmm.get("dianhua")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



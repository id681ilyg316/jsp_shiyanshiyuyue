<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ʵ������Ϣ</title>
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
//wxfladd
new CommDAO().update(request,response,"shiyanshixinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"shiyanshixinxi"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="shiyanshixinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  �޸�ʵ������Ϣ:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>ʵ���ұ�ţ�</td><td><input name='shiyanshibianhao' type='text' id='shiyanshibianhao' value='<%= mmm.get("shiyanshibianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>ʵ�������ƣ�</td><td><input name='shiyanshimingcheng' type='text' id='shiyanshimingcheng' value='<%= mmm.get("shiyanshimingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



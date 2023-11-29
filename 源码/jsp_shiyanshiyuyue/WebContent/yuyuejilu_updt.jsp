<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ԤԼ��¼</title>
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
new CommDAO().update(request,response,"yuyuejilu",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"yuyuejilu"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="yuyuejilu_updt.jsp?f=f&id=<%=mmm.get("id")%>"  name="form1"  onsubmit="return checkform();">
  �޸�ԤԼ��¼:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>ʵ���ұ�ţ�</td><td><input name='shiyanshibianhao' type='text' id='shiyanshibianhao' value='<%= mmm.get("shiyanshibianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>ʵ�������ƣ�</td><td><input name='shiyanshimingcheng' type='text' id='shiyanshimingcheng' value='<%= mmm.get("shiyanshimingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>ԤԼ���ڣ�</td><td><input name='yuyueriqi' type='text' id='yuyueriqi' value='<%= mmm.get("yuyueriqi")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>
     <tr><td>ԤԼʱ�Σ�</td><td><select name='yuyueshiduan' id='yuyueshiduan'><option value="8:30-10:00">8:30-10:00</option><option value="10:00-11:30">10:00-11:30</option><option value="13:00-14:30">13:00-14:30</option><option value="14:30-16:00">14:30-16:00</option></select></td></tr><script language="javascript">document.form1.yuyueshiduan.value='<%=mmm.get("yuyueshiduan")%>';</script>
     <tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
     <tr><td>ԤԼ�ˣ�</td><td><input name='yuyueren' type='text' id='yuyueren' value='<%= mmm.get("yuyueren")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onclick="return check();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>



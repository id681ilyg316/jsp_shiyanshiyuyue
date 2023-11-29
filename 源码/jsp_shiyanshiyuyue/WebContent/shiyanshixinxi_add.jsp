<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>ʵ������Ϣ</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
 //islbd1q id=request.getParameter("id");
 //islbd1q HashMap mlbdq = new CommDAO().getmap(id,"melieibaoduqubiaoiguo");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("hsgzhujian",(String)request.getSession().getAttribute("username"),"melieibaoduqubiaoiguo");
 //islbdq gogogogogo
 //islbdq lelelelelele

   %>
<script language="javascript">

function gow()
{
	document.location.href="shiyanshixinxi_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
//qiuji
//youshenhe
//youzhifu
//jitihuan

}
new CommDAO().insert(request,response,"shiyanshixinxi",ext,true,false,""); 
%>

  <body >
 <form  action="shiyanshixinxi_add.jsp?f=f&id=<%=id%>"  name="form1"  onsubmit="return checkform();">
  ����ʵ������Ϣ:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">ʵ���ұ�ţ�</td><td><input name='shiyanshibianhao' type='text' id='shiyanshibianhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelshiyanshibianhao' /></td></tr>
		<tr><td  width="200">ʵ�������ƣ�</td><td><input name='shiyanshimingcheng' type='text' id='shiyanshimingcheng' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelshiyanshimingcheng' /></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<!--suxilxatxihuxan-->


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var shiyanshibianhaoobj = document.getElementById("shiyanshibianhao"); if(shiyanshibianhaoobj.value==""){document.getElementById("clabelshiyanshibianhao").innerHTML="&nbsp;&nbsp;<font color=red>������ʵ���ұ��</font>";return false;}else{document.getElementById("clabelshiyanshibianhao").innerHTML="  "; } 
	var shiyanshimingchengobj = document.getElementById("shiyanshimingcheng"); if(shiyanshimingchengobj.value==""){document.getElementById("clabelshiyanshimingcheng").innerHTML="&nbsp;&nbsp;<font color=red>������ʵ��������</font>";return false;}else{document.getElementById("clabelshiyanshimingcheng").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  



<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>ԤԼ��¼</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
  id=request.getParameter("id");
  HashMap mlbdq = new CommDAO().getmap(id,"shiyanshixinxi");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("yuyueren",(String)request.getSession().getAttribute("username"),"shiyanshixinxi");
  String shiyanshibianhao="";
  	String shiyanshimingcheng="";
  	
  shiyanshibianhao=(String)mlbdq.get("shiyanshibianhao");
  	shiyanshimingcheng=(String)mlbdq.get("shiyanshimingcheng");
  	

   %>
<script language="javascript">

function gow()
{
	document.location.href="yuyuejilu_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
//qiuji
ext.put("issh","��");
//youzhifu
  String yuyueriqi=request.getParameter("yuyueriqi");
  String yuyueshiduan=request.getParameter("yuyueshiduan");
List list = new CommDAO().select("select * from yuyuejilu where shiyanshibianhao='"+shiyanshibianhao+"' and yuyueshiduan='"+yuyueshiduan+"' and yuyueriqi='"+yuyueriqi+"'");
if(list.size()>0)
{
		out.print("<script>javascript:alert('�Բ��𣬸�ʵ���ұ��մ�ʱ���ѱ�ԤԼ�������ջ�ѡ������ԤԼʱ�Σ�');history.back();</script>");
		out.close();
}
else
{
new CommDAO().insert(request,response,"yuyuejilu",ext,true,false,""); 
}
}
%>

  <body >
 <form  action="yuyuejilu_add.jsp?f=f&id=<%=id%>"  name="form1"  onsubmit="return checkform();">
  ����ԤԼ��¼:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">ʵ���ұ�ţ�</td><td><input name='shiyanshibianhao' type='text' id='shiyanshibianhao' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelshiyanshibianhao' /></td></tr><script language="javascript">document.form1.shiyanshibianhao.value='<%=shiyanshibianhao%>';</script>
		<tr><td  width="200">ʵ�������ƣ�</td><td><input name='shiyanshimingcheng' type='text' id='shiyanshimingcheng' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666'  readonly='readonly' />&nbsp;*<label id='clabelshiyanshimingcheng' /></td></tr><script language="javascript">document.form1.shiyanshimingcheng.value='<%=shiyanshimingcheng%>';</script>
		<tr><td width="200">ԤԼ���ڣ�</td><td><input name='yuyueriqi' type='text' id='yuyueriqi' value='' onblur='checkform()' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/>&nbsp;*<label id='clabelyuyueriqi' /></td></tr>
		<tr><td>ԤԼʱ�Σ�</td><td><select name='yuyueshiduan' id='yuyueshiduan'><option value="8:30-10:00">8:30-10:00</option><option value="10:00-11:30">10:00-11:30</option><option value="13:00-14:30">13:00-14:30</option><option value="14:30-16:00">14:30-16:00</option></select>&nbsp;*<label id='clabelyuyueshiduan' /></td></tr>
		<tr><td  width="200">��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		<tr><td  width="200">ԤԼ�ˣ�</td><td><input name='yuyueren' type='text' id='yuyueren' onblur='checkform()' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" />&nbsp;*<label id='clabelyuyueren' /></td></tr>
		
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
	var shiyanshibianhaoobj = document.getElementById("shiyanshibianhao");  
if(shiyanshibianhaoobj.value!=""){  
var ajax = new AJAX();
ajax.post("factory/checkno.jsp?table=yuyuejilu&col=shiyanshibianhao&value="+shiyanshibianhaoobj.value+"&col=yuyueshiduan&value="+yuyueshiduanobj.value+"&col=yuyueriqi&value="+yuyueriqiobj.value+"&checktype=dinsert&ttime=<%=Info.getDateStr()%>") 
var msg = ajax.getValue();
if(msg.indexOf('Y')>-1){
document.getElementById("clabelshiyanshibianhao").innerHTML="&nbsp;&nbsp;<font color=red>ʵ���ұ���Ѵ���</font>";  
return false;
}else{document.getElementById("clabelshiyanshibianhao").innerHTML="  ";  
}  
} 
	var shiyanshimingchengobj = document.getElementById("shiyanshimingcheng"); if(shiyanshimingchengobj.value==""){document.getElementById("clabelshiyanshimingcheng").innerHTML="&nbsp;&nbsp;<font color=red>������ʵ��������</font>";return false;}else{document.getElementById("clabelshiyanshimingcheng").innerHTML="  "; } 
	var yuyueriqiobj = document.getElementById("yuyueriqi"); if(yuyueriqiobj.value==""){document.getElementById("clabelyuyueriqi").innerHTML="&nbsp;&nbsp;<font color=red>������ԤԼ����</font>";return false;}else{document.getElementById("clabelyuyueriqi").innerHTML="  "; } 
	var yuyueshiduanobj = document.getElementById("yuyueshiduan"); if(yuyueshiduanobj.value==""){document.getElementById("clabelyuyueshiduan").innerHTML="&nbsp;&nbsp;<font color=red>������ԤԼʱ��</font>";return false;}else{document.getElementById("clabelyuyueshiduan").innerHTML="  "; } 
	var yuyuerenobj = document.getElementById("yuyueren"); if(yuyuerenobj.value==""){document.getElementById("clabelyuyueren").innerHTML="&nbsp;&nbsp;<font color=red>������ԤԼ��</font>";return false;}else{document.getElementById("clabelyuyueren").innerHTML="  "; } 
	


return true;   
}   
popheight=450;
</script>  



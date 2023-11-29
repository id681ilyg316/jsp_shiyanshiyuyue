<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
<head>
<title>ʵ����ԤԼƽ̨</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
*{overflow:hidden; font-size:9pt;}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	
	background-repeat: repeat-x;
	background-color: #D4D8E3;
}
.STYLE8 {color: #A1A8D2}
.STYLE7 {color: #FFFFFF}
.STYLE9 {color: #000000; font-size:12px}
-->
</style>
</head>
<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("�û������������");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("��֤�����");
 <%}%>
 
 popheight = 39;

function check()
{
	if(document.form1.username.value=="" || document.form1.pwd.value=="" || document.form1.pagerandom.value=="")
	{
		alert('����������');
		return false;
	}
}

           function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 

           
           </script>     
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="44" background="images/HeaderBg.gif">&nbsp;</td>
  </tr>
  <tr>
    <td background="images/bbgg.jpg"><table width="589" height="539" border="0" align="center" cellpadding="0" cellspacing="0" background="images/login.jpg" id="__01">
      <tr>
        <td height="135" colspan="3" ><div align="center"  style="color:#4A85BD;font-size: 26pt; font-weight: bold;  line-height:80px">ʵ����ԤԼƽ̨</div></td>
      </tr>
      <tr>
        <td width="290" rowspan="2" align="center">&nbsp;</td>
        <td width="219" height="176"><form action="jspmjsxxjsxysysyyptshfw94?ac=adminlogin&a=a" name="form1" style="display: inline"><table width="205" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="44" height="30"><span class="STYLE9">�û�:</span></td>
            <td height="30" colspan="2"><input name="username" type="text" id="username" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
          </tr>
          <tr>
            <td height="30"><span class="STYLE9">����:</span></td>
            <td height="30" colspan="2"><input name="pwd" type="password" id="pwd" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
          </tr>
          <tr>
            <td height="30"><span class="STYLE9">Ȩ��:</span></td>
            <td height="30" colspan="2"><select name="cx" id="cx">
                <option value="����Ա">����Ա</option>
                <option value="��ʦ">��ʦ</option>
                <option value="ѧ��">ѧ��</option>
              </select>
            </td>
          </tr>
          <tr>
            <td height="30"><span class="STYLE9">��֤��:</span></td>
            <td width="59" height="30"><input name="pagerandom" type="text" id="pagerandom" style=" height:20px; border:solid 1px #000000; color:#666666; width:50px" />
            <td width="102"><a href="javascript:loadimage();"><img alt="����������ң�" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle"> </a></td>
          </tr>
          <tr>
            <td height="30" colspan="3"><input type="submit" name="Submit" value="��½" onClick="return check();" style="background:url(images/the_formbtn.gif) no-repeat;color:#000000;width:80px;height: 24px; border:0px;line-height:24px; font-size:12px;margin-right: 5px; cursor:pointer">
                <input type="reset" name="Submit2" value="����" style="background:url(images/the_formbtn.gif) no-repeat;color:#000000;width:80px;height: 24px; border:0px;line-height:24px; font-size:12px;margin-right: 5px; cursor:pointer" ></td>
          </tr>
        </table> </form></td>
        <td width="80" rowspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="28" background="images/Footer.gif">&nbsp;</td>
  </tr>
</table>
</body>
</html>
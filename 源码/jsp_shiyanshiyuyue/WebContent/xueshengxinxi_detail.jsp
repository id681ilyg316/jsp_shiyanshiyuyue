<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ѧ����Ϣ��ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language=javascript src='js/popup.js'></script>
<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=250;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'��������',550,250) ;
}
</script> 
  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"xueshengxinxi");
     %>
  ѧ����Ϣ��ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>ѧ�ţ�</td><td width='39%'><%=m.get("xuehao")%></td>
<td  rowspan=7 align=center><a href=<%=m.get("zhaopian")%> target=_blank><img src=<%=m.get("zhaopian")%> width=228 height=215 border=0></a></td></tr><tr>
<td width='11%' height=44>���룺</td><td width='39%'><%=m.get("mima")%></td>
</tr><tr>
<td width='11%' height=44>������</td><td width='39%'><%=m.get("xingming")%></td>
</tr><tr>
<td width='11%' height=44>�Ա�</td><td width='39%'><%=m.get("xingbie")%></td>
</tr><tr>

<td width='11%' height=44>�༶��</td><td width='39%'><%=m.get("banji")%></td>
</tr><tr>
<td width='11%' height=44>�绰��</td><td width='39%'><%=m.get("dianhua")%></td>
</tr><tr>
<td width='11%' height=44>��ͥסַ��</td><td width='39%'><%=m.get("jiatingzhuzhi")%></td>
</tr><tr>

<td width='11%' height=100  >��ע��</td><td width='39%' colspan=2 height=100 ><%=m.get("beizhu")%></td></tr>
<tr>
  <td colspan=3 align=center><table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse" class="newsline">
    <tr>
      <td width="30" align="center" bgcolor="CCFFFF">���</td>
      <td width="471" bgcolor='#CCFFFF'>��������</td>
      <td width="88" bgcolor='#CCFFFF'>����</td>
      <td width="88" bgcolor='#CCFFFF'>������</td>
      <td width="138" align="center" bgcolor="CCFFFF">����ʱ��</td>
    </tr>
    <% 
							String sql =  "select * from pinglun where xinwenID='"+id+"' and biao='xueshengxinxi' ";
							sql+=" order by id desc";
							int i=0;
							 for(HashMap map:new CommDAO().select(sql)){
							 i++;
							 %>
    <tr>
      <td width="30" align="center" bgcolor='#CCFF99'><%=i%></td>
      <td width="471" bgcolor='#CCFF99'><%=map.get("pinglunneirong")%></td>
      <td width="88" bgcolor='#CCFF99'><%=map.get("pingfen")%></td>
      <td width="88" bgcolor='#CCFF99'><%=map.get("pinglunren")%></td>
      <td width="138" align="center" bgcolor="CCFF99"><%=map.get("addtime")%></td>
    </tr>
    <%
								  }
								   %>
  </table></td>
</tr>
<tr><td colspan=3 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" />
  <input type=button name=Submit53 value=���� onClick="javascript:hsgpinglun('xueshengxinxi','<%=id%>')"/></td></tr>
  </table>

  </body>
</html>



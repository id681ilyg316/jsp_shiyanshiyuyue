<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ʵ������Ϣ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>����ʵ������Ϣ�б���</p>
  <form name="form1" id="form1" action="">
   ����:  ʵ���ұ�ţ�<input name="shiyanshibianhao" type="text" id="shiyanshibianhao" style='border:solid 1px #000000; color:#666666' size="12" />  ʵ�������ƣ�<input name="shiyanshimingcheng" type="text" id="shiyanshimingcheng" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='shiyanshixinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>ʵ���ұ��</td>
    <td bgcolor='#CCFFFF'>ʵ��������</td>
    
	<!--dpinglun1-->
    <td width="138" align="center" bgcolor="CCFFFF">����ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"shiyanshixinxi"); 
    String url = "shiyanshixinxi_list.jsp?1=1"; 
    String sql =  "select * from shiyanshixinxi where 1=1";
	
if(request.getParameter("shiyanshibianhao")=="" ||request.getParameter("shiyanshibianhao")==null ){}else{sql=sql+" and shiyanshibianhao like '%"+request.getParameter("shiyanshibianhao")+"%'";}
if(request.getParameter("shiyanshimingcheng")=="" ||request.getParameter("shiyanshimingcheng")==null ){}else{sql=sql+" and shiyanshimingcheng like '%"+request.getParameter("shiyanshimingcheng")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	//zoxngxetxoxngjxvi
//txixgihxngjs
//youzuiping2
     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("shiyanshibianhao") %></td>
    <td><%=map.get("shiyanshimingcheng") %></td>
    
	<!--dpinglun2-->
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="shiyanshixinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="shiyanshixinxi_list.jsp?scid=<%=map.get("id") %>" onclick="return confirm('���Ҫɾ����')">ɾ��</a> <!--qiatnalijne--> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
<!--yoxugonxgzitoxnxgjxi--> <!--youzuiping3--> 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>


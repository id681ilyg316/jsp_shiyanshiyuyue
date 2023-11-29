<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ԤԼ��¼</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>����ԤԼ��¼�б���</p>
  <form name="form1" id="form1" action="">
   ����:  ʵ���ұ�ţ�<input name="shiyanshibianhao" type="text" id="shiyanshibianhao" style='border:solid 1px #000000; color:#666666' size="12" />  ʵ�������ƣ�<input name="shiyanshimingcheng" type="text" id="shiyanshimingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  ԤԼ���ڣ�<input name="yuyueriqi1" type="text" id="yuyueriqi1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="yuyueriqi2" type="text" id="yuyueriqi2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' /> ԤԼʱ�Σ�<select name='yuyueshiduan' id='yuyueshiduan' style='border:solid 1px #000000; color:#666666;'><option value="">����</option><option value="8:30-10:00">8:30-10:00</option><option value="10:00-11:30">10:00-11:30</option><option value="13:00-14:30">13:00-14:30</option><option value="14:30-16:00">14:30-16:00</option></select>  ԤԼ�ˣ�<input name="yuyueren" type="text" id="yuyueren" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>ʵ���ұ��</td>
    <td bgcolor='#CCFFFF'>ʵ��������</td>
    <td bgcolor='#CCFFFF' width='65' align='center'>ԤԼ����</td>
    <td bgcolor='#CCFFFF'>ԤԼʱ��</td>
    <td bgcolor='#CCFFFF'>��ע</td>
    <td bgcolor='#CCFFFF'>ԤԼ��</td>
    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ����</td>
    <td width="138" align="center" bgcolor="CCFFFF">����ʱ��</td>
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
 <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"yuyuejilu"); 
    String url = "yuyuejilu_list2.jsp?1=1"; 
    String sql =  "select * from yuyuejilu where yuyueren='"+request.getSession().getAttribute("username")+"' ";
	
if(request.getParameter("shiyanshibianhao")=="" ||request.getParameter("shiyanshibianhao")==null ){}else{sql=sql+" and shiyanshibianhao like '%"+request.getParameter("shiyanshibianhao")+"%'";}
if(request.getParameter("shiyanshimingcheng")=="" ||request.getParameter("shiyanshimingcheng")==null ){}else{sql=sql+" and shiyanshimingcheng like '%"+request.getParameter("shiyanshimingcheng")+"%'";}
if (request.getParameter("yuyueriqi1")==""  ||request.getParameter("yuyueriqi1")==null ) {}else{sql=sql+" and yuyueriqi >= '"+request.getParameter("yuyueriqi1")+"'";}
if (request.getParameter("yuyueriqi2")==""  ||request.getParameter("yuyueriqi2")==null ) {}else {sql=sql+" and yuyueriqi <= '"+request.getParameter("yuyueriqi2")+"'";}
if(request.getParameter("yuyueshiduan")=="" ||request.getParameter("yuyueshiduan")==null ){}else{sql=sql+" and yuyueshiduan like '%"+request.getParameter("yuyueshiduan")+"%'";}
if(request.getParameter("yuyueren")=="" ||request.getParameter("yuyueren")==null ){}else{sql=sql+" and yuyueren like '%"+request.getParameter("yuyueren")+"%'";}
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
 <td><%=map.get("yuyueriqi") %></td>
 <td><%=map.get("yuyueshiduan") %></td>
 <td><%=map.get("beizhu") %></td>
 <td><%=map.get("yuyueren") %></td>
 <td width='80' align='center'><%=map.get("issh")%></td>
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="yuyuejilu_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="yuyuejilu_list2.jsp?scid=<%=map.get("id") %>" onclick="return confirm('���Ҫɾ����')">ɾ��</a> <!--qiatnalijne--> </td>
  </tr>
  	<%
  }
   %>
</table><br>
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


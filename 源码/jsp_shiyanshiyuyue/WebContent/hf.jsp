<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>���԰�</title>
    

  </head>

  <body >
  <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 
new CommDAO().update(request,response,"liuyanban",ext,true,false,"liuyanban_list.jsp"); 
HashMap mmm = new CommDAO().getmap(id,"liuyanban"); 
%>
  <form  action="hf.jsp?f=f&id=<%=mmm.get("id")%>"  name="f1"  onsubmit="return checkform();">
  �ظ�����:
  <br>
  <br>

   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"><tr>
     <td>�ظ����ݣ�</td><td><textarea name="huifuneirong" cols="50" rows="5" id="huifuneirong"></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<%=Info.tform(mmm,"f1")%> 


<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>助学新版</title>
<script language="javascript" src="qtimages/qkjs.js"></script>
<LINK href="css.css" type=text/css rel=stylesheet />

</head>

<body>

 <%
  String id=request.getParameter("id");
   new CommDAO().commOper("update xinwentongzhi set dianjilv=dianjilv+1 where id="+id);
%>
 <table id="__01" width="100%" height="778" border="0" cellpadding="0" cellspacing="0">
   <tr>
     <td height="233"><table id="__01" width="100%" height="233" border="0" cellpadding="0" cellspacing="0">
         <tr>
           <td width="778" height="41" background="qtimages/1_02_02_02_01.gif">&nbsp;</td>
         </tr>
         <tr>
           <td><table id="__01" width="778" height="180" border="0" cellpadding="0" cellspacing="0">
               <tr>
                 <td width="17" background="qtimages/1_02_02_02_02_01.gif">&nbsp;</td>
                 <td width="727" height="712" valign="top" bgcolor="#FFFFFF" class="newsline"><%
    HashMap m = new CommDAO().getmap(id,"xinwentongzhi");
     %>
                     <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#FA8A89" class="newsline" style="border-collapse:collapse">
                       <tr>
                         <td height="46" align="center" class="STYLE7"><%=m.get("biaoti") %> (被访问<%=m.get("dianjilv") %>次) </td>
                       </tr>
                       <tr>
                         <td height="110" align="left"><%=m.get("neirong") %></td>
                       </tr>
                       <tr>
                         <td height="33" align="right"><input type="button" name="Submit5" value="返回" onclick="javascript:history.back();" style=" height:19px; border:solid 1px #000000; color:#666666" /></td>
                       </tr>
                   </table></td>
                 <td width="34" background="qtimages/1_02_02_02_02_03.gif">&nbsp;</td>
               </tr>
           </table></td>
         </tr>
         <tr>
           <td height="12">&nbsp;</td>
         </tr>
     </table></td>
   </tr>
 </table>
</body>
</html>
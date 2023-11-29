<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <script language="javascript">
        function check()
        {
            if(document.formAdd.fujian.value=="")
            {
                alert("��ѡ���ļ�");
                return false;
            }
            return true;
        }
    </script>
  </head>
  
  <body>
       <form action="upload_re.jsp?Result=<%=request.getParameter("Result")%>" name="formAdd"  enctype="multipart/form-data">
           <input type="file" name="fujian" id="fujian" onKeyDown="javascript:alert('����Ϣ�����ֶ�����');return false;" />
           <input type="submit" value="�ύ" onClick="return check()"/>
       </form>
  </body>
</html>

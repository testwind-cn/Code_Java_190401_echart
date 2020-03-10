<%--
  Created by IntelliJ IDEA.
  User: DEV
  Date: 2019-2-28
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8"
         import="com.plj.tools.GetHost"
%>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    String data = GetHost.GetHostName();
// String data = new DataSet().getData("test0",name2,name3);
    out.print(data);
  %>
  1111$END$
  </body>
</html>

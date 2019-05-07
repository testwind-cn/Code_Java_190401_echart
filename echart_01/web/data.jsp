<%@ page
contentType="application/json;charset=UTF-8"
language="java" pageEncoding="UTF-8"
import="com.fin.data_tool.DataSet"
%>
<%  response.setHeader("Content-Type", "application/json;charset=UTF-8");
    String name1 = request.getParameter("par1");
    String name2 = request.getParameter("par2");
    String name3 = request.getParameter("par3");
    String data = new DataSet().getData(name1,name2,name3);
// String data = new DataSet().getData("test0",name2,name3);
    out.print(data);
%>+
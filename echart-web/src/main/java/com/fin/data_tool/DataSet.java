package com.fin.data_tool;

import com.fin.utils.TheTools;

import java.util.*;
import java.text.*;
import java.lang.Math;
//import org.json.JSONObject;
import java.sql.*;

public class DataSet {

    private String db_cfg=null,sql_cfg=null;
    private DataParam p_dataParam=null;
    private final String def_a = "[";
    private final String def_b = "]";

    public DataSet(DataParam dataParam, String db_cfg, String sql_cfg) {
        this.p_dataParam = dataParam;
        this.db_cfg = db_cfg;
        this.sql_cfg = sql_cfg;
    }

    public DataSet(DataParam dataParam, String db_cfg) {
        this(dataParam, db_cfg,null);
    }

    public DataSet(DataParam dataParam) {
        this(dataParam, null,null);
    }

    public DataSet() {
        this(null,null, null);
    }


    public String LoadData(int id) {
        return LoadData(p_dataParam, id);
    }

    public String LoadData(DataParam dataParam, int id) {
        DataDB the_db = new DataDB(this.db_cfg);
        String username = the_db.getDb_user(dataParam);
        String pwd = the_db.getDb_pwd(dataParam);
        String url = the_db.getDb_url(dataParam);

        // 获取 SQL语句 BEGIN
        String sql="";
        if ( id >= 0 )
            sql = the_db.getSql(this.sql_cfg, id); // python {:0>3d}

        if ( username == null || pwd == null || url == null || sql == null ||
                username.length() <=0 || pwd.length() <=0 || url.length() <=0 || sql.length() <=0 )
            return def_a+def_b;

        String date_start;
        Calendar the_date = TheTools.getDateShort(null);

        if ( id == 0 )
            date_start = "2012-08-20";
        else
            date_start = TheTools.getDateStr( TheTools.addDate( the_date,-120) );
        String date_end = TheTools.getDateStr(the_date);

        sql = sql.replaceAll("\\$DATE_START", date_start );
        sql = sql.replaceAll("\\$DATE_END", date_end );

        // 获取 SQL语句 END

        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("找不到驱动 ");
            return def_a+def_b;
        }

        ResultSet rs = null;

        int columnCount = 0;

        try {
            //数据可的登录名  登录密码
            Connection conn = (Connection) DriverManager.getConnection(url, username, pwd);
            Statement stmt = (Statement) conn.createStatement();

            rs = stmt.executeQuery(sql);  // 返回查询结果
            ResultSetMetaData rsmd = rs.getMetaData() ;
            columnCount = rsmd.getColumnCount();
        } catch (SQLException e) {
            e.printStackTrace();
            return def_a+def_b;
        }

        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        StringBuilder data = new StringBuilder(def_a);

        try {
            int i = 0;
            while (rs.next()) {
                if ( i++ > 0 ){
                    data.append(",");
                }
                String col1 = formatter.format(rs.getDate(1));
                String str  = String.format("%s\"%s\"",def_a,col1); //,%d,%d]", col1, col2 , col3  );
                data.append(str);


                for (int j=2;j<=columnCount;j++) {
                    data.append(",");
                    Object data_obj = rs.getObject(j);
                    if (data_obj == null) {

                    }
                    data.append( data_obj==null ? "\"-\"" : data_obj.toString() );
                }
                data.append(def_b);
            }

            data.append(def_b);
        } catch (SQLException e) {
            // e.printStackTrace();
            return def_a+def_b;
        }

        return data.toString();
    }

    public String getData(String name1,String name2,String name3){
        if ( name1 != null && name1.compareToIgnoreCase("test0") == 0 )
            return getData_Test("test0",name2,name3);

        try {
            int id = Integer.parseInt(name1);
            return LoadData(id);
        } catch (NumberFormatException e) {
            // e.printStackTrace();
        }

        return def_a + def_b;
    }

    private String getData_Test(String name1,String name2,String name3){
        // 这个仅仅做测试用途
        StringBuilder data = new StringBuilder("[");
        for (int i=0;i < 90; i ++){
            if (i>0){
                data.append(",");
            }
            Calendar start = TheTools.getDateShort(null);
            Calendar s1 =TheTools.addDate(start,i);
            String s = TheTools.getDateStr(s1);

            String str  = String.format("[\"%s\",%d,%d]", s,  (int)(Math.random()*300),  (int)(Math.random()*100) );
            data.append(str);
        }
        data.append("]");

        return data.toString();
    }

    public static void main(String[] args) {

        DataSet a = new DataSet();
        String aa = TheTools.readFileByLines("/config/data_001.sql");
        System.out.println(aa);
        System.out.println("Hello World!");
        System.out.println(a.getData("1dsd","",""));

        System.out.println(a.getData("test0","",""));
        System.out.println(a.getData("1","",""));

    }
}

/*
 *
 * <%  response.setHeader("Content-Type", "application/json;charset=UTF-8");
 *     //注意加上这一句
 *     String path = request.getContextPath();
 *     String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 *     // JSONObject json = (JSONObject)request.getAttribute("json");
 *     JSONObject obj = new JSONObject();
 *     obj.put("name", "John111");
 *     obj.put("sex", "male");
 *     obj.put("age", 22);
 *     obj.put("is_student", true);
 *     obj.put("hobbies", new String[] {"hiking", "swimming"});
 *     //调用toString()方法可直接将其内容打印出来
 *     // System.out.println(obj.toString());
 *
 *     // out.print(obj.toString());
 *
 *     //String name1 = request.getParameter("par1");//用request得到参数
 *     //String name2 = request.getParameter("par2");//用request得到参数
 *     //String name3 = request.getParameter("par3");//用request得到参数
 *
 * //[\"2012-03-01\",\"2012-03-02\",\"2012-03-03\",\"2012-03-04\",\"2012-03-05\",\"2012-03-06\"]
 *     // out.print("[500,300,400,500,200,100]");
 *
 *
 *     String data = new DataSet().getData();
 *     out.print(data);
 *
 * //    out.print("[[\"2012-03-01\",420],[\"2012-03-02\",320],[\"2012-03-03\",250],[\"2012-03-04\",40],[\"2012-03-05\",200],[\"2012-03-06\",100]]");
 *
 *
 *
 */

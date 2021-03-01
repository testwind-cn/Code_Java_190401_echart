package com.fin.data_tool;

import com.fin.utils.TheProperty;
import com.fin.utils.TheTools;

import java.util.Properties;

//import org.json.JSONObject;

public class DataParam {

    private Properties prop;

    public DataParam(String file_patn, int id) {
        String file_name = String.format(file_patn, id );
        prop = TheProperty.getProperties_3(file_name);
    }

    public DataParam(int id) {
        this("/config/conf_%03d.properties",id);
    }

    private String get_data(String key_name) {
        if ( ! is_exist() )
            return null;
        return prop.getProperty(key_name,null);
    }

    private String get_data(String key_name, int id) {
        if ( ! is_exist() )
            return null;
        if ( key_name == null || key_name.length() <= 0  )
            return null;
        return prop.getProperty(String.format("%s%03d", key_name, id ),null);
    }

    public String get_one_data(String key_name) {
        String s = get_data(key_name);
        return ( s==null) ? "''": s;
    }

    public String get_list_data(String key_name) {
        return get_list_data(key_name, null);
    }

    public String get_list_data(String key_name1,String key_name2) {
        return get_list_data(key_name1, key_name2, null);
    }

    public String get_list_data(String key_name1,String key_name2,String key_name3) {
        return get_list_data(key_name1, key_name2, key_name3,",\n","[\n","\n]","''");
    }

    public String get_list_data(String key_name1,String key_name2,String key_name3, String value_sepatator, String quotation1,String quotation2,String empty) {
        return get_list_data_p(key_name1, key_name2, key_name3,value_sepatator,quotation1,quotation2,empty);
    }

    public String get_append_data(String key_name) {
        return get_list_data_p(key_name, null, null,"","","","");
    }

    private String get_list_data_p(String key_name1,String key_name2,String key_name3, String value_sepatator, String quotation1,String quotation2,String empty) {
        StringBuilder data = new StringBuilder();
        int i=0;
        String s1,s2,s3;
        s1 = get_data(key_name1,i);
        s2 = get_data(key_name2,i);
        s3 = get_data(key_name3,i);
        while ( s1 != null || s2 != null || s3 != null) {
            if ( i++ > 0 ) {
                data.append(value_sepatator);
            }
            if ( s1 != null ) data.append(s1);
            if ( s2 != null ) data.append(s2);
            if ( s3 != null ) data.append(s3);
            s1 = get_data(key_name1,i);
            s2 = get_data(key_name2,i);
            s3 = get_data(key_name3,i);
        }

        if ( i > 1 ) {
            data.insert(0,quotation1);
            data.append(quotation2);
        }

        if ( data.length() <= 0 )
            data.append(empty);

        return data.toString();
    }

    public boolean is_exist() {
        return prop != null;
    }

    public static void main(String[] args) {

        DataParam a = new DataParam(1);
        System.out.println(a.get_list_data("kkk_","series_data_a_","series_data_b_"));

        System.out.println(a.get_data("db_user"));
        System.out.println(a.get_data("series_data_a_",2));

        String aa = TheTools.readFileByLines("/config/data_001.sql");
        System.out.println(aa);
        System.out.println("Hello World!");
//        System.out.println(a.getData("1dsd","",""));
//
//        System.out.println(a.getData("test0","",""));
//        System.out.println(a.getData("1","",""));

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

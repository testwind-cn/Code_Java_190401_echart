package com.fin.data_tool;

import com.fin.utils.TheProperty;
import com.fin.utils.TheTools;
import com.fin.utils.getComputer;

import java.util.Properties;

//import org.json.JSONObject;

public class DataDB {

    private static final String key_user = "db_user";
    private static final String key_pwd = "db_pwd";
    private static final String key_url = "db_url";
    private static final String key_test_pc = "test_pc_%d";
    private static final String default_str = "";

    private String test_user = "";
    private String test_pwd = "";
    private String test_url = "";

    private String def_user = "";
    private String def_pwd = "";
    private String def_url = "";

    private String p_db_cfg=null,p_slq_cfg=null;

    public DataDB(String db_cfg, String slq_cfg) {
        p_db_cfg = ( db_cfg != null && db_cfg.length()>0 ) ? db_cfg : "/config/conf.properties";
        p_slq_cfg = ( slq_cfg != null && slq_cfg.length()>0 ) ? slq_cfg : "/config/data_%03d.sql";
        get_default(p_db_cfg);
    }

    public DataDB(String db_cfg) {
        this(db_cfg, null);
    }

    public DataDB() {
        this(null,null);
    }


    public String getDb_user() {
        return ( test_user.length() > 0 ) ? test_user : def_user;
    }

    public String getDb_pwd() {
        return ( test_pwd.length() > 0 ) ? test_pwd : def_pwd;
    }

    public String getDb_url() {
        return ( test_url.length() > 0 ) ? test_url : def_url;
    }

    public String getDb_user(DataParam dataParam) {
        String s = ( dataParam == null ) ? null : dataParam.get_one_data(key_user);
        if ( s != null && s.length() > 0 )
            return s;
        else
            return getDb_user();
    }

    public String getDb_pwd(DataParam dataParam) {
        String s = ( dataParam == null ) ? null : dataParam.get_one_data(key_pwd);
        if ( s != null && s.length() > 0 )
            return s;
        else
            return getDb_pwd();
    }

    public String getDb_url(DataParam dataParam) {
        String s = ( dataParam == null ) ? null : dataParam.get_one_data(key_url);
        if ( s != null && s.length() > 0 )
            return s;
        else
            return getDb_url();
    }

    public String getSql(int id) {
        return getSql(p_slq_cfg, id );
    }

    public String getSql(String sql_cfg, int id) {
        if ( sql_cfg != null && sql_cfg.length()>0 )
            return TheTools.readFileByLines(String.format(sql_cfg, id ));
        else
            return TheTools.readFileByLines(String.format(p_slq_cfg, id ));
    }

    private void get_default(String db_cfg){
        Properties prop = TheProperty.getProperties_3(db_cfg);

        try {
            def_user = prop.getProperty(key_user,default_str);       // "risk";
        } catch (NullPointerException e) {
            def_user = default_str;
        }
        try {
            def_pwd = prop.getProperty(key_pwd,default_str);        // "fTO@J5jmW&Q4";
        } catch (NullPointerException e) {
            def_pwd = default_str;
        }
        try {
            def_url = prop.getProperty(key_url,default_str);        // "jdbc:mysql://10.91.1.10:3306/echart";
        } catch (NullPointerException e) {
            def_url = default_str;
        }

        String pc_name = getComputer.getPcName();

        for (int i=0;i<3;i++) {
            String s_test_pc = prop.getProperty(String.format(key_test_pc, i ),default_str).toLowerCase();
            if ( s_test_pc.length()>0 && pc_name.toLowerCase().startsWith(s_test_pc)  ) {
                test_user = prop.getProperty(String.format("%s_%d", key_user, i ),default_str);
                test_pwd = prop.getProperty(String.format("%s_%d", key_pwd, i ),default_str);
                test_url = prop.getProperty(String.format("%s_%d", key_url, i ),default_str);
            }
        }
    }

    public static void main(String[] args) {

        DataDB a = new DataDB();
        System.out.println(a.getDb_user());
        System.out.println(a.getDb_pwd());
        System.out.println(a.getDb_url());

    }
}

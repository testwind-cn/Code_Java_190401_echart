package com.fin.utils;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Enumeration;
import java.util.Properties;

public class TheProperty {

    /**
     *
     * @Title: printAllProperty
     * @Description: 输出所有配置信息
     * @param props
     * @return void
     * @throws
     */
    private static void printAllProperty(Properties props)
    {
        @SuppressWarnings("rawtypes")
        Enumeration en = props.propertyNames();
        while (en.hasMoreElements())
        {
            String key = (String) en.nextElement();
            String value = props.getProperty(key);
            System.out.println(key + " : " + value);
        }
    }

    /**
     * 读取配置文件所有信息
     *
     * @Title: getProperties_3
     * @Description: 第三种方式：
     *                    相对路径， properties文件需在classpath目录下，
     *                  比如：config.properties在包com.test.config下，
     *                  路径就是/com/test/config/config.properties
     * @param filePath
     * @return
     * @throws
     */
    public static Properties getProperties_3(String filePath){
        Properties prop = new Properties();
        try {
            InputStream inputStream = TheProperty.class.getResourceAsStream(filePath);
            InputStreamReader reader = new InputStreamReader(inputStream, "UTF-8");
            prop.load(reader);
            printAllProperty(prop);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return prop;
    }
}

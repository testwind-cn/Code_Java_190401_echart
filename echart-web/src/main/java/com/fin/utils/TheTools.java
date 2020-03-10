package com.fin.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.*;
import java.text.*;

public class TheTools {

    /**
     * 获取现在时间
     *
     * @return返回短时间格式 yyyy-MM-dd
     */
    public static Calendar getDateShort(String s)
    {
        java.util.Date resultDate = null;
        java.util.Date currentTime = new java.util.Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String dateString = null;

        java.util.TimeZone timeZone = java.util.TimeZone.getTimeZone("Asia/Shanghai");
        formatter.setTimeZone(timeZone);
        Calendar calendar = Calendar.getInstance(timeZone, java.util.Locale.ENGLISH);

        if (s == null || s.length() <= 0) {
            dateString = formatter.format(currentTime);
        } else
            dateString = s;

        try {
            resultDate = formatter.parse(dateString);
            calendar.setTime( resultDate );
        } catch (ParseException e) {
            e.printStackTrace();
            dateString = formatter.format(currentTime);
            try {
                resultDate = formatter.parse(dateString);
                calendar.setTime( resultDate );
            }
            catch (ParseException e2) {
                calendar.setTime( currentTime );
                calendar.set(Calendar.HOUR_OF_DAY, 0);
                calendar.set(Calendar.MINUTE, 0);
                calendar.set(Calendar.SECOND, 0);
                calendar.set(Calendar.MILLISECOND, 0);
            }
        }
        return calendar;
    }

    public static String getDateStr(Calendar dt) {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        java.util.TimeZone timeZone = java.util.TimeZone.getTimeZone("Asia/Shanghai");
        formatter.setTimeZone(timeZone);
        String dateString = formatter.format(dt.getTime());
        return dateString;
    }

    public static Calendar addDate(Calendar dt, int day) {
        Calendar newDate = (Calendar) dt.clone();
        newDate.add( Calendar.DATE, day);
        return newDate;
    }


    /**
     * 以行为单位读取文件，常用于读面向行的格式化文件
     */
    public static String readFileByLines(String filePath) /* throws Exception */ {
        StringBuffer str = new StringBuffer();
        BufferedReader reader = null;
        try {
            /*reader = new BufferedReader(new InputStreamReader(
                    new FileInputStream(filePath), "UTF-8"));*/

            reader = new BufferedReader(new InputStreamReader(
                    TheTools.class.getResourceAsStream(filePath), "UTF-8"));

            if ( reader == null )
                return null;

            String tempString = null;
            int line = 0;
            // 一次读入一行，直到读入null为文件结束
            while ((tempString = reader.readLine()) != null) {
                // 显示行号
                // System.out.println("line " + line + ": " + tempString);
                if ( line++ > 0 ) {
                    str.append("\r\n");
                }
                str.append(tempString);
            }
            reader.close();
        } catch (IOException e) {
            e.printStackTrace();
            // throw e;
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e1) {
                }
            }
        }

        return str.toString();
    }
}
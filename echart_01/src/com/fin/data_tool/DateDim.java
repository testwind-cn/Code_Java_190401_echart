package com.fin.data_tool;

import java.lang.reflect.Array;
import java.util.Calendar;
import com.fin.utils.TheTools;

public class DateDim {
    private Calendar m_start_date=null, m_end_date=null;
    private int zm_idx_0, zm_idx_1;
    private int m_start_day=0;
    private java.util.List<Integer> zm_list_0=null;
    private java.util.List<Integer> zm_list_1=null;

    private void initDate(String end_date, int month_len, int start_day) {
        // end_date 结束日期，空表示当天
        // month_len 要几个月的范围
        // start_day 每月周期的开始日是号，0 表示按当天, start_day 必须 <= 28
        // 加载的数据量： 从 某月的 start_day 号开始，到今天，至少包含 month_len 个月的数据。
        m_end_date = TheTools.getDateShort(end_date);
        m_start_date = ( Calendar ) m_end_date.clone();
        m_start_date.add( Calendar.MONTH, -month_len);
        if ( start_day > 0 ) { // 需要改变成几号
            /*
            int i = m_start_date.getActualMaximum(Calendar.DAY_OF_MONTH);
            if ( start_day > i ) {
                start_day = i;
            }
            */
            if ( start_day > 28 )
                start_day = 28;
            if ( start_day > m_start_date.get(Calendar.DAY_OF_MONTH) )  {
                // 再多扩大一个月，保证天数大于 month_len 个月
                m_start_date.add( Calendar.MONTH, -1);
            }
            /*
            i = m_start_date.getActualMaximum(Calendar.DAY_OF_MONTH);
            if ( start_day > i ) {
                start_day = i;
            }
            */
            m_start_date.set(Calendar.DAY_OF_MONTH, start_day);
        }
        m_start_day = m_start_date.get(Calendar.DAY_OF_MONTH);
        initDateWin();
    }

    private void checkDate() {
        if ( m_start_date == null || m_end_date == null ) {
            initDate("",6,1);
        }
    }

    public DateDim(String end_date, int month_len, int start_day) {
        // end_date 结束日期，空表示当天
        // month_len 要几个月的范围
        // start_day 每月周期的开始日是号，0 表示按当天, start_day 必须 <= 28
        // 加载的数据量： 从 某月的 start_day 号开始，到今天，至少包含 month_len 个月的数据。
        initDate(end_date,month_len,start_day);
    }

    public int fixMonthId(int id, int beginDate) {
        checkDate();
        if ( id < 0 ) { // 如果没有提供平移月份值
            if ( m_end_date.get(Calendar.DAY_OF_MONTH) >= beginDate )
                id = 0; // 如果当天大于3号，则平移月份为0 ，即显示本月
            else
                id = 1; // 如果当天小于3号，则平移月份为1 ，即显示上月
        }
        return id;
    }

    public String getDayStrStart() {
        checkDate();
        return TheTools.getDateStr(m_start_date);
    }

    public String getDayStrEnd() {
        checkDate();
        return TheTools.getDateStr(m_end_date);
    }

    private void initDateWin() {
        int m_id = 0;
        java.util.List<Integer> list0=new java.util.ArrayList<Integer>();
        java.util.List<Integer> list1=new java.util.ArrayList<Integer>();
        do {
            setDateWin(m_id++);
            if (zm_idx_0>=0) {
                list0.add(zm_idx_0);
                list1.add(zm_idx_1);
            }

        }while (zm_idx_0>=0);
        zm_list_0 = list0;
        zm_list_1 = list1;
    }
    private void setDateWin(int month_id) {
        Calendar zm_dt_0 = (Calendar) m_end_date.clone();
        Calendar zm_dt_1 = (Calendar) m_end_date.clone();
        zm_dt_0.set(Calendar.DAY_OF_MONTH, 1);
        // 如果 month_id 是 0，窗口就是当月1号到今天。
        // 如果 month_id 大于 0，就往前平移，显示整月。
        if ( month_id > 0 ) {
            zm_dt_0.add( Calendar.MONTH, -month_id);
            zm_dt_1.set(Calendar.DAY_OF_MONTH,1);
            zm_dt_1.add( Calendar.MONTH, 1- month_id);
            zm_dt_1.add( Calendar.DATE, -1);
        }

        long l_time;
        // 设置缩放窗口

        l_time=zm_dt_0.getTimeInMillis()-m_start_date.getTimeInMillis();
        zm_idx_0=new Long(l_time/(1000*60*60*24)).intValue();
        // 设置缩放窗口开始位置的编号

        l_time=zm_dt_1.getTimeInMillis()-m_start_date.getTimeInMillis();
        zm_idx_1=new Long(l_time/(1000*60*60*24)).intValue();
        // 设置缩放窗口结束位置的编号
    }

    public java.util.List<Integer> getDateIndexStart() {
        return zm_list_0;
    }

    public java.util.List<Integer>  getDateIndexEnd() {
        return zm_list_1;
    }


    public static void main(String[] args) {


        java.util.Map<String,String> map = System.getenv();
        System.out.println(map.get("USERNAME"));//获取用户名
        System.out.println(map.get("COMPUTERNAME"));//获取计算机名
        System.out.println(map.get("USERDOMAIN"));//获取计算机域名

        // DateDim a = new DateDim("",5,5);
        DateDim dateWin = new DateDim("",6,1);
        System.out.println( dateWin.getDayStrStart() );
        System.out.println( dateWin.getDayStrEnd() );

        System.out.println( dateWin.getDateIndexStart() );
        System.out.println( dateWin.getDateIndexEnd() );


//        System.out.println(a.getDb_user());
//        System.out.println(a.getDb_pwd());
//        System.out.println(a.getDb_url());

    }
}

<%@ page
contentType="text/html;charset=UTF-8"
language="java" pageEncoding="UTF-8"
%>
<%@ page import="com.fin.data_tool.DataParam" %>
<%@ page import="com.fin.data_tool.DateDim" %>
<%
    DataParam data_p;
    int f_id = -1;
    int f_mth = -1;

    String s_id = request.getParameter("id");
    String s_mth = request.getParameter("mth");

    if ( s_id == null || s_id.length()==0 )
        s_id = "-1";
    if ( s_mth == null || s_mth.length()==0 )
        s_mth = "-1";

    try {
        f_id = Integer.parseInt(s_id);
    } catch (NumberFormatException e) {
        // e.printStackTrace();
        f_id = -1;
    }
    try {
        f_mth = Integer.parseInt(s_mth);
    } catch (NumberFormatException e) {
        // e.printStackTrace();
        f_mth = -1;
    }

    if ( f_id < 0 ) f_id = 0;
    data_p = new DataParam(f_id);

    DateDim dateWin = new DateDim("",6,1);


    String s_date_0 = dateWin.getDayStrStart();
    String s_date_1 = dateWin.getDayStrEnd();
    // 默认全部数据集合为之前半年的日期范围。

    f_mth = dateWin.fixMonthId(f_mth,5);

    // 设置缩放窗口
    java.util.List<Integer> list0=dateWin.getDateIndexStart();
    // 设置缩放窗口开始位置的编号
    java.util.List<Integer> list1=dateWin.getDateIndexEnd();
    // 设置缩放窗口结束位置的编号

%>
<html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <!-- 引入 echarts.js -->
    <script src="dist/echarts.min.js"></script>
    <script src="jquery-3.3.1.min.js"></script>
    <script src="color_def.js"></script>
</head>
<body >
    <script  type="text/javascript">
        window.onload = function(){
        document.body.style.backgroundColor=cr_0[2];
        }
    </script>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main2" style="width:100%;height:100%;"></div>

    <script  type="text/javascript">
        var myChart1=echarts.init(document.getElementById('main2'));

        var myTimerVar;

        var data_win_size = <%=list0.size()%> ;
        var data_win_cur = <%=f_mth%> ;
        var data_win_0 = <%=list0%> ;
        var data_win_1 = <%=list1%> ;

        function goToPage(param) {
            var current;
            current = data_win_cur + param;
            if (current >= 0 && current < data_win_size) {
                data_win_cur = current;
                myChart1.dispatchAction({
                    type: 'dataZoom',
                    startValue: data_win_0[data_win_cur],
                    endValue: data_win_1[data_win_cur]
                });
            }
        }

        function setMapData(result) {
            var option = {
                backgroundColor: cr_0[2],
                textStyle: {
                    color: cr_0[3]
                },
                title: {
                    text: <%=data_p.get_one_data("s_title") %>,
                    left: 'center',
                    textStyle: {
                        align: 'center',
                        fontFamily: 'Microsoft YaHei',
                        fontSize: 24,
                        color:cr_0[3]
                    }
                },
                tooltip: { // 提示
                    trigger: 'axis',
                    axisPointer: {
                        type: 'cross'
                    },
                    position: function (pt) {
                        return [pt[0], '30%'];
                    }
                },
                toolbox: {
                    show: true,
                    feature: {
                        dataZoom: {
                            yAxisIndex: 'none'
                        },
                        dataView: {readOnly: false},
                        magicType: {type: ['line', 'bar']},
                        restore: {},
                        saveAsImage: {}
                    }
                },
                dataZoom: [
                    //{
                       // type: 'inside',
                        // start: 0,
                        // end: 100
                    //},
                    {
                        type: 'slider',
                        // start: 80,
                        // end: 120,
                        startValue: data_win_0[data_win_cur],// 80,
                        endValue: data_win_1[data_win_cur],// 120,
                        //startValue: "2019-04-01",
                        //endValue: "2019-04-25",
                        handleIcon: 'M8.2,13.6V3.9H6.3v9.7H3.1v14.9h3.3v9.7h1.8v-9.7h3.3V13.6H8.2z M9.7,24.4H4.8v-1.4h4.9V24.4z M9.7,19.1H4.8v-1.4h4.9V19.1z',
                        handleSize: '80%',
                        handleStyle: {
                            color: cr_0[1],
                            shadowBlur: 3,
                            shadowColor:cr_0[0] ,
                            shadowOffsetX: 2,
                            shadowOffsetY: 2
                        }
                    }
                ],
                legend: {
                    data: <%=data_p.get_list_data("legend_")%>,
                    textStyle: {
                        fontSize: 16,
                        color:cr_0[4]
                    },
                    left: '10%',
                    top:'10%'

                },
                xAxis: {
                    // min:'2001-02-21',
                    // max:'2020-03-11',
                    type: 'category', //time
                    // data: []
                    axisLine: {
                        linStyle: {
                            color: cr_0[5]
                        }
                    }
                },
                yAxis: <%=data_p.get_list_data("yAxis_")%>,
                dataset: {
                    sourceHeader: false,
                    dimensions: <%=data_p.get_list_data("dataset_dim_")%>,
                    source: result //  [["2018-11-01",74,49,66.2200],["2018-11-02",52,28,53.8500] ]
                },
                series: <%=data_p.get_list_data("series_data_a_","series_data_b_")%>
                <%=data_p.get_append_data("append_option_")%>
            }; //100,200,300,400,500,200


            myChart1.setOption(option);
            clearInterval(myTimerVar);
        }

        function sucFunc(result) {
            // alert("Hello");
            console.log(result);
            myTimerVar=setInterval(
                function(){
                    setMapData(result)
                }, 500
            )
        }

        //利用ajax动态获取数据，地址为java提供的接口
        $.ajax(
            {
                type : "post",
                async : true,
                //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可 以执行）
                url : "data.jsp",    //请求发送到TestServlet处
                data : {par1:"<%=f_id%>",par2:"<%=s_date_0%>",par3:"<%=s_date_1%>"}, // test = par1=test0
                dataType : "json",        //返回数据形式为json
                success : sucFunc,
                error : function(errorMsg) { //请求失败时执行该函数
                    alert("图表请求数据失败!");
                    myChart1.hideLoading();
                }
            }
            );
    </script>

    <input type="hidden"  onclick="goToPage(1)" id="but_0" value="上一月">
    <input type="hidden" onclick="goToPage(-1)" id="but_1"  value="下一月">
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: DEV
  Date: 2019-3-27
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <!-- 引入 echarts.js -->
    <script src="dist/echarts.min.js"></script>
    <script src="jquery-3.3.1.min.js"></script>
</head>
<body>
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<!-- <div id="main2" style="width: 1000px;height:400px;"></div> -->
<div id="main2" style="width:95%;height:95%;"></div>




<script  type="text/javascript">
    var myChart1=echarts.init(document.getElementById('main2'));



    //利用数组，自己将东西直接接收
    var nums=[],nums2=[];
    var total=0;
    var myTimerVar;

    function setMapData(result) {
        //请求成功时执行该函数内容，result即为服务器返回的json对象
        console.log(result);

        // var s_title='申请授信户数图';
        // var dim1='申请户数';
        // var dim2='授信户数';
        // var col1='in_hushu_';
        // var col2='credit_hushu_';
        // var y_lable='申请/授信';
        // var y_scale='户';


        var s_title='授信支用金额图';
        var dim1='授信金额';
        var dim2='支用金额';
        var col1='credit_amount_';
        var col2='use_success_amount_';
        var y_lable='授信/支用';
        var y_scale='元';

        var color_1='#0080b9';
        var color_2='#0080b9';
        var color_3='#0080b9';
        var color_4='#0080b9';
        var color_5='#0080b9';
        var color_6='#0080b9';

        var option= {
            title: {
                text: s_title,
                left:'40%',
                textStyle: {
                    fontFamily:'Microsoft YaHei',
                    fontSize:24
                }
            },
            tooltip: { // 提示
                trigger: 'axis',
                axisPointer: {
                    type: 'shadow'
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
                {
                    type: 'inside',
                    start: 30,
                    end: 100
                },
                {
                    start: 0,
                    end: 90,
                    handleIcon: 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
                    handleSize: '80%',
                    handleStyle: {
                        color: '#fff',
                        shadowBlur: 3,
                        shadowColor: 'rgba(0, 0, 0, 0.6)',
                        shadowOffsetX: 2,
                        shadowOffsetY: 2
                    }
                }
            ],
            legend: {
                data:[
                    dim1,
                    dim2,
                    dim1+'-富宝贷',
                    dim1+'-张家口POS贷',
                    dim1+'-好享贷',
                    dim1+'-我来贷',
                    dim1+'-甘肃银行-通联宝商贷e',
                    dim2+'-富宝贷',
                    dim2+'-张家口POS贷',
                    dim2+'-好享贷',
                    dim2+'-我来贷',
                    dim2+'-甘肃银行-通联宝商贷e'
                ],
                textStyle: {
                    fontSize:16
                },
                type:'scroll',
                // left:'90%',
                right:'0%',
                top:'5%',
                // height:'20%',
                orient:'vertical'
            },
            grid: [
                {right: '5%', bottom: '5%'}
            ],
            xAxis: {
                // min:'2001-02-21',
                // max:'2020-03-11',
                type: 'category', //time
                // maxInterval: 3600 * 24 * 1000,
                axisLabel: {rotate: 0 } //{rotate: 0, interval: 0} 可以设置成 0 强制显示所有标签。
            },
            yAxis:  [
                { type:'value',
                    name: y_lable,
                    //max: function(value) {
                    //    return Math.round(value.max * 1.3);
                    //},
                    // data: [200,200,200,200,200,200]
                    axisLabel: {
                        formatter: '{value} '+ y_scale
                    }
                }
            ],
            dataset: {
                sourceHeader: false,
                dimensions: [
                    {name: 'date_v', type: 'ordinal'}, // time ordinal
                    {name: 'in_hushu_0', type: 'int'},
                    {name: 'in_hushu_1', type: 'int'},
                    {name: 'in_hushu_2', type: 'int'},
                    {name: 'in_hushu_3', type: 'int'},
                    {name: 'in_hushu_4', type: 'int'},
                    {name: 'in_hushu_5', type: 'int'},
                    {name: 'credit_hushu_0', type: 'int'},
                    {name: 'credit_hushu_1', type: 'int'},
                    {name: 'credit_hushu_2', type: 'int'},
                    {name: 'credit_hushu_3', type: 'int'},
                    {name: 'credit_hushu_4', type: 'int'},
                    {name: 'credit_hushu_5', type: 'int'},
                    {name: 'credit_amount_0', type: 'int'},
                    {name: 'credit_amount_1', type: 'int'},
                    {name: 'credit_amount_2', type: 'int'},
                    {name: 'credit_amount_3', type: 'int'},
                    {name: 'credit_amount_4', type: 'int'},
                    {name: 'credit_amount_5', type: 'int'},
                    {name: 'use_success_amount_0', type: 'int'},
                    {name: 'use_success_amount_1', type: 'int'},
                    {name: 'use_success_amount_2', type: 'int'},
                    {name: 'use_success_amount_3', type: 'int'},
                    {name: 'use_success_amount_4', type: 'int'},
                    {name: 'use_success_amount_5', type: 'int'}
                ],
                source: result
            },
            series: [
                {
                    name: dim1,
                    type: 'bar',
                    barGap: '2%',
                    seriesLayoutBy:'column',
                    itemStyle : {
                        color:  '#004569'
                    },
                    encode: {
                        // 将 "date" 列映射到 X 轴。
                        x: 'date_v',
                        // 将 "apply" 列映射到 Y 轴。
                        y: col1+'0'
                    },
                    barWidth: '23%'
                },
                {
                    name: dim1+'-富宝贷',
                    type: 'bar',
                    barGap: '2%',
                    stack: dim1,
                    seriesLayoutBy:'column',
                    itemStyle : {
                        color:  '#00557d'
                    },
                    encode: {
                        // 将 "date" 列映射到 X 轴。
                        x: 'date_v',
                        // 将 "apply" 列映射到 Y 轴。
                        y: col1+'1'
                    },
                    barWidth: '23%'
                },
                {
                    name: dim1+'-张家口POS贷',
                    type: 'bar',
                    barGap: '2%',
                    stack: dim1,
                    seriesLayoutBy:'column',
                    itemStyle : {
                        color:  '#00699b'
                    },
                    encode: {
                        // 将 "date" 列映射到 X 轴。
                        x: 'date_v',
                        // 将 "apply" 列映射到 Y 轴。
                        y: col1+'2'
                    },
                    barWidth: '23%'
                },
                {
                    name: dim1+'-好享贷',
                    type: 'bar',
                    barGap: '2%',
                    stack: dim1,
                    seriesLayoutBy:'column',
                    itemStyle : {
                        color:  '#0080b9'
                    },
                    encode: {
                        // 将 "date" 列映射到 X 轴。
                        x: 'date_v',
                        // 将 "apply" 列映射到 Y 轴。
                        y: col1+'3'
                    },
                    barWidth: '23%'
                },
                {
                    name: dim1+'-我来贷',
                    type: 'bar',
                    barGap: '5%',
                    stack: dim1,
                    seriesLayoutBy:'column',
                    itemStyle : {
                        color:  '#0096d7'
                    },
                    encode: {
                        // 将 "date" 列映射到 X 轴。
                        x: 'date_v',
                        // 将 "apply" 列映射到 Y 轴。
                        y: col1+'4'
                    },
                    barWidth: '23%'
                },
                {
                    name: dim1+'-甘肃银行-通联宝商贷e',
                    type: 'bar',
                    barGap: '2%',
                    stack: dim1,
                    seriesLayoutBy:'column',
                    itemStyle : {
                        color:  '#00a8f5'
                    },
                    encode: {
                        // 将 "date" 列映射到 X 轴。
                        x: 'date_v',
                        // 将 "apply" 列映射到 Y 轴。
                        y: col1+'5'
                    },
                    barWidth: '23%'
                },
                {
                    name: dim2,
                    type: 'bar',
                    seriesLayoutBy:'column',
                    itemStyle : {
                        color:  '#550e39'
                    },
                    encode: {
                        // 将 "date" 列映射到 X 轴。
                        x: 'date_v',
                        // 将 "use" 列映射到 Y 轴。
                        y: col2+'0'
                    },
                    barWidth: '23%'
                },
                {
                    name: dim2+'-富宝贷',
                    type: 'bar',
                    stack: dim2,
                    seriesLayoutBy:'column',
                    itemStyle : {
                        color:  '#73144e'
                    },
                    encode: {
                        // 将 "date" 列映射到 X 轴。
                        x: 'date_v',
                        // 将 "use" 列映射到 Y 轴。
                        y: col2+'1'
                    },
                    barWidth: '23%'
                },
                {
                    name: dim2+'-张家口POS贷',
                    type: 'bar',
                    stack: dim2,
                    seriesLayoutBy:'column',
                    itemStyle : {
                        color:  '#87175a'
                    },
                    encode: {
                        // 将 "date" 列映射到 X 轴。
                        x: 'date_v',
                        // 将 "use" 列映射到 Y 轴。
                        y: col2+'2'
                    },
                    barWidth: '23%'
                },
                {
                    name: dim2+'-好享贷',
                    type: 'bar',
                    stack: dim2,
                    seriesLayoutBy:'column',
                    itemStyle : {
                        color:  '#9b1967'
                    },
                    encode: {
                        // 将 "date" 列映射到 X 轴。
                        x: 'date_v',
                        // 将 "use" 列映射到 Y 轴。
                        y: col2+'3'
                    },
                    barWidth: '23%'
                },
                {
                    name: dim2+'-我来贷',
                    type: 'bar',
                    stack: dim2,
                    seriesLayoutBy:'column',
                    itemStyle : {
                        color:  '#c41c83'
                    },
                    encode: {
                        // 将 "date" 列映射到 X 轴。
                        x: 'date_v',
                        // 将 "use" 列映射到 Y 轴。
                        y: col2+'4'
                    },
                    barWidth: '23%'
                },
                {
                    name: dim2+'-甘肃银行-通联宝商贷e',
                    type: 'bar',
                    stack: dim2,
                    seriesLayoutBy:'column',
                    itemStyle : {
                        color:  '#ec209c'
                    },
                    encode: {
                        // 将 "date" 列映射到 X 轴。
                        x: 'date_v',
                        // 将 "use" 列映射到 Y 轴。
                        y: col2+'5'
                    },
                    barWidth: '23%'
                }

            ] };


        myChart1.setOption( option );
        clearInterval(myTimerVar);
    }

    function sucFunc(result) {
        // alert("Hello");
        // console.log(result);
        myTimerVar=setInterval(function(){setMapData(result)}, 1000)
    }

    //利用ajax动态获取数据，地址为java提供的接口
    $.ajax(
        {
            type : "post",
            async : true,
            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可 以执行）
            url : "data.jsp",    //请求发送到TestServlet处
            data : {par1:200,par2:"bar2",par3:"300"},
            dataType : "json",        //返回数据形式为json
            success : sucFunc,
            error : function(errorMsg) { //请求失败时执行该函数
                alert("图表请求数据失败!");
                myChart1.hideLoading();
            }
        }
    );
</script>

</body>
</html>
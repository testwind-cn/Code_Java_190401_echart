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
    <div id="main" style="width: 1200px;height:800px;"></div>

    <script  type="text/javascript">
        var myChart1=echarts.init(document.getElementById('show1'));

        var option= { title: { text: '折线图'
            },
            tooltip: {},
            legend: { data:['数值量'] },
            xAxis: { data: ["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"] },
            yAxis: { type:'value'},
            series: [{ name: '数值量',
                type: 'bar',
                data: [] }] };
        myChart1.setOption(option);

        //利用数组，自己将东西直接接收
        var nums=[];

        //利用ajax动态获取数据，地址为java提供的接口
        $.ajax({ type : "post",
            async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
            url : "/api/chart",    //请求发送到TestServlet处
            data : {},
            dataType : "json",        //返回数据形式为json
            success : function(result) { console.log(result);
                //请求成功时执行该函数内容，result即为服务器返回的json对象
                if (result) { for(var i=0;i<result.length;i++){ nums.push(result[i]);    //挨个取出销量并填入销量数组
                } } myChart1.setOption( { series: [{ // 根据名字对应到相应的系列
                        name: '数值量',
                        data: nums,
                        type: 'bar'
                    }] } ) },
            error : function(errorMsg) { //请求失败时执行该函数
                alert("图表请求数据失败!");
                myChart1.hideLoading();
            } });
    </script>

    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));


        var base = +new Date(1968, 9, 3);
        var oneDay = 24 * 3600 * 1000;
        var date = [];

        var data = [Math.random() * 300];

        for (var i = 1; i < 20000; i++) {
            var now = new Date(base += oneDay);
            date.push([now.getFullYear(), now.getMonth() + 1, now.getDate()].join('/'));
            data.push(Math.round((Math.random() - 0.5) * 20 + data[i - 1]));
        }

        option = {
            tooltip: {
                trigger: 'axis',
                position: function (pt) {
                    return [pt[0], '10%'];
                }
            },
            title: {
                left: 'center',
                text: '大数据量面积图',
            },
            toolbox: {
                feature: {
                    dataZoom: {
                        yAxisIndex: 'none'
                    },
                    restore: {},
                    saveAsImage: {}
                }
            },
            xAxis: {
                type: 'category',
                boundaryGap: false,
                data: date
            },
            yAxis: {
                type: 'value',
                boundaryGap: [0, '100%']
            },
            dataZoom: [{
                type: 'inside',
                start: 0,
                end: 10
            }, {
                start: 0,
                end: 10,
                handleIcon: 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
                handleSize: '80%',
                handleStyle: {
                    color: '#fff',
                    shadowBlur: 3,
                    shadowColor: 'rgba(0, 0, 0, 0.6)',
                    shadowOffsetX: 2,
                    shadowOffsetY: 2
                }
            }],
            series: [
                {
                    name:'模拟数据',
                    type:'line',
                    smooth:true,
                    symbol: 'none',
                    sampling: 'average',
                    itemStyle: {
                        color: 'rgb(255, 70, 131)'
                    },
                    areaStyle: {
                        color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                            offset: 0,
                            color: 'rgb(255, 158, 68)'
                        }, {
                            offset: 1,
                            color: 'rgb(255, 70, 131)'
                        }])
                    },
                    data: data
                }
            ]
        };

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
</body>
</html>
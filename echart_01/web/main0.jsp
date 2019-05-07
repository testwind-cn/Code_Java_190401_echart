<%--
  Created by IntelliJ IDEA.
  User: DEV
  Date: 2019-5-5
  Time: 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>普惠小微商户贷业务报表</title>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">

    <style>
        html, body {
            overflow: hidden;
            background: #284b2b;
            height: 100%;
            border: 0;
        }

        #sub_frame0,
        #sub_frame1,
        #sub_frame2,
        #sub_frame3,
        #sub_frame4,
        #sub_frame5
        {
            border: 0;
            height: 100%;
            width: 100%;
            background: #284b2b
        }

    </style>

    <script type="text/javascript">
        // 全局变量
        var current = 0;
        //带参数函数
        function goToPage(param){
            current = current + param;
            for (var i=0; i<=5; i++)
            {
                var s_frame = "sub_frame" + i;
                // var s_page = "page0.jsp?id=" + i + "&mth=" + current;
                var e_frame = document.getElementById(s_frame);
                // alert(e_frame);
                if ( e_frame != null && param > 0 )
                    e_frame.contentDocument.getElementById("but_0").click();
                if ( e_frame != null && param < 0 )
                    e_frame.contentDocument.getElementById("but_1").click();
                //    e_frame.src=s_page;
                //    alert("as is null" + e_frame);

                // 打印传递过来的参数
                // alert(frame);
                // alert(page);
            }
        }
    </script>

</head>
<body>

<table style="width: 100%; height: 95%;border: 0">
    <tbody style="height:100%" >

    <tr style="height: 50%;border:0">
        <td style="width: 33%;">
            <iframe src="page0.jsp?id=0" id="sub_frame0"></iframe>
        </td>
        <td style="width: 34%;">
            <iframe src="page0.jsp?id=1" id="sub_frame1"></iframe>
        </td>
        <td style="width: 33%;">
            <iframe src="page0.jsp?id=2" id="sub_frame2"></iframe>
        </td>
    </tr>


    <tr style="height: 50%;border:0">
        <td>
            <iframe src="page0.jsp?id=3" id="sub_frame3"></iframe>
        </td>
        <td>
            <iframe src="page0.jsp?id=4" id="sub_frame4"></iframe>
        </td>
        <td>
            <iframe src="page0.jsp?id=5" id="sub_frame5"></iframe>
        </td>
    </tr>


    </tbody>
</table>
<input type="button" onclick="goToPage(1)" value="上一月">
<input type="button" onclick="goToPage(-1)" value="下一月">
</body>
</html>

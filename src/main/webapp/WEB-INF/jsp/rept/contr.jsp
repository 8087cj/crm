<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/10 0010
  Time: 下午 5:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>统计报表->客户贡献分析</title>
    <%@include file="/common/head.jsp" %>
</head>
<body class="flat-blue">
<div class="app-container">
    <div class="row content-container">
        <nav class="navbar navbar-default navbar-fixed-top navbar-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-expand-toggle">
                        <i class="fa fa-bars icon"></i>
                    </button>
                    <ol class="breadcrumb navbar-breadcrumb">
                        <li>统计报表</li>
                        <li class="active">客户贡献分析</li>
                    </ol>
                    <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                        <i class="fa fa-th icon"></i>
                    </button>
                </div>

            </div>
        </nav>


        <!-- 左边 -->
        <div class="side-menu sidebar-inverse">
            <%@include file="/common/left-rept.jsp" %>
        </div>

        <!-- Main Content -->
        <div class="container-fluid">
            <div class="side-body">

                <div class="row">
                    <div class="col-xs-12">
                        <div class="card">

                            <!--链接start-->
                            <table class="data_list_table" id="rg">
                                <div>
                                    &nbsp;客户名称:<input id="odrCustomer"/>
                                    &nbsp;年份:<input class="easyui-combobox"  id="yy2"  panelHeight="auto" value="全部"/>
                                    &nbsp;&nbsp;<button class="common_button" id="rgBtn">查询</button>
                                </div>

                            </table>
                            <!--链接end-->

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="app-footer">
        <div class="wrapper">
            <span class="pull-right">2.1 <a href="#"><i class="fa fa-long-arrow-up"></i></a></span> © 2015 Copyright.
        </div>
    </footer>
    <div>

        <script type="text/javascript" >

            $(function() {
                $('#rg').datagrid( {
                    url : 'serviceReport/listOrdersNameAndMoney',
                    columns : [ [  {
                        field : 'odrId',
                        width :'20%',
                        title:'编号'
                    }, {
                        field : 'odrCustomer',
                        width :'40%',
                        title:'客户名称'
                    },{
                        field : 'odrAddr',
                        width :'40%',
                        title:'订单金额（元）'
                    } ] ]
                });

                $('#rgBtn').click(function () {
                    //获取查询文本框的值
                    var createDate=document.getElementById("yy2");
                    var formData = {
                        odrCustomer:$("#odrCustomer").val(),
                        odrAddr:createDate.value
                    };
                    $('#rg').datagrid({
                        //在请求远程数据的时候发送额外的参数(dictName)
                        queryParams:formData
                    });
                    //终止默认行为
                    return false;
                });
            });

            $('#yy2').combobox({
                url:'serviceReport/listOrdersYear',
                method:'post',
                valueField:'odrAddr',
                textField:'odrAddr'
            });

        </script>

    <%@include file="/common/button.jsp" %>

</body>

</html>

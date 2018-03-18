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
    <title>基础数据->查询库存</title>
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
                        <li>基础数据</li>
                        <li class="active">查询库存</li>
                    </ol>
                    <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                        <i class="fa fa-th icon"></i>
                    </button>
                </div>

            </div>
        </nav>


        <!-- 左边 -->
        <div class="side-menu sidebar-inverse">
            <%@include file="/common/left-base.jsp" %>
        </div>

        <!-- Main Content -->
        <div class="container-fluid">
            <div class="side-body">

                <div class="row">
                    <div class="col-xs-12">
                        <div class="card">

                            <!--链接start-->
                            <table class="query_form_table" id="ds">
                                <div>
                                    &nbsp;产品:<input id="stkProdId" class="easyui-combobox"  panelHeight="auto"/>
                                    &nbsp;仓库:<input id="stkWarehouse"/>
                                    &nbsp;&nbsp;<button class="common_button" id="dsBtn">查询</button>
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
                $('#ds').datagrid( {
                    pagination : true,
                    pageList : [ 2, 4, 6, 8 ],
                    pageSize : 6,
                    idFiled : 'stkId',
                    fitColumns:true,
                    singleSelect : true,
                    url : 'storages/Storages',
                    columns : [ [ {
                        field : 'stkId',
                        width :'12%',
                        title:'编号'
                    }, {
                        field : 'stkProdId',
                        width :'18%',
                        title:'产品编号'
                    }, {
                        field : 'stkWarehouse',
                        width :'10%',
                        title:'仓库'
                    },{
                        field : 'stkWare',
                        width :'10%',
                        title:'货位'
                    }, {
                        field : 'stkCount',
                        width :'12%',
                        title:'件数'
                    },{
                        field : 'stkMemo',
                        width :'12%',
                        title:'备注'
                    }

                    ] ]
                });
                $('#dsBtn').click(function () {
                    //获取查询文本框的值
                    var formData = {
                        stkProdId:$("#stkProdId").val(),
                        stkWarehouse:$("#stkWarehouse").val()
                    };

                    $('#ds').datagrid({
                        //在请求远程数据的时候发送额外的参数(dictName)
                        queryParams:formData
                    });
                    //终止默认行为
                    return false;
                });
            })


            $('#stkProdId').combobox({
                url:'product/productsName',
                method:'post',
                valueField:'prodId',
                textField:'prodName'
            });

        </script>

    <%@include file="/common/button.jsp" %>

</body>

</html>

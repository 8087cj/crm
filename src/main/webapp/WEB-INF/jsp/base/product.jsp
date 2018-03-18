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
    <title>基础数据->查询产品信息</title>
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
                        <li class="active">查询产品信息</li>
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
                            <table class="query_form_table" id="da">
                                <div>
                                    &nbsp;名称:<input id="prodName"/>
                                    &nbsp;型号:<input id="prodType"/>
                                    &nbsp;批次:<input size="20" id="prodBatch"/>
                                    &nbsp;&nbsp;<button class="common_button" id="daBtn">查询</button>
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
                $('#da').datagrid( {
                    pagination : true,
                    pageList : [ 2, 4, 6, 8 ],
                    pageSize : 6,
                    idFiled : 'prodId',
                    fitColumns:true,
                    singleSelect : true,

                    url : 'product/Product',
                    columns : [ [ {
                        field : 'prodId',
                        width :'12%',
                        title:'编号'
                    }, {
                        field : 'prodName',
                        width :'18%',
                        title:'名称'
                    }, {
                        field : 'prodType',
                        width :'10%',
                        title:'型号'
                    },{
                        field : 'prodBatch',
                        width :'10%',
                        title:'等级/批次'
                    }, {
                        field : 'prodUnit',
                        width :'12%',
                        title:'单位'
                    },{
                        field : 'prodPrice',
                        width :'12%',
                        title:'单价(元)'
                    },{
                        field : 'prodMemo',
                        width :'12%',
                        title:'备注'
                    }

                    ] ]
                });
                $('#daBtn').click(function () {
                    //获取查询文本框的值
                    var formData = {
                        prodName:$("#prodName").val(),
                        prodType:$("#prodType").val(),
                        prodBatch:$("#prodBatch").val()
                    };

                    $('#da').datagrid({
                        //在请求远程数据的时候发送额外的参数(dictName)
                        queryParams:formData
                    });
                    //终止默认行为
                    return false;
                });
            })
        </script>

        <footer class="app-footer">
            <div class="wrapper">
                <span class="pull-right">2.1 <a href="#"><i class="fa fa-long-arrow-up"></i></a></span> © 2015 Copyright.
            </div>
        </footer>
        <div>

    <%@include file="/common/button.jsp" %>

</body>

</html>

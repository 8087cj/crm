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
    <title>统计报表->客户流失分析</title>
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
                        <li class="active">客户流失分析</li>
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
                            <table class="data_list_table" id="rl">
                                    <div>
                                        &nbsp;客户名称:<input id="lstCustName"/>
                                        &nbsp;客户经理:<input size="20" id="lstCustManagerName"/>
                                        &nbsp;&nbsp;<button class="common_button" id="lostBtn">查询</button>
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
                $('#rl').datagrid( {
                    pagination : true,
                    pageList : [ 2, 4, 6, 8 ],
                    pageSize : 6,
                    idFiled : 'lstId',
                    fitColumns:true,
                    singleSelect : true,
                    url : 'serviceReport/lost',
                    columns : [ [ {
                        field : 'lstId',
                        width :'12%',
                        title:'编号'
                    }, {
                        field : 'lstLostDate',
                        width :'12%',
                        title:'年份',
                        formatter:function (val,rec) {
                            return val.substr(0,4);
                        }
                    }, {
                        field : 'lstCustName',
                        width :'20%',
                        title:'客户'
                    }, {
                        field : 'lstCustManagerName',
                        width :'20%',
                        title:'客户经理'
                    }, {
                        field : 'lstReason',
                        width :'36%',
                        title:'流失原因'
                    } ] ]
                });
                $("#lostBtn").click(function () {
                    var formData={
                        lstCustName:$("#lstCustName").val(),
                        lstCustManagerName:$("#lstCustManagerName").val()
                    };
                    $("#rl").datagrid({queryParams:formData});
                    return false;
                });
            });

        </script>

            <%@include file="/common/button.jsp" %>

</body>

</html>

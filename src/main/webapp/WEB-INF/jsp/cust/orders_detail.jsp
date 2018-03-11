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
    <title>客户信息管理->客户信息->历史订单->订单明细</title>
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
                        <li>客户管理</li>
                        <li class="active">客户信息管理</li>
                        <li class="active">客户信息</li>
                        <li class="active">历史订单</li>
                        <li class="active">订单明细</li>
                    </ol>
                    <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                        <i class="fa fa-th icon"></i>
                    </button>
                </div>

            </div>
        </nav>

        <!-- 左边 -->
        <div class="side-menu sidebar-inverse">
            <%@include file="/common/left-cust.jsp" %>
        </div>

        <!-- Main Content -->
        <div class="container-fluid">
            <div class="side-body">

                <div class="row">
                    <div class="col-xs-12">
                        <div class="card">

                            <!--链接start-->
                            <div class="button_bar">
                                <button class="common_button" onclick="help('');">帮助</button>
                                <button class="common_button" onclick="back();">返回</button>
                            </div>
                            <table class="query_form_table" height="59">
                                <tr>
                                    <th>订单编号</th>
                                    <td>1343445</td>
                                    <th>日期</th>
                                    <td>2007年11月13日</td>
                                </tr>
                                <tr>
                                    <th height="28">送货地址</th>
                                    <td>北京海淀区劳动路205号　</td>
                                    <th height="28">总金额（元）</th>
                                    <td>55200</td>
                                </tr>
                                <tr>
                                    <th height="28">状态</th>
                                    <td>已回款</td>
                                    <th height="28">&nbsp;</th>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            <br />
                            <table class="data_list_table">
                                <tr>
                                    <th>商品</th>
                                    <th>数量</th>
                                    <th>单位</th>
                                    <th>单价（元）</th>
                                    <th>金额（元）</th>
                                </tr>
                                <tr>
                                    <td class="list_data_text">海龙笔记本电脑-i60-2688 9966</td>
                                    <td class="list_data_ltext">2</td>
                                    <td class="list_data_text">台</td>
                                    <td class="list_data_text">10800</td>
                                    <td class="list_data_text">21600</td>
                                </tr>
                                <tr>
                                    <td class="list_data_text">海龙笔记本电脑-i61-2689 6688</td>
                                    <td class="list_data_ltext">2</td>
                                    <td class="list_data_text">台</td>
                                    <td class="list_data_text">16800</td>
                                    <td class="list_data_text">33600</td>
                                </tr>
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

    <%@include file="/common/button.jsp" %>

</body>

</html>

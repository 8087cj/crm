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
    <title>客户信息管理->客户信息->历史订单</title>
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
                            <table class="query_form_table">
                                <tr>
                                    <th>客户编号</th>
                                    <td>KH071202001</td>
                                    <th>客户名称</th>
                                    <td>聪海信息科技有限公司</td>
                                </tr>
                            </table>
                            <br />
                            <table class="data_list_table">
                                <tr>
                                    <th>订单编号</th>
                                    <th>日期</th>
                                    <th>送货地址</th>
                                    <th>状态</th>
                                    <th>操作</th>
                                </tr>
                                <tr>
                                    <td class="list_data_text">1343445</td>
                                    <td class="list_data_text">2007年11月13日</td>
                                    <td class="list_data_text">北京海淀区劳动路205号</td>
                                    <td class="list_data_text">未回款</td>
                                    <td class="list_data_op">
                                        <img onclick="to('orders_detail.html');" title="查看明细" src="../images/bt_detail.gif" class="op_button" /></td>
                                </tr>
                                <tr>
                                    <td class="list_data_text">1343444</td>
                                    <td class="list_data_text">2007年10月29日</td>
                                    <td class="list_data_text">北京海淀区劳动路205号</td>
                                    <td class="list_data_text">已回款</td>
                                    <td class="list_data_op">
                                        <img onclick="to('orders_detail.html');" title="查看明细" src="../images/bt_detail.gif" class="op_button" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="list_data_text">1343443</td>
                                    <td class="list_data_text">2007年10月29日</td>
                                    <td class="list_data_text">北京海淀区劳动路205号</td>
                                    <td class="list_data_text">已回款</td>
                                    <td class="list_data_op">
                                        <img onclick="to('orders_detail.html');" title="查看明细" src="../images/bt_detail.gif" class="op_button" />
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <th colspan="100" class="pager">
                                        <div class="pager">
                                            共59条记录 每页<input value="10" size="2" />条
                                            第<input value="1" size="2"/>页/共5页
                                            <a href="#">第一页</a>
                                            <a href="#">上一页</a>
                                            <a href="#">下一页</a>
                                            <a href="#">最后一页</a>
                                            转到<input value="1" size="2" />页
                                            <button width="20" onclick="reload();">GO</button>
                                        </div>
                                    </th>
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

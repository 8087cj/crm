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
                            <div class="button_bar">
                                <button class="common_button" onclick="help('');">帮助</button>
                                <button class="common_button" onclick="reload();">查询</button>
                            </div>
                            <table class="query_form_table" border="0" cellPadding="3" cellSpacing="0">
                                <tr>
                                    <th>客户名称</th>
                                    <td><input type="text" name="item.lstCustName" value=""></td>
                                    <th>客户经理</th>
                                    <td><input type="text" name="item.lstCustManagerName" value=""></td>
                                </tr>
                            </table><br />
                            <table class="data_list_table">
                                <tr>
                                    <th height="28">编号</th>
                                    <th height="28">年份</th>
                                    <th height="28">客户</th>
                                    <th height="28">客户经理</th>
                                    <th height="28">流失原因</th>
                                </tr>
                                <tr>
                                    <td class="list_data_number" height="27">1</td>
                                    <td class="list_data_text" height="27">2006</td>
                                    <td class="list_data_text" height="27">大空纶纺</td>
                                    <td class="list_data_text" height="27">小满</td>
                                    <td class="list_data_ltext" height="27">客户厂址迁移</td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">2</td>
                                    <td class="list_data_text">2006</td>
                                    <td class="list_data_text">星星广告</td>
                                    <td class="list_data_text">郭小美</td>
                                    <td class="list_data_ltext">客户公司被收购</td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">3</td>
                                    <td class="list_data_text">2005</td>
                                    <td class="list_data_text">和满记餐饮</td>
                                    <td class="list_data_text">周结论</td>
                                    <td class="list_data_ltext">没有采购需求</td>
                                </tr>
                                <tr>
                                    <th colspan="7" class="pager">
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
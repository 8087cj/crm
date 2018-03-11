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
    <title>统计报表->客户服务分析</title>
    <%@include file="/common/head.jsp" %>
</head>
<body class="flat-blue">
<div class="app-container">
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
                            <li class="active">客户服务分析</li>
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
                                <table class="query_form_table">
                                    <tr>
                                        <th>年份</th>
                                        <td>
                                            <select>
                                                <option>全部</option>
                                                <option>2005</option>
                                                <option>2006</option>
                                                <option>2007</option>
                                                <option>2008</option>
                                                <option>2009</option>
                                                <option>2010</option>
                                            </select>
                                        </td>
                                        <th>&nbsp;</th>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <table class="data_list_table">
                                    <tr>
                                        <th>编号</th>
                                        <th>条目</th>
                                        <th>服务数量</th>
                                    </tr>
                                    <tr>
                                        <td class="list_data_number">1</td>
                                        <td class="list_data_text">建议</td>
                                        <td class="list_data_number">12</td>
                                    </tr>
                                    <tr>
                                        <td class="list_data_number">2</td>
                                        <td class="list_data_text">咨询</td>
                                        <td class="list_data_number">26</td>
                                    </tr>
                                    <tr>
                                        <td class="list_data_number">3</td>
                                        <td class="list_data_text">投诉</td>
                                        <td class="list_data_number">38</td>
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

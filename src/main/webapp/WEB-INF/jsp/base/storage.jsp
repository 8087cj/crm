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
                            <div class="button_bar">
                                <button class="common_button" onclick="help('');">帮助</button>
                                <button class="common_button" onclick="reload();">查询</button>
                            </div>
                            <table class="query_form_table">
                                <tr>
                                    <th>产品</th>
                                    <td><input /></td>
                                    <th>仓库</th>
                                    <td><input /></td>
                                    <th>&nbsp;</th>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            <br />
                            <table class="data_list_table">
                                <tr>
                                    <th>序号</th>
                                    <th>产品</th>
                                    <th>仓库</th>
                                    <th>货位</th>
                                    <th>件数</th>
                                    <th>备注</th>
                                </tr>
                                <tr>
                                    <td class="list_data_number">1</td>
                                    <td class="list_data_ltext">幸福牌电视机-818 FFT-2388 EA03</td>
                                    <td class="list_data_ltext">北京-西直门库</td>
                                    <td class="list_data_text">EC-D2</td>
                                    <td class="list_data_number">16</td>
                                    <td class="list_data_ltext">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">2</td>
                                    <td class="list_data_ltext">海龙笔记本电脑-i60-2688 9966</td>
                                    <td class="list_data_ltext">北京-大钟寺库</td>
                                    <td class="list_data_text">EA-B8</td>
                                    <td class="list_data_number">12</td>
                                    <td class="list_data_ltext">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">3</td>
                                    <td class="list_data_ltext">海龙笔记本电脑-i60-2688 9966</td>
                                    <td class="list_data_ltext">北京-马甸库</td>
                                    <td class="list_data_text">EA-A6</td>
                                    <td class="list_data_number">8</td>
                                    <td class="list_data_ltext">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">4</td>
                                    <td class="list_data_ltext">海龙笔记本电脑-i61-2689 6688</td>
                                    <td class="list_data_ltext">天津-恒远电子C库</td>
                                    <td class="list_data_text">北26位</td>
                                    <td class="list_data_number">36</td>
                                    <td class="list_data_ltext">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">5</td>
                                    <td class="list_data_ltext">海龙笔记本电脑-i61-2689 6688</td>
                                    <td class="list_data_ltext">天津-恒远电子C库</td>
                                    <td class="list_data_text">北27位</td>
                                    <td class="list_data_number">36</td>
                                    <td class="list_data_ltext">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">6</td>
                                    <td class="list_data_ltext">海龙笔记本电脑-i61-2689 6688</td>
                                    <td class="list_data_ltext">天津-恒远电子C库</td>
                                    <td class="list_data_text">北28位</td>
                                    <td class="list_data_number">30</td>
                                    <td class="list_data_ltext">&nbsp;</td>
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

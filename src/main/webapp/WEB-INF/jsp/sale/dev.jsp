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
    <title>客户开发计划</title>
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
                        <li>营销管理</li>
                        <li class="active">客户开发计划</li>
                    </ol>
                    <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                        <i class="fa fa-th icon"></i>
                    </button>
                </div>

            </div>
        </nav>

        <!-- 左边 -->
        <div class="side-menu sidebar-inverse">
            <%@include file="/common/left-sale.jsp" %>
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
                                    <th>客户名称</th>
                                    <td><input /></td>
                                    <th>概要</th>
                                    <td><input /></td>
                                    <th>联系人</th>
                                    <td>
                                        <input name="T1" size="20" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <table class="data_list_table">
                                <tr>
                                    <th>编号</th>
                                    <th>客户名称</th>
                                    <th>概要</th>
                                    <th>联系人</th>
                                    <th>联系人电话</th>
                                    <th>创建时间</th>
                                    <th>状态</th>
                                    <th>操作</th>
                                </tr>
                                <tr>
                                    <td class="list_data_number">1</td>
                                    <td class="list_data_text">睿智数码</td>
                                    <td class="list_data_ltext">采购笔记本电脑意向</td>
                                    <td class="list_data_text">刘先生</td>
                                    <td class="list_data_text">13729239239</td>
                                    <td class="list_data_text">2007年12月06日</td>
                                    <td class="list_data_text">开发中</td>
                                    <td class="list_data_op">
                                        <img onclick="to('dev_plan.html');" title="制定计划" src="../images/bt_plan.gif" class="op_button" />
                                        <img onclick="to('dev_execute.html');" title="执行计划" src="../images/bt_feedback.gif" class="op_button" />
                                        <img onclick="alert('用户开发成功，已添加新客户记录。');" title="开发成功" src="../images/bt_yes.gif" class="op_button" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">2</td>
                                    <td class="list_data_text">泰宝实业</td>
                                    <td class="list_data_ltext">采购笔记本电脑意向</td>
                                    <td class="list_data_text">马先生</td>
                                    <td class="list_data_text">13333239239</td>
                                    <td class="list_data_text">2007年11月16日</td>
                                    <td class="list_data_text">已归档</td>
                                    <td class="list_data_op">
                                        <img onclick="to('dev_detail.html');" title="查看" src="../images/bt_detail.gif" class="op_button" />
                                    </td>
                                </tr>
                                <tr>
                                    <th colspan="10" class="pager">
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

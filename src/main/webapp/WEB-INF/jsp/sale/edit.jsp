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
    <title>销售机会管理->编辑销售机会</title>
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
                        <li class="active">销售机会管理</li>
                        <li class="active">编辑销售机会</li>
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
                                <button class="common_button" onclick="back();">返回</button>
                                <button class="common_button" onclick="save('list.html');">保存</button>
                            </div>
                            <table class="query_form_table">
                                <tr>
                                    <th>编号</th>
                                    <td><input readonly value="1" /></td>
                                    <th>机会来源</th>
                                    <td>
                                        <input name="T4" size="20" /></td>
                                </tr>
                                <tr>
                                    <th>客户名称</th>
                                    <td><input value="睿智电脑" /><span class="red_star">*</span></td>
                                    <th>成功机率（%）</th>
                                    <td><input value="70" /><span class="red_star">*</span></td>
                                </tr>
                                <tr>
                                    <th>概要</th>
                                    <td colspan="3"><input value="采购笔记本电脑意向" name="T0" size="52" /><span class="red_star">*</span></td>
                                </tr>
                                <tr>
                                    <th>联系人</th>
                                    <td><input name="T21" value="刘先生" size="20" /></td>
                                    <th>联系人电话</th>
                                    <td><input name="T5" value="13729239239" size="20" /></td>
                                </tr>
                                <tr>
                                    <th>机会描述</th>
                                    <td colspan="3"><textarea rows="6" cols="50" name="S1">...</textarea><span class="red_star">*</span></td>
                                </tr>
                                <tr>
                                    <th>创建人</th>
                                    <td><input name="T19" value="刘颖" readonly size="20" /><span class="red_star">*</span></td>
                                    <th>创建时间</th>
                                    <td><input id="t1" name="T15" value="2007-12-6 16:09:8" readonly size="20" /><span class="red_star">*</span></td>
                                </tr>
                            </table>
                            <br />
                            <table disabled class="query_form_table" id="table1">
                                <tr>
                                    <th>指派给</th>
                                    <td>
                                        <select name="D1">
                                            <option>请选择...</option>
                                            <option>小明</option>
                                            <option>旺财</option>
                                            <option>球球</option>
                                            <option>孙小美</option>
                                            <option>周洁轮</option>
                                        </select> <span class="red_star">*</span></td>
                                    <th>指派时间</th>
                                    <td>
                                        <input id="t2" name="T20" readonly size="20" /><span class="red_star">*</span></td>
                                </tr>
                            </table>
                            <script>
                                setCurTime('t1');
                                setCurTime('t2');
                            </script>
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

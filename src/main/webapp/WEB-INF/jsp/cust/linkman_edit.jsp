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
    <title>客户信息管理->客户信息->联系人->编辑联系人</title>
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
                        <li class="active">联系人</li>
                        <li class="active">编辑联系人</li>
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
                                <button class="common_button" onclick="save('linkman.html');">保存</button>
                            </div>
                            <table class="query_form_table" id="table1">
                                <tr>
                                    <th>姓名</th>
                                    <td><input readonly name="T3" value="沈聪林" size="20" /><span class="red_star">*</span></td>
                                    <th>性别</th>
                                    <td>
                                        <input type="radio" name="gander1" value="V1" checked />男
                                        <input type="radio" name="gander" value="V1" />女
                                    </td>
                                </tr>
                                <tr>
                                    <th>职位</th>
                                    <td><input name="T4" value="总经理" size="20" /><span class="red_star">*</span></td>
                                    <th>办公电话</th>
                                    <td><input name="T5" value="010-68348438-668" size="20" /><span class="red_star">*</span></td>
                                </tr>
                                <tr>
                                    <th>手机</th>
                                    <td><input name="T1" value="13622883228" size="20" /></td>
                                    <th>备注</th>
                                    <td><input name="T2" size="20" /></td>
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

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
    <title>服务管理->单个服务反馈</title>
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
                        <li>服务管理</li>
                        <li class="active">单个服务反馈</li>
                    </ol>
                    <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                        <i class="fa fa-th icon"></i>
                    </button>
                </div>

            </div>
        </nav>


        <!-- 左边 -->
        <div class="side-menu sidebar-inverse">
            <%@include file="/common/left-service.jsp" %>
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
                                <button class="common_button" onclick="save('deal.html');">保存</button>
                            </div>
                            <table class="query_form_table">
                                <tr>
                                    <th>编号</th>
                                    <td>456</td>
                                    <th>服务类型</th>
                                    <td>
                                        咨询</td>
                                </tr>
                                <tr>
                                    <th>概要</th>
                                    <td colspan="3">询问收音机订单运费承担方式</td>
                                </tr>
                                <tr>
                                    <th>客户</th>
                                    <td>太阳药业</td>
                                    <th>状态</th>
                                    <td>已分配</td>
                                </tr>
                                <tr>
                                    <th>服务请求</th>
                                    <td colspan="3">收音机订单运费如何承担？<br>
                                        　</td>
                                </tr>
                                <tr>
                                    <th>创建人</th>
                                    <td>小明</td>
                                    <th>创建时间</th>
                                    <td>2007年12月02日 15时26分58秒</td>
                                </tr>
                            </table>
                            <br />
                            <table class="query_form_table" id="table3">
                                <tr>
                                    <th>分配给</th>
                                    <td>
                                        旺财</td>
                                    <th>分配时间</th>
                                    <td>2007年12月02日 15时28分06秒</td>
                                </tr>
                            </table>
                            <br />
                            <table class="query_form_table" id="table1">
                                <tr>
                                    <th>服务处理</th>
                                    <td colspan="3">回电话给刘经理：<br>
                                        根据相关制度，7元/吨·公里以内由我们负责，之外由客户承担。</td>
                                </tr>
                                <tr>
                                    <th>处理人</th>
                                    <td>郭小美</td>
                                    <th>处理时间</th>
                                    <td>2007年12月02日 17时02分18秒</td>
                                </tr>
                            </table>
                            <br />
                            <table class="query_form_table" id="table2">
                                <tr>
                                    <th>处理结果</th>
                                    <td><input name="T10" size="20" /><span class="red_star">*</span></td>
                                    <th>满意度</th>
                                    <td>
                                        <select>
                                            <option>请选择...</option>
                                            <option>☆☆☆☆☆</option>
                                            <option>☆☆☆☆</option>
                                            <option>☆☆☆</option>
                                            <option>☆☆</option>
                                            <option>☆</option>
                                        </select><span class="red_star">*</span></td>
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

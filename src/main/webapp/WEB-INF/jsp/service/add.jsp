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
    <title>服务管理->服务创建</title>
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
                        <li class="active">服务创建</li>
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
                                <button class="common_button" onclick="add('add.html');">保存</button>
                            </div>
                            <table class="query_form_table">
                                <tr>
                                    <th>编号</th>
                                    <td><input disabled /></td>
                                    <th>服务类型</th>
                                    <td>
                                        <select>
                                            <option>请选择...</option>
                                            <option>咨询</option>
                                            <option>投诉</option>
                                            <option>建议</option>
                                        </select><span class="red_star">*</span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>概要</th>
                                    <td colspan="3"><input size="53" /><span class="red_star">*</span></td>
                                </tr>
                                <tr>
                                    <th>客户</th>
                                    <td><input name="T20" size="20" /><span class="red_star">*</span></td>
                                    <th>状态</th>
                                    <td>新创建</td>
                                </tr>
                                <tr>
                                    <th>服务请求</th>
                                    <td colspan="3"><textarea rows="6" cols="50"></textarea><span class="red_star">*</span></td>
                                </tr>
                                <tr>
                                    <th>创建人</th>
                                    <td><input name="T19" value="刘颖" readonly size="20" /><span class="red_star">*</span></td>
                                    <th>创建时间</th>
                                    <td><input id="t1" name="T15" readonly size="20" /><span class="red_star">*</span></td>
                                </tr>
                            </table>
                            <br />
                            <table disabled class="query_form_table" id="table3">
                                <tr>
                                    <th>分配给</th>
                                    <td>
                                        <select>
                                            <option>请选择...</option>
                                            <option>小明</option>
                                            <option>旺财</option>
                                            <option>球球</option>
                                            <option>孙小美</option>
                                            <option>周洁轮</option>
                                        </select> <span class="red_star">*</span></td>
                                    <th>分配时间</th>
                                    <td><input id="t2" name="T18" readonly size="20" /><span class="red_star">*</span></td>
                                </tr>
                            </table>
                            <br />
                            <table disabled class="query_form_table" id="table1">
                                <tr>
                                    <th>服务处理</th>
                                    <td colspan="3"><textarea rows="6" cols="50"></textarea><span class="red_star">*</span></td>
                                </tr>
                                <tr>
                                    <th>处理人</th>
                                    <td><input name="T17" value="刘颖" readonly size="20" /><span class="red_star">*</span></td>
                                    <th>处理时间</th>
                                    <td><input id="t3" name="T16" readonly size="20" /><span class="red_star">*</span></td>
                                </tr>
                            </table>
                            <br />
                            <table disabled class="query_form_table" id="table2">
                                <tr>
                                    <th>处理结果</th>
                                    <td><input name="T10" size="20" /><span class="red_star">*</span></td>
                                    <th>满意度</th>
                                    <td>
                                        <select name="D1">
                                            <option>请选择...</option>
                                            <option>☆☆☆☆☆</option>
                                            <option>☆☆☆☆</option>
                                            <option>☆☆☆</option>
                                            <option>☆☆</option>
                                            <option>☆</option>
                                        </select><span class="red_star">*</span></td>
                                </tr>
                            </table>
                            <script>
                                setCurTime('t1');
                                setCurTime('t2');
                                setCurTime('t3');
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

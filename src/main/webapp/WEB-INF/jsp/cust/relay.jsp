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
    <title>客户流失管理-> 确认流失</title>
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
                        <li class="active">客户流失管理</li>
                        <li class="active">确认流失</li>
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
                                <button class="common_button" onclick="to('confirm.html');">确认流失</button>
                                <button class="common_button" onclick="save('list.html');">保存</button>
                            </div>
                            <table class="query_form_table">
                                <tr>
                                    <th>编号</th>
                                    <td>1</td>
                                    <th>客户</th>
                                    <td>阳光实业</td>
                                </tr>
                                <tr>
                                    <th>客户经理</th>
                                    <td>
                                        球球</td>
                                    <th>上次下单时间</th>
                                    <td>
                                        2005年12月07日</td>
                                </tr>
                                <tr>
                                    <th>暂缓措施</th>
                                    <td colspan="3">
                                        打电话给客户了解不再购买本公司产品的原因。<br>
                                        发送新产品目录给客户。</td>
                                </tr>
                                <tr>
                                    <th>追加暂缓措施</th>
                                    <td colspan="3">
                                        <textarea rows="6" cols="50"></textarea><span class="red_star">*</span></td>
                                </tr>
                            </table>
                            <br />
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

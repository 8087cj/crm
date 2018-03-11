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
    <title>销售机会管理->指派销售机会</title>
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
                        <li class="active">指派销售机会</li>
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
                                    <td>1</td>
                                    <th>机会来源</th>
                                    <td>
                                        　</td>
                                </tr>
                                <tr>
                                    <th>客户名称</th>
                                    <td>睿智电脑</td>
                                    <th>成功机率（%）</th>
                                    <td>&nbsp;70</td>
                                </tr>
                                <tr>
                                    <th>概要</th>
                                    <td colspan="3">采购笔记本电脑意向</td>
                                </tr>
                                <tr>
                                    <th>联系人</th>
                                    <td>刘先生</td>
                                    <th>联系人电话</th>
                                    <td>13729239239</td>
                                </tr>
                                <tr>
                                    <th>机会描述</th>
                                    <td colspan="3">...</td>
                                </tr>
                                <tr>
                                    <th>创建人</th>
                                    <td>刘颖</td>
                                    <th>创建时间</th>
                                    <td>2007年12月06日 16时09分08秒</td>
                                </tr>
                            </table>
                            <br />
                            <table class="query_form_table" id="table1">
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

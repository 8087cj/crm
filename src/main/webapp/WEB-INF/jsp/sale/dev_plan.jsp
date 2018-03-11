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
    <title>客户开发计划->制定计划</title>
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
                        <li class="active">制定计划</li>
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
                                <button class="common_button" onclick="to('dev_execute.html');">执行计划</button>
                                <button class="common_button" onclick="back();">返回</button>
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
                                <tr>
                                    <th>指派给</th>
                                    <td>
                                        郭小美</td>
                                    <th>指派时间</th>
                                    <td>
                                        2007年12月07日 09时00分38秒</td>
                                </tr>
                            </table>
                            <br />
                            <table class="data_list_table" id="table1">
                                <tr>
                                    <th width="150px">日期</th>
                                    <th height="31">计划项</th>
                                </tr>
                                <tr>
                                    <td class="list_data_text" height="24">2008年01月18日</td>
                                    <td class="list_data_ltext" height="24"><input size="50" value="初步接触，了解客户意向。" />
                                        <button class="common_button" onclick="save('dev_plan.html');">保存</button>
                                        <button class="common_button" onclick="del('');">删除</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="list_data_text">2008年02月22日</td>
                                    <td class="list_data_ltext"><input size="50" value="推介产品。" name="T1" />
                                        <button class="common_button" onclick="save('dev_plan.html');">保存</button>
                                        <button class="common_button" onclick="del('');">删除</button>
                                    </td>
                                </tr>
                            </table>
                            <div class="button_bar">
                                <button class="common_button" onclick="add('dev_plan.html');">保存</button>
                            </div>
                            <table class="query_form_table" id="table2">
                                <tr>
                                    <th>日期</th>
                                    <td><input /><span class="red_star">*</span></td>
                                    <th>计划项</th>
                                    <td>
                                        <input size="50" name="T2" /><span class="red_star">*</span>
                                    </td>
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
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
    <title>服务管理->服务处理</title>
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
                        <li class="active">服务处理</li>
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
                                <button class="common_button" onclick="reload();">查询</button>
                            </div>
                            <table class="query_form_table">
                                <tr>
                                    <th height="28">客户</th>
                                    <td><input /></td>
                                    <th height="28">概要</th>
                                    <td><input /></td>
                                    <th height="28">服务类型</th>
                                    <td>
                                        <select name="D1">
                                            <option>全部</option>
                                            <option>咨询</option>
                                            <option>建议</option>
                                            <option>投诉</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th height="32">创建日期</th>
                                    <td colspan="3">
                                        <input name="T2" size="10" /> - <input name="T1" size="10" /></td>
                                    <th height="32">状态</th>
                                    <td>
                                        <select name="D1">
                                            <option selected>已分配</option>
                                        </select>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <table class="data_list_table">
                                <tr>
                                    <th>编号</th>
                                    <th>客户</th>
                                    <th>概要</th>
                                    <th>服务类型</th>
                                    <th>创建人</th>
                                    <th>创建日期</th>
                                    <th>操作</th>
                                </tr>
                                <tr>
                                    <td class="list_data_number">456</td>
                                    <td class="list_data_text">太阳药业</td>
                                    <td class="list_data_ltext">询问收音机订单运费承担方式</td>
                                    <td class="list_data_text">咨询</td>
                                    <td class="list_data_text">小明</td>
                                    <td class="list_data_text">2007年12月02日</td>
                                    <td class="list_data_op">

                                        <img onclick="to('deal_detail.html');" title="处理" src="../images/bt_deal.gif" class="op_button" />

                                    </td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">455</td>
                                    <td class="list_data_text">太阳药业</td>
                                    <td class="list_data_ltext">询问收音机价格</td>
                                    <td class="list_data_text">咨询</td>
                                    <td class="list_data_text">小明</td>
                                    <td class="list_data_text">2007年12月02日</td>
                                    <td class="list_data_op">

                                        <img onclick="to('deal_detail.html');" title="处理" src="../images/bt_deal.gif" class="op_button" /></td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">454</td>
                                    <td class="list_data_text">云南天河烟草公司</td>
                                    <td class="list_data_ltext">询问收音机价格</td>
                                    <td class="list_data_text">咨询</td>
                                    <td class="list_data_text">小明</td>
                                    <td class="list_data_text">2007年12月02日</td>
                                    <td class="list_data_op">

                                        <img onclick="to('deal_detail.html');" title="处理" src="../images/bt_deal.gif" class="op_button" /></td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">453</td>
                                    <td class="list_data_text">云南天河烟草公司</td>
                                    <td class="list_data_ltext">询问收音机价格</td>
                                    <td class="list_data_text">建议</td>
                                    <td class="list_data_text">小明</td>
                                    <td class="list_data_text">2007年12月02日</td>

                                    <td class="list_data_op">

                                        <img onclick="to('deal_detail.html');" title="处理" src="../images/bt_deal.gif" class="op_button" /></td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">452</td>
                                    <td class="list_data_text">云南天河烟草公司</td>
                                    <td class="list_data_ltext">询问收音机价格</td>
                                    <td class="list_data_text">咨询</td>
                                    <td class="list_data_text">小明</td>
                                    <td class="list_data_text">2007年12月02日</td>
                                    <td class="list_data_op">

                                        <img onclick="to('deal_detail.html');" title="处理" src="../images/bt_deal.gif" class="op_button" /></td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">451</td>
                                    <td class="list_data_text">云南天河烟草公司</td>
                                    <td class="list_data_ltext">询问收音机价格</td>
                                    <td class="list_data_text">投诉</td>
                                    <td class="list_data_text">小明</td>
                                    <td class="list_data_text">2007年12月02日</td>
                                    <td class="list_data_op">

                                        <img onclick="to('deal_detail.html');" title="处理" src="../images/bt_deal.gif" class="op_button" /></td>
                                </tr>
                                <tr>
                                    <td class="list_data_number" height="15">540</td>
                                    <td class="list_data_text" height="15">云南天河烟草公司</td>
                                    <td class="list_data_ltext" height="15">询问收音机价格</td>
                                    <td class="list_data_text" height="15">建议</td>
                                    <td class="list_data_text" height="15">小明</td>
                                    <td class="list_data_text" height="15">2007年12月02日</td>
                                    <td class="list_data_op" height="15">

                                        <img onclick="to('deal_detail.html');" title="处理" src="../images/bt_deal.gif" class="op_button" /></td>
                                </tr>
                                <tr>
                                    <td class="list_data_number" height="35">439</td>
                                    <td class="list_data_text" height="35">云南天河烟草公司</td>
                                    <td class="list_data_ltext" height="35">询问收音机价格</td>
                                    <td class="list_data_text" height="35">咨询</td>
                                    <td class="list_data_text" height="35">小明</td>
                                    <td class="list_data_text" height="35">2007年12月02日</td>
                                    <td class="list_data_op" height="35">

                                        <img onclick="to('deal_detail.html');" title="处理" src="../images/bt_deal.gif" class="op_button" /></td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">438</td>
                                    <td class="list_data_text">云南天河烟草公司</td>
                                    <td class="list_data_ltext">询问收音机价格</td>
                                    <td class="list_data_text">建议</td>
                                    <td class="list_data_text">小明</td>
                                    <td class="list_data_text">2007年12月02日</td>
                                    <td class="list_data_op">

                                        <img onclick="to('deal_detail.html');" title="处理" src="../images/bt_deal.gif" class="op_button" /></td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">437</td>
                                    <td class="list_data_text">云南天河烟草公司</td>
                                    <td class="list_data_ltext">询问收音机价格</td>
                                    <td class="list_data_text">建议</td>
                                    <td class="list_data_text">小明</td>
                                    <td class="list_data_text">2007年12月02日</td>
                                    <td class="list_data_op">

                                        <img onclick="to('deal_detail.html');" title="处理" src="../images/bt_deal.gif" class="op_button" /></td>
                                </tr>
                                <tr>
                                    <th colspan="7" class="pager">
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

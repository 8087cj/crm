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
    <title>客户信息管理</title>
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
                                <button class="common_button" onclick="reload();">查询</button>
                            </div>
                            <table class="query_form_table">
                                <tr>
                                    <th>客户编号</th>
                                    <td><input /></td>
                                    <th>名称</th>
                                    <td><input /></td>
                                    <th>地区</th>
                                    <td>
                                        <select>
                                            <option>全部</option>
                                            <option>北京</option>
                                            <option>华北</option>
                                            <option>中南</option>
                                            <option>东北</option>
                                            <option>西部</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th>客户经理</th>
                                    <td><input /></td>
                                    <th>客户等级</th>
                                    <td>
                                        <select>
                                            <option>全部</option>
                                            <option>战略合作伙伴</option>
                                            <option>合作伙伴</option>
                                            <option>大客户</option>
                                            <option>普通客户</option>
                                        </select>
                                    </td>
                                    <th>　</th>
                                    <td>　</td>
                                </tr>
                            </table>
                            <br />
                            <table class="data_list_table">
                                <tr>
                                    <th>序号</th>
                                    <th>客户编号</th>
                                    <th>名称</th>
                                    <th>地区</th>
                                    <th>客户经理</th>
                                    <th>客户等级</th>
                                    <th>操作</th>
                                </tr>
                                <tr>
                                    <td class="list_data_number">1</td>
                                    <td class="list_data_text">KH071202001</td>
                                    <td class="list_data_ltext">聪海信息科技有限公司</td>
                                    <td class="list_data_text">北京</td>
                                    <td class="list_data_text">小明</td>
                                    <td class="list_data_text">战略合作伙伴</td>
                                    <td class="list_data_op">
                                        <img onclick="to('edit.html');" title="编辑" src="../images/bt_edit.gif" class="op_button" />
                                        <img onclick="to('linkman.html');" title="联系人" src="../images/bt_linkman.gif" class="op_button" />
                                        <img onclick="to('activities.html');" title="交往记录" src="../images/bt_acti.gif" class="op_button" />
                                        <img onclick="to('orders.html');" title="历史订单" src="../images/bt_orders.gif" class="op_button" />

                                        <img onclick="del('“客户：聪海信息科技有限公司”');" title="删除" src="../images/bt_del.gif" class="op_button" />

                                    </td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">2</td>
                                    <td class="list_data_text">KH071201008</td>
                                    <td class="list_data_ltext">北京明科科技有限公司</td>
                                    <td class="list_data_text">北京</td>
                                    <td class="list_data_text">小明</td>
                                    <td class="list_data_text">普通客户</td>
                                    <td class="list_data_op">
                                        <img onclick="to('edit.html');" title="编辑" src="../images/bt_edit.gif" class="op_button" />
                                        <img onclick="to('linkman.html');" title="联系人" src="../images/bt_linkman.gif" class="op_button" />
                                        <img onclick="to('activities.html');" title="交往记录" src="../images/bt_acti.gif" class="op_button" />
                                        <img onclick="to('orders.html');" title="历史订单" src="../images/bt_orders.gif" class="op_button" />

                                        <img onclick="del('“客户：聪海信息科技有限公司”');" title="删除" src="../images/bt_del.gif" class="op_button" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">3</td>
                                    <td class="list_data_text">KH071201007</td>
                                    <td class="list_data_ltext">太阳药业</td>
                                    <td class="list_data_text">华北</td>
                                    <td class="list_data_text">旺财</td>
                                    <td class="list_data_text">重点开发客户</td>
                                    <td class="list_data_op">
                                        <img onclick="to('edit.html');" title="编辑" src="../images/bt_edit.gif" class="op_button" />&nbsp;
                                        <img onclick="to('linkman.html');" title="联系人" src="../images/bt_linkman.gif" class="op_button" />
                                        <img onclick="to('activities.html');" title="交往记录" src="../images/bt_acti.gif" class="op_button" />
                                        <img onclick="to('orders.html');" title="历史订单" src="../images/bt_orders.gif" class="op_button" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">4</td>
                                    <td class="list_data_text">KH071201006</td>
                                    <td class="list_data_ltext">云南天河烟草公司</td>
                                    <td class="list_data_text">中南</td>
                                    <td class="list_data_text">球球</td>

                                    <td class="list_data_text">重点开发客户</td>
                                    <td class="list_data_op">
                                        <img onclick="to('edit.html');" title="编辑" src="../images/bt_edit.gif" class="op_button" />
                                        <img onclick="to('linkman.html');" title="联系人" src="../images/bt_linkman.gif" class="op_button" />
                                        <img onclick="to('activities.html');" title="交往记录" src="../images/bt_acti.gif" class="op_button" />
                                        <img onclick="to('orders.html');" title="历史订单" src="../images/bt_orders.gif" class="op_button" /></td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">5</td>
                                    <td class="list_data_text">KH071201005</td>
                                    <td class="list_data_ltext">北京天桥信息技术有限公司</td>
                                    <td class="list_data_text">北京</td>
                                    <td class="list_data_text">小明</td>
                                    <td class="list_data_text">大客户</td>
                                    <td class="list_data_op">
                                        <img onclick="to('edit.html');" title="编辑" src="../images/bt_edit.gif" class="op_button" />
                                        <img onclick="to('linkman.html');" title="联系人" src="../images/bt_linkman.gif" class="op_button" />
                                        <img onclick="to('activities.html');" title="交往记录" src="../images/bt_acti.gif" class="op_button" />
                                        <img onclick="to('orders.html');" title="历史订单" src="../images/bt_orders.gif" class="op_button" />

                                        <img onclick="del('“客户：聪海信息科技有限公司”');" title="删除" src="../images/bt_del.gif" class="op_button" /></td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">6</td>
                                    <td class="list_data_text">KH071201004</td>
                                    <td class="list_data_ltext">北京白羽有限责任公司</td>
                                    <td class="list_data_text">北京</td>
                                    <td class="list_data_text">小明</td>
                                    <td class="list_data_text">普通客户</td>
                                    <td class="list_data_op">
                                        <img onclick="to('edit.html');" title="编辑" src="../images/bt_edit.gif" class="op_button" />
                                        <img onclick="to('linkman.html');" title="联系人" src="../images/bt_linkman.gif" class="op_button" />
                                        <img onclick="to('activities.html');" title="交往记录" src="../images/bt_acti.gif" class="op_button" />
                                        <img onclick="to('orders.html');" title="历史订单" src="../images/bt_orders.gif" class="op_button" />

                                        <img onclick="del('“客户：聪海信息科技有限公司”');" title="删除" src="../images/bt_del.gif" class="op_button" /></td>
                                </tr>
                                <tr>
                                    <td class="list_data_number" height="15">7</td>
                                    <td class="list_data_text" height="15">KH071201003</td>
                                    <td class="list_data_ltext" height="15">北京神光培训</td>
                                    <td class="list_data_text" height="15">北京</td>
                                    <td class="list_data_text" height="15">阿咪</td>
                                    <td class="list_data_text" height="15">大客户</td>
                                    <td class="list_data_op" height="15">
                                        <img onclick="to('edit.html');" title="编辑" src="../images/bt_edit.gif" class="op_button" />&nbsp;
                                        <img onclick="to('linkman.html');" title="联系人" src="../images/bt_linkman.gif" class="op_button" />
                                        <img onclick="to('activities.html');" title="交往记录" src="../images/bt_acti.gif" class="op_button" />
                                        <img onclick="to('orders.html');" title="历史订单" src="../images/bt_orders.gif" class="op_button" />
                                    </td>
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

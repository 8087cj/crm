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
    <title>基础数据->数据字典管理</title>
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
                        <li>基础数据</li>
                        <li class="active">数据字典管理</li>
                    </ol>
                    <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                        <i class="fa fa-th icon"></i>
                    </button>
                </div>

            </div>
        </nav>


        <!-- 左边 -->
        <div class="side-menu sidebar-inverse">
            <%@include file="/common/left-base.jsp" %>
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
                                <button class="common_button" onclick="to('dict_add.jsp');">新建</button>
                                <button class="common_button" onclick="reload();">查询</button>
                            </div>
                            <table class="query_form_table">
                                <tr>
                                    <th>类别</th>
                                    <td><input /></td>
                                    <th>条目</th>
                                    <td><input /></td>
                                    <th>值</th>
                                    <td><input /></td>
                                </tr>
                            </table>
                            <br />
                            <table class="data_list_table">
                                <tr>
                                    <th>编号</th>
                                    <th>类别</th>
                                    <th>条目</th>
                                    <th>值</th>
                                    <th>是否可编辑</th>
                                    <th>操作</th>
                                </tr>
                                <tr>
                                    <td class="list_data_number">1</td>
                                    <td class="list_data_ltext">企业客户等级</td>
                                    <td class="list_data_text">普通客户</td>
                                    <td class="list_data_text">1</td>
                                    <td class="list_data_text">否</td>
                                    <td class="list_data_op">　</td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">2</td>
                                    <td class="list_data_ltext">企业客户等级</td>
                                    <td class="list_data_text">重点开发客户</td>
                                    <td class="list_data_text">2</td>
                                    <td class="list_data_text">否</td>
                                    <td class="list_data_op">　</td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">3</td>
                                    <td class="list_data_ltext">企业客户等级</td>
                                    <td class="list_data_text">大客户</td>
                                    <td class="list_data_text">3</td>
                                    <td class="list_data_text">否</td>
                                    <td class="list_data_op">　</td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">4</td>
                                    <td class="list_data_ltext">企业客户等级</td>
                                    <td class="list_data_text">合作伙伴</td>
                                    <td class="list_data_text">4</td>
                                    <td class="list_data_text">否</td>
                                    <td class="list_data_op">　</td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">5</td>
                                    <td class="list_data_ltext">企业客户等级</td>
                                    <td class="list_data_text">战略合作伙伴</td>
                                    <td class="list_data_text">5</td>
                                    <td class="list_data_text">否</td>
                                    <td class="list_data_op">　</td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">6</td>
                                    <td class="list_data_ltext">服务类型</td>
                                    <td class="list_data_text">咨询</td>
                                    <td class="list_data_text">咨询</td>
                                    <td class="list_data_text">是</td>
                                    <td class="list_data_op">
                                        <img onclick="to('dict_edit.jsp');" title="编辑" src="../images/bt_edit.gif" class="op_button" />
                                        <img onclick="del('“服务类型：咨询”');" title="删除" src="../images/bt_del.gif" class="op_button" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">7</td>
                                    <td class="list_data_ltext">服务类型</td>
                                    <td class="list_data_text">投诉</td>
                                    <td class="list_data_text">投诉</td>
                                    <td class="list_data_text">是</td>
                                    <td class="list_data_op">
                                        <img onclick="to('dict_edit.jsp');" title="编辑" src="../images/bt_edit.gif" class="op_button" />
                                        <img onclick="del('“服务类型：投诉”');" title="删除" src="../images/bt_del.gif" class="op_button" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">8</td>
                                    <td class="list_data_ltext">服务类型</td>
                                    <td class="list_data_text">建议</td>
                                    <td class="list_data_text">建议</td>
                                    <td class="list_data_text">是</td>
                                    <td class="list_data_op">
                                        <img onclick="to('dict_edit.jsp');" title="编辑" src="../images/bt_edit.gif" class="op_button" />
                                        <img onclick="del('“服务类型：建议”');" title="删除" src="../images/bt_del.gif" class="op_button" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">9</td>
                                    <td class="list_data_ltext">地区</td>
                                    <td class="list_data_text">北京</td>
                                    <td class="list_data_text">1</td>
                                    <td class="list_data_text">是</td>
                                    <td class="list_data_op">
                                        <img onclick="to('dict_edit.jsp');" title="编辑" src="../images/bt_edit.gif" class="op_button" />
                                        <img onclick="del('“服务类型：建议”');" title="删除" src="../images/bt_del.gif" class="op_button" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="list_data_number">10</td>
                                    <td class="list_data_ltext">地区</td>
                                    <td class="list_data_text">华北</td>
                                    <td class="list_data_text">2</td>
                                    <td class="list_data_text">是</td>
                                    <td class="list_data_op">
                                        <img onclick="to('dict_edit.jsp');" title="编辑" src="../images/bt_edit.gif" class="op_button" />
                                        <img onclick="del('“服务类型：建议”');" title="删除" src="../images/bt_del.gif" class="op_button" />
                                    </td>
                                </tr>
                                <tr>
                                    <th colspan="6" class="pager">
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
    </div>

    <%@include file="/common/button.jsp" %>

</body>

</html>

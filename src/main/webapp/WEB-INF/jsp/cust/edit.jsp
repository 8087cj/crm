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
    <title>客户信息管理->客户信息</title>
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
                                <button class="common_button" onclick="to('linkman.html');">联系人</button>
                                <button class="common_button" onclick="to('activities.html');">交往记录</button>
                                <button class="common_button" onclick="to('orders.html');">历史订单</button>

                                <button class="common_button" onclick="back();">返回</button>
                                <button class="common_button" onclick="save('dict.html');">保存</button>
                            </div>
                            <table class="query_form_table"><tr>
                                <th>客户编号</th>
                                <td>KH071202001</td>
                                <th>名称</th>
                                <td><input value="北京聪海信息科技有限公司" /><span class="red_star">*</span></td></tr>
                                <tr>
                                    <th>地区</th>
                                    <td>
                                        <select>
                                            <option>请选择...</option>
                                            <option selected>北京</option>
                                            <option>华北</option>
                                            <option>中南</option>
                                            <option>东北</option>
                                            <option>西部</option>
                                        </select>
                                        <span class="red_star">*</span></td>
                                    <th>客户经理</th>
                                    <td>
                                        <select>
                                            <option>请选择...</option>
                                            <option selected>小明</option>
                                            <option>旺财</option>
                                            <option>球球</option>
                                            <option>孙小美</option>
                                            <option>周洁轮</option>
                                        </select><span class="red_star">*</span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>客户等级</th>
                                    <td>
                                        <select>
                                            <option>请选择...</option>
                                            <option selected>战略合作伙伴</option>
                                            <option>合作伙伴</option>
                                            <option>大客户</option>
                                            <option>重点开发客户</option>
                                            <option>普通客户</option>
                                        </select><span class="red_star">*</span>
                                    </td>
                                    <th>　</th>
                                    <td>　</td>
                                </tr>
                                <tr>
                                    <th>客户满意度</th>
                                    <td>
                                        <select><option value="">未指定</option>
                                            <option value="5">☆☆☆☆☆</option>
                                            <option value="4">☆☆☆☆</option>
                                            <option value="3" selected="selected">☆☆☆</option>
                                            <option value="2">☆☆</option>
                                            <option value="1">☆</option></select><span class="red_star">*</span>
                                    </td>
                                    <th>客户信用度</th>
                                    <td>
                                        <select><option value="">未指定</option>
                                            <option value="5">☆☆☆☆☆</option>
                                            <option value="4">☆☆☆☆</option>
                                            <option value="3" selected="selected">☆☆☆</option>
                                            <option value="2">☆☆</option>
                                            <option value="1">☆</option></select><span class="red_star">*</span>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <table class="query_form_table" id="table1">
                                <tr>
                                    <th>地址</th>
                                    <td><input value="北京市海淀区成府路702号"  /><span class="red_star">*</span>
                                    </td>
                                    <th>邮政编码</th>
                                    <td><input value="100027" name="T1" size="20" /><span class="red_star">*</span></td>
                                </tr>
                                <tr>
                                    <th>电话</th>
                                    <td>
                                        <input value="010-62283393" name="T4" size="20"  /><span class="red_star">*</span></td>
                                    <th>传真</th>
                                    <td>
                                        <input value="010-62283396" name="T5" size="20"  /><span class="red_star">*</span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>网址</th>
                                    <td>
                                        <input value="www.conghai.com" name="T6" size="20"  /><span class="red_star">*</span>
                                    </td>
                                    <th>　</th>
                                    <td>　</td>
                                </tr>
                            </table>
                            <br />
                            <table class="query_form_table" id="table2">
                                <tr>
                                    <th>营业执照注册号</th>
                                    <td><input value="" name="T13" size="20" /></td>
                                    <th>法人</th>
                                    <td><input value="聪颖" name="T3" size="20" /><span class="red_star">*</span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>注册资金（万元）</th>
                                    <td>
                                        <input value="" name="T7" size="20" /> </td>
                                    <th>年营业额</th>
                                    <td>
                                        <input value="" name="T8" size="20" />
                                    </td>
                                </tr>
                                <tr>
                                    <th>开户银行</th>
                                    <td>
                                        <input value="北京银行 中关村支行" name="T9" size="20" /><span class="red_star">*</span>
                                    </td>
                                    <th>银行帐号</th>
                                    <td><input value="62258827238382838" name="T10" size="20" /><span class="red_star">*</span></td>
                                </tr>
                                <tr>
                                    <th>地税登记号</th>
                                    <td>
                                        <input value="" name="T11" size="20" /></td>
                                    <th>国税登记号</th>
                                    <td><input value="" name="T12" size="20" /></td>
                                </tr>
                            </table>
                            <p>　</p>
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
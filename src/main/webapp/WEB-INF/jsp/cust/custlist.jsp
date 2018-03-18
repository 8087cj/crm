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

                            <table class="query_form_table" id="cc">
                                <div>
                                    <div>
                                        &nbsp;客户编号:<input id="CustId"/>
                                        &nbsp;客户名称:<input id="CustName"/>
                                        &nbsp;地区:<input class="easyui-combobox" id="cx" name="custRegion"  panelHeight="auto" value="全部"/>
                                        <br>
                                        &nbsp;客户经理:<input id="ManagerName"/>
                                        &nbsp;客户等级:<input class="easyui-combobox" id="cdj" name="custLevelLabel" panelHeight="auto" value="全部"/>
                                        &nbsp;&nbsp;<button class="common_button" id="ccBtn">查询</button>
                                    </div>
                                    <div>
                                        <a  onclick="openCstEditDialog()" class="easyui-linkbutton" iconCls="icon-edit" plain="true" >编辑</a>
                                        <a  onclick="openSalEditDialog()" class="easyui-linkbutton" iconCls="icon-man" plain="true" >联系人</a>
                                        <a  onclick="deleteSal()" class="easyui-linkbutton" iconCls="icon-large-shapes" plain="true">交往记录</a>
                                        <a  onclick="openLldd()" class="easyui-linkbutton" iconCls="icon-large-chart" plain="true">历史订单</a>
                                        <a  onclick="deleteSal()" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
                                    </div>
                                </div>

                            </table>

                            <!-- 编辑客户管理start -->
                            <div id="cc-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:780px;  padding:20px">
                                <form method="post" id="cc-form">

                                    <table class="query_form_table">

                                        <tr>
                                            <th >客户编号:</th>
                                            <td><input name="custNo" disabled="true"/><span class="red_star">*</span></td>
                                            <td><input style="display: none"/></td>
                                            <th>名称:</th>
                                            <td><input name="custName" /><span class="red_star">*</span></td>
                                        </tr>
                                        <tr>
                                            <th>地区:</th>
                                            <td>
                                                <input class="easyui-combobox" id="cx2" name="custRegion"  panelHeight="auto" />
                                            </td>
                                            <td><input style="display: none"/></td>
                                            <th>客户经理:</th>
                                            <td>
                                                <input class="easyui-combobox" id="mmjl" name="custManagerName"  panelHeight="auto" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>客户等级:</th>
                                            <td  >
                                                <input class="easyui-combobox" id="cdj2" name="custLevelLabel" panelHeight="auto" />
                                            </td>
                                            <td><input style="display: none"/></td>
                                            <td><input style="display: none"/></td>
                                            <td><input style="display: none"/></td>
                                        </tr>

                                        <tr>
                                            <th>客户满意度</th>
                                            <td>
                                                <select class="easyui-combobox" name="custSatisfy">
                                                    <option value="">未指定</option>
                                                    <option value="5">☆☆☆☆☆</option>
                                                    <option value="4">☆☆☆☆</option>
                                                    <option value="3">☆☆☆</option>
                                                    <option value="2">☆☆</option>
                                                    <option value="1">☆</option></select><span class="red_star">*</span>
                                            </td>
                                            <td><input style="display: none"/></td>
                                            <th>客户信用度</th>
                                            <td>
                                                <select class="easyui-combobox" name="custCredit">
                                                    <option value="">未指定</option>
                                                    <option value="5">☆☆☆☆☆</option>
                                                    <option value="4">☆☆☆☆</option>
                                                    <option value="3">☆☆☆</option>
                                                    <option value="2">☆☆</option>
                                                    <option value="1">☆</option></select><span class="red_star">*</span>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>&nbsp; &nbsp; &nbsp;</th>
                                            <td><input style="display: none"/></td>
                                            <td><input style="display: none"/></td>
                                            <td><input style="display: none"/></td>
                                            <td><input style="display: none"/></td>
                                        </tr>

                                        <tr>
                                            <th>地址:</th>
                                            <td colspan="2"><input name="custAddr" /><span class="red_star">*</span></td>

                                            <th>邮政编码:</th>
                                            <td colspan="3"><input name="custZip" /><span class="red_star">*</span></td>
                                        </tr>

                                        <tr>
                                            <th>电话:</th>
                                            <td colspan="2"><input name="custTel" /><span class="red_star">*</span></td>

                                            <th>传真:</th>
                                            <td colspan="3"><input name="custFax" /><span class="red_star">*</span></td>
                                        </tr>

                                        <tr>
                                            <th>网址:</th>
                                            <td colspan="3"><input name="custWebsite" /><span class="red_star">*</span></td>
                                            <td>
                                                <input style="display: none"/>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>&nbsp; &nbsp; &nbsp;</th>
                                            <td>
                                                <input style="display: none"/>
                                            </td>
                                            <td>
                                                <input style="display: none"/>
                                            </td>
                                            <td>
                                                <input style="display: none"/>
                                            </td>
                                            <td>
                                                <input style="display: none"/>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>营业执照注册号:</th>
                                            <td colspan="2"><input name="custLicenceNo" /></td>

                                            <th>法人:</th>
                                            <td colspan="3"><input name="custChieftain" /><span class="red_star">*</span></td>
                                        </tr>

                                        <tr>
                                            <th>注册资金（万元）:</th>
                                            <td colspan="2"><input name="custBankroll" /></td>

                                            <th>年营业额:</th>
                                            <td colspan="3"><input name="custTurnover" /></td>
                                        </tr>

                                        <tr>
                                            <th>开户银行:</th>
                                            <td colspan="2"><input name="custBank" /><span class="red_star">*</span></td>

                                            <th>银行账号:</th>
                                            <td colspan="3"><input name="custBankAccount" /><span class="red_star">*</span></td>
                                        </tr>

                                        <tr>
                                            <th>地税登记号:</th>
                                            <td colspan="2"><input name="custLocalTaxNo" /></td>

                                            <th>国税登记号:</th>
                                            <td colspan="3"><input name="custNationalTaxNo" /></td>
                                        </tr>

                                    </table>
                                </form>
                            </div>
                            <!-- 编辑客户管理end -->

                            <!-- 历史订单start -->
                            <div id="lldd-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:780px;  padding:20px">
                                <form method="post" id="lldd-form">
                                    <table class="query_form_table">
                                        <tr>
                                            <th>客户编号</th>
                                            <td><input name="custNo" disabled="true"/></td>
                                            <th>客户名称</th>
                                            <td><input name="custName" disabled="true"/></td>
                                        </tr>
                                    </table>
                                </form>
                                <br />
                                <table class="data_list_table" id="lldd">
                                    <div>
                                        <a  onclick="openDdmx()" class="easyui-linkbutton" iconCls="icon-large-smartart" plain="true" >明细</a>
                                    </div>
                                </table>
                            </div>
                            <!-- 历史订单end -->
                            <!-- 订单明细start -->
                            <div id="ddmx-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:780px;  padding:20px">
                                <form method="post" id="ddmx-form">
                                    <table class="query_form_table" height="59">
                                        <tr>
                                            <th>订单编号</th>
                                            <td><input name="odrId" disabled="true"/></td>
                                            <th>日期</th>
                                            <td><input name="odrDate" disabled="true"/></td>
                                        </tr>
                                        <tr>
                                            <th height="28">送货地址</th>
                                            <td><input name="odrAddr" disabled="true"/></td>
                                            <th height="28">状态</th>
                                            <td><input name="odrStatus" disabled="true"/></td>
                                        </tr>
                                    </table>
                                </form>
                                <br />
                                <table class="data_list_table" id="ddmx">
                                </table>
                            </div>
                            <!-- 历史订单end -->

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

    <script type="text/javascript" >

        $(function() {
            $('#cc').datagrid( {
                pagination : true,
                pageList : [ 2, 4, 6, 8 ],
                pageSize : 6,
                idFiled : 'custNo',
                fitColumns:true,
                singleSelect : true,

                url : 'cstCustomer/CstCustomer',
                columns : [ [ {
                    field : 'custNo',
                    width :'20%',
                    title:'客户编号'
                }, {
                    field : 'custName',
                    width :'20%',
                    title:'名称'
                }, {
                    field : 'custRegion',
                    width :'20%',
                    title:'地区',
                },{
                    field : 'custManagerName',
                    width :'20%',
                    title:'客户经理'
                }, {
                    field : 'custLevelLabel',
                    width :'20%',
                    title:'客户等级'
                }
                ] ]
            });
            $('#ccBtn').click(function () {
                var formData = {
                    custNo:$("#CustId").val(),
                    custName:$("#CustName").val(),
                    custRegion:$("#cx").val(),
                    custManagerName:$("#ManagerName").val(),
                    custLevelLabel:$("#cdj").val()
                };
                $('#cc').datagrid({
                    queryParams:formData
                });
                return false;
            });
        })

        //下拉框的值
        //地区
        $('#cx').combobox({
            url:'BasDict/toGetDict',
            method:'post',
            valueField:'dictItem',
            textField:'dictItem'
        });
        $('#cx2').combobox({
            url:'BasDict/toGetDict',
            method:'post',
            valueField:'dictItem',
            textField:'dictItem'
        });
        //客户等级
        $('#cdj').combobox({
            url:'BasDict/toGetDidj',
            method:'post',
            valueField:'dictItem',
            textField:'dictItem'
        });
        $('#cdj2').combobox({
            url:'BasDict/toGetDidj',
            method:'post',
            valueField:'dictItem',
            textField:'dictItem'
        });
        //客户经理
        $('#mmjl').combobox({
            url:'salChance/toDispatch',
            method:'post',
            valueField:'usrName',
            textField:'usrName'
        });

        //编辑
        function openCstEditDialog() {
            var item = $('#cc').datagrid('getSelections');
            var row = item[0];

            if(item.length!=1) {
                $.messager.alert("系统提示", "请选择一条要编辑的数据");
                return;
            }

            $('#cc-form').form('load', row);
            $('#cc-dialog').dialog({
                closed:false,
                modal:true,
                title:"修改客户信息",
                buttons: [{
                    text: '确定',
                    iconCls: 'icon-ok',
                    handler: function () {
                        $('#cc-form').form('submit', {
                            url:'/cstCustomer/edit?custNo='+row.custNo,
                            success:function(data){
                                if(data==1){
                                    $.messager.alert('信息提示','提交成功！','info');
                                    $('#cc-dialog').dialog('close');
                                    $("#cc").datagrid("reload");
                                }
                                else
                                {
                                    $.messager.alert('信息提示','提交失败！','info');
                                }
                            }
                        });
                    }
                }, {
                    text: '取消',
                    iconCls: 'icon-cancel',
                    handler: function () {
                        $('#cc-dialog').dialog('close');
                    }
                }]
            });

        }

        //历史订单
        function openLldd(){
            var item = $('#cc').datagrid('getSelections');
            var row = item[0];
            if(item.length!=1) {
                $.messager.alert("系统提示", "请选择一条要查看历史订单的数据");
                return;
            }
            $('#lldd-form').form('load', row);
            $('#lldd').datagrid( {
                pagination : true,
                pageList : [ 2, 4, 6, 8 ],
                pageSize : 6,
                idFiled : 'odrId',
                fitColumns:true,
                singleSelect : true,
                url : 'cstCustomer/listOrdersByCustomer?odrCustomer='+row.custName,
                columns : [ [ {
                    field : 'odrId',
                    width :'25%',
                    title:'订单编号'
                }, {
                    field : 'odrDate',
                    width :'25%',
                    title:'日期'
                }, {
                    field : 'odrAddr',
                    width :'25%',
                    title:'送货地址',
                },{
                    field : 'odrStatus',
                    width :'25%',
                    title:'状态',
                    formatter:function (val,rec) {
                        var str;
                        if(rec.odrStatus==0){
                            str='未回款';
                        }else  if(rec.odrStatus==1){
                            str='已回款';
                        }
                        return str;
                    }
                }] ]
            });
            $('#lldd-dialog').dialog({
                closed:false,
                modal:true,
                title:"历史订单",
                buttons: [{
                    text: 'ok',
                    iconCls: 'icon-ok',
                    handler: function () {
                        $('#lldd-dialog').dialog('close');
                    }
                }]
            });
        }

        //订单明细
        function openDdmx(){
            var item = $('#lldd').datagrid('getSelections');
            var row = item[0];
            if(item.length!=1) {
                $.messager.alert("系统提示", "请选择一条要查看历史订单的数据");
                return;
            }
            $('#ddmx-form').form('load', row);

            $('#ddmx').datagrid( {
                pagination : true,
                pageList : [ 2, 4, 6, 8 ],
                pageSize : 6,
                idFiled : 'oddId',
                fitColumns:true,
                singleSelect : true,
                url : 'cstCustomer/listOrdersLineByOrder?oddOrderId='+row.odrId,
                columns : [ [ {
                    field : 'oddProdId',
                    width :'40%',
                    title:'商品'
                }, {
                    field : 'oddCount',
                    width :'20%',
                    title:'数量'
                }, {
                    field : 'oddUnit',
                    width :'20%',
                    title:'单位',
                },{
                    field : 'oddPrice',
                    width :'20%',
                    title:'单价（元）'
                }
                ] ]
            });
            $('#ddmx-dialog').dialog({
                closed:false,
                modal:true,
                title:"订单明细",
                buttons: [{
                    text: 'ok',
                    iconCls: 'icon-ok',
                    handler: function () {
                        $('#ddmx-dialog').dialog('close');
                    }
                }]
            });
        }


    </script>


        <%@include file="/common/button.jsp" %>

</body>

</html>

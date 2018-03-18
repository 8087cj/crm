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
    <title>客户流失管理</title>
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
                            <table class="query_form_table" id="cl">
                                <div>
                                    <div>
                                        &nbsp;客户名称:<input id="CustName2"/>
                                        &nbsp;客户经理:<input id="ManagerName2"/>
                                        &nbsp;状态:
                                        <select id="zt">
                                            <option value="1">预警</option>
                                            <option value="2">暂缓流失</option>
                                            <option value="3">确认流失</option>
                                        </select>
                                        &nbsp;&nbsp;<button class="common_button" id="clBtn">查询</button>
                                    </div>
                                    <div>
                                        <a  onclick="confirmCst()" class="easyui-linkbutton" iconCls="icon-ok" plain="true">确认流失</a>
                                        <a  onclick="delayCst()" class="easyui-linkbutton" iconCls="icon-no" plain="true">暂缓流失</a>
                                    </div>
                                </div>

                            </table>

                            <div id="cl-dialog" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:550px;  padding:20px;">
                                <form id="cl-form"  method="post">
                                    <table class="query_form_table">
                                        <tr>
                                            <th>编号</th>
                                            <td><input readonly readonly name="lstId"/></td>
                                            <th>客户</th>
                                            <td><input readonly readonly name="lstCustName"/></td>
                                        </tr>
                                        <tr>
                                            <th>客户经理</th>
                                            <td><input readonly readonly name="lstCustManagerName"/></td>
                                            <th>上次下单时间</th>
                                            <td><input readonly readonly name="lstLastOrderDate"/></td>
                                        </tr>
                                        <tr>
                                            <th>暂缓措施</th>
                                            <td colspan="3"><input readonly readonly name="lstDelay"/></td>
                                        </tr>
                                        <tr>
                                            <th>追加暂缓措施</th>
                                            <td colspan="3">
                                                <textarea rows="6" cols="50" name="lstReason"></textarea><span class="red_star">*</span></td>
                                        </tr>
                                    </table>
                                </form>
                            </div>

                            <div id="cl-dialog2" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:550px;  padding:20px;">
                                <form id="cl-form2"  method="post">
                                    <table class="query_form_table">
                                        <tr>
                                            <th>编号</th>
                                            <td><input readonly readonly name="lstId"/></td>
                                            <th>客户</th>
                                            <td><input readonly readonly name="lstCustName"/></td>
                                        </tr>
                                        <tr>
                                            <th>客户经理</th>
                                            <td><input readonly readonly name="lstCustManagerName"/></td>
                                            <th>上次下单时间</th>
                                            <td><input readonly readonly name="lstLastOrderDate"/></td>
                                        </tr>
                                        <tr>
                                            <th>暂缓措施</th>
                                            <td colspan="3"><input readonly readonly name="lstDelay"/></td>
                                        </tr>
                                        <tr>
                                            <th>流失原因</th>
                                            <td colspan="3">
                                                <textarea rows="6" cols="50" name="lstReason"></textarea><span class="red_star">*</span></td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
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
                $('#cl').datagrid( {
                    pagination : true,
                    pageList : [ 2, 4, 6, 8 ],
                    pageSize : 6,
                    idFiled : 'lstId',
                    fitColumns:true,
                    singleSelect : true,
                    url : 'cstCustomer/listCstLost',
                    columns : [ [ {
                        field : 'lstId',
                        width :'15%',
                        title:'编号'
                    }, {
                        field : 'lstCustName',
                        width :'15%',
                        title:'客户名称'
                    },{
                        field : 'lstCustManagerName',
                        width :'15%',
                        title:'客户经理'
                    },{
                        field : 'lstLastOrderDate',
                        width :'20%',
                        title:'上次下单时间'
                    },{
                        field : 'lstLostDate',
                        width :'20%',
                        title:'确认流失时间',
                        formatter:function(val,rec){
                            var ss;
                            if(rec.lstLostDate==null){
                                ss='';
                            }
                            return ss;
                        }
                    }, {
                        field : 'lstStatus',
                        width :'15%',
                        title:'状态',
                        formatter:function(val,rec){
                            var str;
                            if(rec.lstStatus==1){
                                str='预警';
                            }else if(rec.lstStatus==2){
                                str='暂缓流失';
                            }else if(rec.lstStatus==3){
                                str='确认流失';
                            }else if(rec.lstStatus==4){
                                str='暂缓客户流失成功';
                            }
                            return str;
                        }
                    }
                    ] ]
                });
                $('#clBtn').click(function () {
                    alert($("#zt").val());
                    var formData = {
                        lstCustName:$("#CustName2").val(),
                        lstCustManagerName:$("#ManagerName2").val(),
                        lstStatus:$("#zt").val()
                    };
                    $('#cl').datagrid({
                        queryParams:formData
                    });
                    return false;
                });
            })

            //暂缓流失
            function delayCst(){
                var item = $('#cl').datagrid('getSelections');
                var row = item[0];
                if(item.length!=1) {
                    $.messager.alert("系统提示", "请选择一条要暂缓流失的数据");
                    return;
                }
                if(row.lstStatus==3) {
                    $.messager.alert("系统提示", "该数据已确认流失，请重新选择！");
                    return;
                }
                var delayValue=document.getElementsByName("lstReason");
                $('#cl-form').form('load', row);
                $('#cl-dialog').dialog({
                    closed:false,
                    modal:true,
                    title:"暂缓流失",
                    buttons: [{
                        text: '确定',
                        iconCls: 'icon-ok',
                        handler: function () {
                            $('#cl-form').form('submit', {
                                url:'/cstCustomer/delay',
                                success:function(data){
                                    if(data==1){
                                        $.messager.alert('信息提示','提交成功！','info');
                                        $('#cl-dialog').dialog('close');
                                        $("#cl").datagrid("reload");
                                    } else {
                                        $.messager.alert('信息提示','提交失败！','info');
                                    }
                                }
                            });
                        }
                    }, {
                        text: '取消',
                        iconCls: 'icon-cancel',
                        handler: function () {
                            $('#cl-dialog').dialog('close');
                        }
                    }]
                });
            }

            // 确认流失
            function confirmCst(){
                var item = $('#cl').datagrid('getSelections');
                var row = item[0];
                if(item.length!=1) {
                    $.messager.alert("系统提示", "请选择一条要暂缓流失的数据");
                    return;
                }
                $('#cl-form2').form('load', row);
                $('#cl-dialog2').dialog({
                    closed:false,
                    modal:true,
                    title:"暂缓流失",
                    buttons: [{
                        text: '确定',
                        iconCls: 'icon-ok',
                        handler: function () {
                            $('#cl-form2').form('submit', {
                                url:'/cstCustomer/confirm',
                                success:function(data){
                                    if(data==1){
                                        $.messager.alert('信息提示','提交成功！','info');
                                        $('#cl-dialog2').dialog('close');
                                        $("#cl").datagrid("reload");
                                    } else {
                                        $.messager.alert('信息提示','提交失败！','info');
                                    }
                                }
                            });
                        }
                    }, {
                        text: '取消',
                        iconCls: 'icon-cancel',
                        handler: function () {
                            $('#cl-dialog2').dialog('close');
                        }
                    }]
                });
            }

        </script>
    <%@include file="/common/button.jsp" %>

</body>

</html>

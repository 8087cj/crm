<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/10 0010
  Time: 下午 5:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>客户开发计划</title>
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
                            <table class="data_list_table" id="sp">
                                <div>
                                    <div>
                                        &nbsp;客户名称:<input id="chcCustName2"/>
                                        &nbsp;概要:<input id="chcTitle2"/>
                                        &nbsp;联系人:<input size="20" id="chcLinkman2"/>
                                        &nbsp;&nbsp;<button class="common_button" onclick="reload();" id="listBtn2">查询</button>
                                    </div>

                                    <a  onclick="openPlanAddDialog()" class="easyui-linkbutton"  iconCls="icon-add" plain="true">制定计划</a>
                                    <a  onclick="openPlanEditDialog()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">执行计划</a>
                                    <a  onclick="developmentSuccess()" class="easyui-linkbutton" iconCls="icon-ok" plain="true">开发成功</a>
                                    <a  onclick="terminateDevelopment()" class="easyui-linkbutton" iconCls="icon-no" plain="true">终止开发</a>
                                    <a  onclick="read()" class="easyui-linkbutton" iconCls="icon-more" plain="true">查看</a>

                                </div>
                            </table>

                            <!--制定计划start-->
                            <div id="sp-dialog1" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:720px;  padding:20px;">
                                <form id="sp-form1"  method="post">
                                    <table class="query_form_table">
                                        <tr>
                                            <th>编号</th>
                                            <td><input readonly readonly name="chcId" id="chcId"/></td>
                                            <th>机会来源</th>
                                            <td><input readonly name="chcSource" size="20" /></td>
                                        </tr>
                                        <tr>
                                            <th>客户名称</th>
                                            <td><input readonly name="chcCustName"/></td>
                                            <th>成功机率（%）</th>
                                            <td>&nbsp;<input readonly name="chcRate" /></td>
                                        </tr>
                                        <tr>
                                            <th>概要</th>
                                            <td colspan="3"><input readonly name="chcTitle" size="52" /></td>
                                        </tr>
                                        <tr>
                                            <th>联系人</th>
                                            <td><input readonly name="chcLinkman" size="20" /></td>
                                            <th>联系人电话</th>
                                            <td><input readonly name="chcTel" size="20" /></td>
                                        </tr>
                                        <tr>
                                            <th>机会描述</th>
                                            <td colspan="3"><input readonly name="chcDesc"  /></td>
                                        </tr>
                                        <tr>
                                            <th>创建人</th>
                                            <td><input readonly name="chcCreateBy"  readonly size="20" /></td>
                                            <th>创建时间</th>
                                            <td><input  readonly size="20" name="chcCreateDate" /></td>
                                        </tr>
                                        <tr>
                                            <th>指派给</th>
                                            <td><input readonly size="20" name="chcDueTo" ></td>
                                            <th>指派时间</th>
                                            <td><input readonly size="20" name="chcDueDate" /></td>
                                        </tr>
                                    </table>
                                </form>
                                <br />

                                <table class="data_list_table" id="sp2">
                                </table>

                                <div class="button_bar">
                                    <button class="common_button" onclick="addPlan()">保存</button>
                                </div>
                                <form  id="sp-add" method="post">
                                    <table class="query_form_table">
                                        <tr>
                                            <th>日期</th>
                                            <td><input id="dd"  type= "text" class= "easyui-datebox" required ="required"  /><span class="red_star">*</span></td>
                                            <th>计划项</th>
                                            <td>
                                                <input size="30" type= "text" id="plaTodo"/><span class="red_star">*</span>
                                            </td>
                                        </tr>
                                    </table>
                                </form>

                            </div>
                            <!--制定计划end-->

                            <!--执行计划start-->
                            <div id="sp-dialog3" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:720px;  padding:20px;">
                                <form id="sp-form3"  method="post">
                                    <table class="query_form_table">
                                        <tr>
                                            <th>编号</th>
                                            <td><input readonly readonly name="chcId" /></td>
                                            <th>机会来源</th>
                                            <td><input readonly name="chcSource" size="20" /></td>
                                        </tr>
                                        <tr>
                                            <th>客户名称</th>
                                            <td><input readonly name="chcCustName"/></td>
                                            <th>成功机率（%）</th>
                                            <td>&nbsp;<input readonly name="chcRate" /></td>
                                        </tr>
                                        <tr>
                                            <th>概要</th>
                                            <td><input readonly name="chcTitle" size="30" /></td>
                                            <th>状态</th>
                                            <td style="color:red;"><input readonly name="chcStatus" size="20" /></td>
                                        </tr>
                                        <tr>
                                            <th>联系人</th>
                                            <td><input readonly name="chcLinkman" size="20" /></td>
                                            <th>联系人电话</th>
                                            <td><input readonly name="chcTel" size="20" /></td>
                                        </tr>
                                        <tr>
                                            <th>机会描述</th>
                                            <td colspan="3"><input readonly name="chcDesc"  /></td>
                                        </tr>
                                        <tr>
                                            <th>创建人</th>
                                            <td><input readonly name="chcCreateBy"  readonly size="20" /></td>
                                            <th>创建时间</th>
                                            <td><input  readonly size="20" name="chcCreateDate" /></td>
                                        </tr>
                                        <tr>
                                            <th>指派给</th>
                                            <td><input readonly size="20" name="chcDueTo" ></td>
                                            <th>指派时间</th>
                                            <td><input readonly size="20" name="chcDueDate" /></td>
                                        </tr>
                                    </table>
                                </form>
                                <br />

                                <table class="data_list_table" id="sp3">
                                </table>
                            </div>
                            <!--执行计划end-->

                            <!--查看start-->
                            <div id="sp-dialog4" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:720px;  padding:20px;">
                                <form id="sp-form4"  method="post">
                                    <table class="query_form_table">
                                        <tr>
                                            <th>编号</th>
                                            <td><input readonly readonly name="chcId" /></td>
                                            <th>机会来源</th>
                                            <td><input readonly name="chcSource" size="20" /></td>
                                        </tr>
                                        <tr>
                                            <th>客户名称</th>
                                            <td><input readonly name="chcCustName"/></td>
                                            <th>成功机率（%）</th>
                                            <td>&nbsp;<input readonly name="chcRate" /></td>
                                        </tr>
                                        <tr>
                                            <th>概要</th>
                                            <td><input readonly name="chcTitle" size="30" /></td>
                                            <th>状态</th>
                                            <td style="color:red;">
                                                <%--<input readonly name="chcStatus" size="20" />--%>
                                                <input readonly name="chcStatus" size="20" formatter="Status()" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>联系人</th>
                                            <td><input readonly name="chcLinkman" size="20" /></td>
                                            <th>联系人电话</th>
                                            <td><input readonly name="chcTel" size="20" /></td>
                                        </tr>
                                        <tr>
                                            <th>机会描述</th>
                                            <td colspan="3"><input readonly name="chcDesc"  /></td>
                                        </tr>
                                        <tr>
                                            <th>创建人</th>
                                            <td><input readonly name="chcCreateBy"  readonly size="20" /></td>
                                            <th>创建时间</th>
                                            <td><input  readonly size="20" name="chcCreateDate" /></td>
                                        </tr>
                                        <tr>
                                            <th>指派给</th>
                                            <td><input readonly size="20" name="chcDueTo" ></td>
                                            <th>指派时间</th>
                                            <td><input readonly size="20" name="chcDueDate" /></td>
                                        </tr>
                                    </table>
                                </form>
                                <br />

                                <table class="data_list_table" id="sp4">
                                </table>
                            </div>

                            <!--查看end-->


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
                $('#sp').datagrid( {
                    pagination : true,
                    pageList : [ 2, 4, 6, 8 ],
                    pageSize : 6,
                    idFiled : 'chcId',
                    fitColumns:true,
                    singleSelect : true,
                    url : 'salPlan/dev',
                    columns : [ [ {
                        field : 'chcId',
                        width :'10%',
                        title:'编号'
                    }, {
                        field : 'chcCustName',
                        width :'15%',
                        title:'客户名称'
                    }, {
                        field : 'chcTitle',
                        width :'20%',
                        title:'概要'
                    }, {
                        field : 'chcLinkman',
                        width :'10%',
                        title:'联系人'
                    }, {
                        field : 'chcTel',
                        width :'15%',
                        title:'联系人电话'
                    }, {
                        field : 'chcCreateDate',
                        width :'20%',
                        title:'创建时间'
                    }, {
                        field : 'chcStatus',
                        width :'10%',
                        title:'状态',
                        formatter:function (val,rec) {
                            var str;
                            //1 未指派 2 已指派(或开发中) 3 开发成功 4 开发失败
                            //开发中，已归档
                            if(rec.chcStatus==1){
                                str='未指派';
                            }else if(rec.chcStatus==2){
                                str='开发中';
                            }else if(rec.chcStatus==3){
                                str='已归档';
                            }else if(rec.chcStatus==4){
                                str='已归档';
                            }
                            return str;
                        }
                    } ] ]
                });
                $('#listBtn2').click(function () {
                    //获取查询文本框的值
                    var formData = {
                        chcCustName:$("#chcCustName2").val(),
                        chcTitle:$("#chcTitle2").val(),
                        chcLinkman:$("#chcLinkman2").val()
                    };
                    $('#sp').datagrid({
                        //在请求远程数据的时候发送额外的参数(dictName)
                        queryParams:formData
                    });
                    //终止默认行为
                    return false;
                });
            });

//            function Status(val,rec){
//                var str;
//                //1 未指派 2 已指派(或开发中) 3 开发成功 4 开发失败
//                //开发中，已归档
//                if(rec.chcStatus==1){
//                    str='未指派';
//                }else if(rec.chcStatus==2){
//                    str='开发中';
//                }else if(rec.chcStatus==3){
//                    str='开发成功';
//                }else if(rec.chcStatus==4){
//                    str='开发失败';
//                }
//                return str;
//            }

            var url;
            //制定计划
            function openPlanAddDialog() {
                var item = $('#sp').datagrid('getSelections');
                var row = item[0];
                if(item.length!=1) {
                    $.messager.alert("系统提示", "请选择一条要制定计划的数据");
                    return;
                }
                if(row.chcStatus!=2) {
                    $.messager.alert("系统提示", "该数据已归档，请重新选择！");
                    return;
                }
                $('#sp-form1').form('load', row);
                $('#sp2').datagrid( {
                    idFiled : 'plaId',
                    fitColumns:true,
                    singleSelect : true,
                    url : 'salPlan/list?plaChcId='+row.chcId,
                    columns : [ [ {
                        field : 'plaDate',
                        width :'25%',
                        title:'日期'
                    }, {
                        field : 'plaTodo',
                        width :'75%',
                        title:'计划项',
                        formatter:function (val,rec) {
                            if(null==rec.plaTodo){
                                return '<input  value="" size=\"38\" id="a'+rec.plaId+'" /><button calss=\"common_button\" onclick=\"editPlan('+rec.plaId+')\">保存</button><button calss=\"common_button\" onclick=\"deletePlan('+rec.plaId+')\">删除</button>'
                            }else{
                                return '<input name="plaTodo" value="'+rec.plaTodo+'" size=\"38\" id="a'+rec.plaId+'" /><button calss=\"common_button\" onclick=\"editPlan('+rec.plaId+')\">保存</button><button calss=\"common_button\" onclick=\"deletePlan('+rec.plaId+')\">删除</button>'
                            }
                        }
                    }] ]
                });


                $("#sp-dialog1").dialog({
                    closed: false,
                    modal:true,
                    title: "制定计划",
                    buttons: [{
                        text: 'ok',
                        iconCls: 'icon-ok',
                        handler: function(){
                            $('#sp-dialog1').dialog('close');
                        }
                    }]
                });
            };

            //增加开发计划
            function addPlan(){
                var chcId=document.getElementById("chcId");
                var plaDate=document.getElementById("dd");
                var plaTodo=document.getElementById("plaTodo");

                        $('#sp-add').form('submit',{
                            url:'salPlan/add?plaChcId='+chcId.value+'&plaTodo='+plaTodo.value+'&plaDate='+plaDate.value,
                            success:function(data){
                                alert(data);
                                if(data==1){
                                    $.messager.alert('信息提示','增加开发计划成功！','info');
                                    $("#sp2").datagrid("reload");//自动加载
                                }
                                else
                                {
                                    $.messager.alert('信息提示','增加开发计划失败！','info');
                                }
                            }
                        });

            };

            //删除开发计划
            function deletePlan(plaId) {
                $.messager.confirm("系统提示", "您确定要删除这条数据吗？", function(r) {
                    if (r) {
                        $.post("/salPlan/del", {plaId:plaId}, function(result) {
                            if (result==1) {
                                $.messager.alert("系统提示", "数据已成功删除！");
                                $("#sp2").datagrid("reload");
                            } else {
                                $.messager.alert("系统提示", "数据删除失败，请联系系统管理员！");
                            }
                        }, "json");
                    }
                });
            }

            //修改开发计划
            function editPlan(plaId) {
                var plaTodo=document.getElementById("a"+plaId+"");
                $.messager.confirm("系统提示", "您确定修改开发计划吗？", function(r) {
                    if (r) {
                        $.post("/salPlan/edit", {plaId:plaId,plaTodo:plaTodo.value}, function(result) {
                            if (result==1) {
                                $.messager.alert("系统提示", "修改开发计划成功");
                                $("#sp2").datagrid("reload");
                            } else {
                                $.messager.alert("系统提示", "修改开发计划失败，请联系系统管理员！");
                            }
                        }, "json");
                    }
                });
            }


            //执行计划
            function openPlanEditDialog() {
                var item = $('#sp').datagrid('getSelections');
                var row = item[0];
                if(item.length!=1) {
                    $.messager.alert("系统提示", "请选择一条要执行计划的数据");
                    return;
                }
                if(row.chcStatus!=2) {
                    $.messager.alert("系统提示", "该数据已归档，请重新选择！");
                    return;
                }
                $('#sp-form3').form('load', row);
                $('#sp3').datagrid( {
                    idFiled : 'plaId',
                    fitColumns:true,
                    singleSelect : true,
                    url : 'salPlan/list?plaChcId='+row.chcId,
                    columns : [ [ {
                        field : 'plaDate',
                        width :'25%',
                        title:'日期'
                    }, {
                        field : 'plaTodo',
                        width :'30%',
                        title:'计划项'
                    }, {
                        field : 'plaResult',
                        width :'45%',
                        title:'执行效果',
                        formatter:function (val,rec) {
                            if(null==rec.plaResult){
                                return '<input  value="" size=\"38\" id="'+rec.plaId+'" /><button calss=\"common_button\" onclick=\"addPlanResult('+rec.plaId+')\">保存</button>'
                            }else{
                                return '<input name="plaResult" value="'+rec.plaResult+'" size=\"38\" id="'+rec.plaId+'" /><button calss=\"common_button\" onclick=\"addPlanResult('+rec.plaId+')\">保存</button>'
                            }
                        }
                    }] ]
                });
                $("#sp-dialog3").dialog({
                    closed: false,
                    modal:true,
                    title: "执行计划",
                    buttons: [{
                        text: 'ok',
                        iconCls: 'icon-ok',
                        handler: function(){
                            $('#sp-dialog3').dialog('close');
                        }
                    }]
                });
            }

            //保存执行效果
            function addPlanResult(plaId){
                var plaResult=document.getElementById(""+plaId+"");
                $.messager.confirm("系统提示", "您确定保存执行效果吗？", function(r) {
                    if (r) {
                        $.post("/salPlan/plan", {plaId:plaId,plaResult:plaResult.value}, function(result) {
                            if (result==1) {
                                $.messager.alert("系统提示", "保存执行效果成功");
                                $("#sp3").datagrid("reload");
                            } else {
                                $.messager.alert("系统提示", "保存执行效果失败，请联系系统管理员！");
                            }
                        }, "json");
                    }
                });
            }


            //开发成功
            function developmentSuccess() {
                var item = $('#sp').datagrid('getSelections');
                var row = item[0];
                if(item.length!=1) {
                    $.messager.alert("系统提示", "请选择一条确定开发成功的数据");
                    return;
                }
                if(row.chcStatus!=2) {
                    $.messager.alert("系统提示", "该数据已归档，请重新选择！");
                    return;
                }

                $.messager.confirm("系统提示", "您确定开发成功吗？", function(r) {
                    if (r) {
                        //,chcCustName:row.chcCustName,chcLinkman:row.chcLinkman,chcTel:row.chcTel,chcCreateBy:row.chcCreateBy,chcCreateId:row.chcCreateId
                        $.post("/salPlan/developmentSuccess", {chcId:row.chcId}, function(result) {
                            if (result==1) {
                                $.messager.alert("系统提示", "开发成功");
                                $("#sp").datagrid("reload");
                            } else {
                                $.messager.alert("系统提示", "操作失败，请联系系统管理员！");
                            }
                        }, "json");
                    }
                });
            }

            //终止开发
            function terminateDevelopment() {
                var item = $('#sp').datagrid('getSelections');
                var row = item[0];
                if(item.length!=1) {
                    $.messager.alert("系统提示", "请选择一条要终止开发的数据");
                    return;
                }
                if(row.chcStatus!=2) {
                    $.messager.alert("系统提示", "该数据已归档，请重新选择！");
                    return;
                }
                $.messager.confirm("系统提示", "您确定要终止开发吗？", function(r) {
                    if (r) {
                        $.post("/salPlan/terminateDevelopment", {chcId:row.chcId}, function(result) {
                            if (result==1) {
                                $.messager.alert("系统提示", "终止开发成功！");
                                $("#sp").datagrid("reload");
                            } else {
                                $.messager.alert("系统提示", "终止开发失败，请联系系统管理员！");
                            }
                        }, "json");
                    }
                });
            }

            //查看
            function read(){
                var item = $('#sp').datagrid('getSelections');
                var row = item[0];
                if(item.length!=1) {
                    $.messager.alert("系统提示", "请选择一条要查看的数据");
                    return;
                }
                $('#sp-form4').form('load', row);
                $('#sp4').datagrid( {
                    idFiled : 'plaId',
                    fitColumns:true,
                    singleSelect : true,
                    url : 'salPlan/list?plaChcId='+row.chcId,
                    columns : [ [ {
                        field : 'plaDate',
                        width :'25%',
                        title:'日期'
                    }, {
                        field : 'plaTodo',
                        width :'30%',
                        title:'计划项'
                    }, {
                        field : 'plaResult',
                        width :'45%',
                        title:'执行效果'
                    }] ]
                });


                $("#sp-dialog4").dialog({
                    closed: false,
                    modal:true,
                    title: "查看",
                    buttons: [{
                        text: 'ok',
                        iconCls: 'icon-ok',
                        handler: function(){
                            $('#sp-dialog4').dialog('close');
                        }
                    }]
                });
            }

        </script>

    <%@include file="/common/button.jsp" %>

</body>

</html>

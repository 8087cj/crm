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

                            <table class="query_form_table" id="di">
                                <div>
                                    <div>
                                        &nbsp;类别:<input id="dictType"/>
                                        &nbsp;条目:<input id="dictItem"/>
                                        &nbsp;值:<input size="20" id="dictValue"/>
                                        &nbsp;&nbsp;<button class="common_button" id="bsBtn">查询</button>
                                    </div>
                                    <a  onclick="openBaseAddDialog()" class="easyui-linkbutton" iconCls="icon-add" plain="true">新增</a>
                                    <a  onclick="openBaseEditDialog()" class="easyui-linkbutton" iconCls="icon-add" plain="true" >修改</a>
                                    <a  onclick="deleteBase()" class="easyui-linkbutton" iconCls="icon-add" plain="true">删除</a>
                                </div>


                            </table>


                            <div id="bs-dialog1" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:550px;  padding:20px;">
                                <form method="post" id="bs-form1">

                                    <table class="query_form_table">


                                        <tr>
                                            <th >类型:</th>
                                            <td><input name="dictType"/><span class="red_star">*</span></td>
                                        </tr>
                                        <tr>
                                            <th>条目:</th>
                                            <td><input name="dictItem" /><span class="red_star">*</span></td>
                                        </tr>
                                        <tr>
                                            <th>值:</th>
                                            <td colspan="3"><input name="dictValue" /><span class="red_star">*</span></td>
                                        </tr>

                                        <tr>
                                            <th>是否可编辑:</th>
                                            <td><input type="radio" name="dictIsEditable" value="1"> 是&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input type="radio" name="dictIsEditable" value="0"> 否</td>
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
</div>

<script type="text/javascript" >
    $(function() {
        $('#di').datagrid( {
            pagination : true,
            pageList : [ 2, 4, 6, 8 ],
            pageSize : 6,
            idFiled : 'dictId',
            fitColumns:true,
            singleSelect : true,

            url : 'BasDict/dict',
            columns : [ [ {
                field : 'dictId',
                width :'12%',
                title:'编号'
            }, {
                field : 'dictType',
                width :'18%',
                title:'类别'
            }, {
                field : 'dictItem',
                width :'20%',
                title:'条目'
            }, {
                field : 'dictValue',
                width :'12%',
                title:'值'
            }, {
                field : 'dictIsEditable',
                width :'18%',
                title:'是否可编辑',
                formatter:function(val,rec){
                    var a;
                    if(rec.dictIsEditable==true){
                        a="是";
                    }else if(rec.dictIsEditable==false){
                        a="否";
                    }
                    return a;
                }

            }] ]
        });
        $('#bsBtn').click(function () {
            //获取查询文本框的值
            var formData = {
                dictType:$("#dictType").val(),
                dictItem:$("#dictItem").val(),
                dictValue:$("#dictValue").val()
            };

            $('#di').datagrid({
                //在请求远程数据的时候发送额外的参数(dictName)
                queryParams:formData
            });
            //终止默认行为
            return false;
        });
    });

    var url;

    //数据字典新增
    function openBaseAddDialog() {
        $("#bs-dialog1").dialog({
            closed: false,
            modal:true,
            title: "数据字典新增",
            buttons: [{
                text: '确定',
                iconCls: 'icon-ok',
                handler: function(){
                    $('#bs-form1').form('submit', {
                        url:'/BasDict/add',
                        success:function(data){
                            alert(data);
                            if(data==1){
                                $.messager.alert('信息提示','提交成功！','info');
                                $('#bs-dialog1').dialog('close');
                                $("#di").datagrid("reload");//自动加载
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
                    $('#bs-dialog1').dialog('close');
                }
            }]
        });
    }

    //删除数据字典
    function deleteBase() {
        var selectedRows = $("#di").datagrid("getSelected");
        var item = $('#di').datagrid('getSelections');
        var row = item[0];
        if(row.dictIsEditable==false){
            $.messager.alert("系统提示", "无法编辑的数据");
            return;
        }
        $.messager.confirm("系统提示", "您确定要删除这条数据吗？", function(r) {
            if (r) {
                $.post("/BasDict/toDel", {dictId:selectedRows.dictId}, function(result) {
                    if (result==1) {
                        $.messager.alert("系统提示", "数据已成功删除！");
                        $("#di").datagrid("reload");
                    } else {
                        $.messager.alert("系统提示", "数据删除失败，请联系系统管理员！");
                    }
                }, "json");
            }
        });
    }

    //修改数据字典
    function openBaseEditDialog() {
        var item = $('#di').datagrid('getSelections');
        var row = item[0];
        if(row.dictIsEditable==false){
            $.messager.alert("系统提示", "无法编辑的数据");
            return;
        }

        if(item.length!=1) {
            $.messager.alert("系统提示", "请选择一条要编辑的数据");
            return;
        }
        $('#bs-form1').form('load', row);

        $('#bs-dialog1').dialog({
            closed:false,
            modal:true,
            title:"修改数据字典",
            buttons: [{
                text: '确定',
                iconCls: 'icon-ok',
                handler: function () {
                    $('#bs-form1').form('submit', {
                        url:'/BasDict/edit?dictId='+row.dictId,
                        success:function(data){
                            if(data==1){
                                $.messager.alert('信息提示','提交成功！','info');
                                $('#bs-dialog1').dialog('close');
                                $("#di").datagrid("reload");
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
                    $('#bs-dialog1').dialog('close');
                }
            }]
        });
    }

</script>
<%@include file="/common/button.jsp" %>

</body>

</html>

<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.sql.Timestamp" %><%--
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
    <title>销售机会管理</title>
    <%@include file="/common/head.jsp" %>
    <% String str=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis()));%>
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
        <div class="container-fluid" >
            <div class="side-body" >

                <div class="row">
                    <div class="col-xs-12">
                        <div class="card" >

                            <!--链接start-->
                            <br>
                            <table class="data_list_table" id="sc">
                                <div id="tb">
                                    <div>
                                        &nbsp;客户名称:<input id="chcCustName"/>
                                        &nbsp;概要:<input id="chcTitle"/>
                                        &nbsp;联系人:<input size="20" id="chcLinkman"/>
                                        &nbsp;&nbsp;<button class="common_button" onclick="reload();" id="listBtn">查询</button>
                                    </div>

                                    <a  onclick="openSalAddDialog()" class="easyui-linkbutton" iconCls="icon-add" plain="true">新增</a>
                                    <a  onclick="openSalEditDialog()" class="easyui-linkbutton" iconCls="icon-edit" plain="true">修改</a>
                                    <a  onclick="deleteSal()" class="easyui-linkbutton" iconCls="icon-remove" plain="true">删除</a>
                                    <a  onclick="openSalZpDialog()" class="easyui-linkbutton" iconCls="icon-redo" plain="true">指派</a>
                                </div>
                            </table>


                            <div id="wu-dialog1" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:550px;  padding:20px;">
                                <form method="post" id="wu-add" >
                                    <table class="query_form_table">
                                        <tr>
                                            <th>编号</th>
                                            <td><input  name="chcId" readonly/></td>
                                            <th>机会来源</th>
                                            <td>
                                                <input  name="chcSource" size="20" /></td>
                                        </tr>
                                        <tr>
                                            <th>客户名称</th>
                                            <td><input name="chcCustName"/><span class="red_star">*</span></td>
                                            <th>成功机率</th>
                                            <td><input name="chcRate" /><span class="red_star">*</span></td>
                                        </tr>
                                        <tr>
                                            <th>概要</th>
                                            <td colspan="3"><input name="chcTitle" size="52" /><span class="red_star">*</span></td>
                                        </tr>
                                        <tr>
                                            <th>联系人</th>
                                            <td><input name="chcLinkman" size="20" /></td>
                                            <th>联系人电话</th>
                                            <td><input name="chcTel" size="20" /></td>
                                        </tr>
                                        <tr>
                                            <th>机会描述</th>
                                            <td colspan="3"><textarea rows="6" cols="50" name="chcDesc"></textarea><span class="red_star">*</span></td>
                                        </tr>
                                        <tr>
                                            <th>创建人</th>
                                            <input name="chcCreateId" value="1" hidden />
                                            <td><input name="chcCreateBy" value="陈娟" readonly size="20" /><span class="red_star">*</span></td>
                                            <th>创建时间</th>
                                            <td><input name="chcCreateDate" readonly  size="20" value="<%=str%>" /><span class="red_star">*</span></td>
                                        </tr>
                                    </table>
                                </form>
                            </div>


                            <div id="wu-dialog2" class="easyui-dialog" data-options="closed:true,iconCls:'icon-save'" style="width:550px;  padding:20px;">
                                <form id="wu-ff"  method="post">
                                    <table class="query_form_table">
                                        <tr>
                                            <th>编号</th>
                                            <td><input readonly readonly name="chcId"/></td>
                                            <th>机会来源</th>
                                            <td>
                                                <input readonly name="chcSource" size="20" /></td>
                                        </tr>
                                        <tr>
                                            <th>客户名称</th>
                                            <td><input readonly name="chcCustName"/><span class="red_star">*</span></td>
                                            <th>成功机率</th>
                                            <td><input readonly name="chcRate" /><span class="red_star">*</span></td>
                                        </tr>
                                        <tr>
                                            <th>概要</th>
                                            <td colspan="3"><input readonly name="chcTitle" size="52" /><span class="red_star">*</span></td>
                                        </tr>
                                        <tr>
                                            <th>联系人</th>
                                            <td><input readonly name="chcLinkman" size="20" /></td>
                                            <th>联系人电话</th>
                                            <td><input readonly name="chcTel" size="20" /></td>
                                        </tr>
                                        <tr>
                                            <th>机会描述</th>
                                            <td colspan="3"><textarea readonly rows="6" cols="50" name="chcDesc"></textarea><span class="red_star">*</span></td>
                                        </tr>
                                        <tr>
                                            <th>创建人</th>
                                            <input name="chcCreateId" value="1" hidden />
                                            <td><input readonly name="chcCreateBy" value="陈娟" readonly size="20" /><span class="red_star">*</span></td>
                                            <th>创建时间</th>
                                            <td>
                                                <input readonly size="20" name="chcCreateDate" value="<%=str%>" /><span class="red_star">*</span></td>
                                        </tr>
                                    </table>
                                 </form>
                                    <br />

                                    <form  id="wu-dispatch" method="post">
                                    <table class="query_form_table" >
                                        <tr>
                                            <th>指派给</th>
                                            <td>
                                                <input  class="easyui-combobox"  id="mm"  name="chcDueId" panelHeight="auto">
                                               <span class="red_star">*</span></td>
                                            <th>指派时间</th>
                                            <td>
                                                <input name="chcDueDate"  readonly size="20" value="<%=str%>" /><span class="red_star">*</span></td>
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
                $('#sc').datagrid( {
                    pagination : true,
                    pageList : [ 2, 4, 6, 8 ],
                    pageSize : 6,
                    idFiled : 'chcId',
                    fitColumns:true,
                    singleSelect : true,
                    url : 'salChance/list',
                    columns : [ [ {
                        field : 'chcId',
                        width :'12%',
                        title:'编号'
                    }, {
                        field : 'chcCustName',
                        width :'18%',
                        title:'客户名称'
                    }, {
                        field : 'chcTitle',
                        width :'20%',
                        title:'概要'
                    }, {
                        field : 'chcLinkman',
                        width :'12%',
                        title:'联系人'
                    }, {
                        field : 'chcTel',
                        width :'18%',
                        title:'联系人电话'
                    }, {
                        field : 'chcCreateDate',
                        width :'20%',
                        title:'创建时间'
                    } ] ]
                });
                $('#listBtn').click(function () {
                    //获取查询文本框的值
                    var formData = {
                        chcCustName:$("#chcCustName").val(),
                        chcTitle:$("#chcTitle").val(),
                        chcLinkman:$("#chcLinkman").val()
                    };
                    $('#sc').datagrid({
                        //在请求远程数据的时候发送额外的参数(dictName)
                        queryParams:formData
                    });
                    //终止默认行为
                    return false;
                });
            });


            var url;

            //销售机会新增
            function openSalAddDialog() {
                $("#wu-dialog1").dialog({
                    closed: false,
                    modal:true,
                    title: "销售机会新增",
                    buttons: [{
                        text: '确定',
                        iconCls: 'icon-ok',
                        handler: function(){
                            $('#wu-add').form('submit', {
                                url:'/salChance/add',
//                                ?chcSource='+row.chcSource+"&chcCustName="+row.chcCustName+'&chcTitle='+row.chcTitle+ '&.chcRate='
//                                +row.chcRate+'&chcLinkman='+row.chcLinkman+'&chcTel='+row.chcTel+'&chcDesc='+row.chcDesc+'&chcCreateId='+row.chcCreateId+'&chcCreateBy='+row.chcCreateBy
                                success:function(data){
                                    if(data==1){
                                        $.messager.alert('信息提示','提交成功！','info');
                                        $('#wu-dialog1').dialog('close');
                                        $("#sc").datagrid("reload");//自动加载
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
                            $('#wu-dialog1').dialog('close');
                        }
                    }]
                });
            }

            //删除销售机会
            function deleteSal() {
                var selectedRows = $("#sc").datagrid("getSelected");

                $.messager.confirm("系统提示", "您确定要删除这条数据吗？", function(r) {
                    if (r) {
                        $.post("/salChance/toDel", {chcId:selectedRows.chcId}, function(result) {
                            if (result==1) {
                                $.messager.alert("系统提示", "数据已成功删除！");
                                $("#sc").datagrid("reload");
                            } else {
                                $.messager.alert("系统提示", "数据删除失败，请联系系统管理员！");
                            }
                        }, "json");
                    }
                });
            }

            //修改销售机会
            function openSalEditDialog() {
                var item = $('#sc').datagrid('getSelections');
                var row = item[0];
                if(item.length!=1) {
                    $.messager.alert("系统提示", "请选择一条要编辑的数据");
                    return;
                }
                $('#wu-add').form('load', row);
                $('#wu-dialog1').dialog({
                    closed:false,
                    modal:true,
                    title:"修改销售机会",
                    buttons: [{
                        text: '确定',
                        iconCls: 'icon-ok',
                        handler: function () {
                            $('#wu-add').form('submit', {
                                url:'/salChance/edit?chcId='+row.chcId,
//                                url:'/salChance/edit?chcId='+row.chcId+'&chcSource='+row.chcSource+"&chcCustName="+row.chcCustName+'&chcTitle='+row.chcTitle+ '&.chcRate='
//                                +row.chcRate+'&chcLinkman='+row.chcLinkman+'&chcTel='+row.chcTel+'&chcDesc='+row.chcDesc+'&chcCreateId='+row.chcCreateId+'&chcCreateBy='+row.chcCreateBy,
                                success:function(data){
                                    if(data==1){
                                        $.messager.alert('信息提示','提交成功！','info');
                                        $('#wu-dialog1').dialog('close');
                                        $("#sc").datagrid("reload");
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
                            $('#wu-dialog1').dialog('close');
                        }
                    }]
                });
            }


            //指派销售机会给某人
            function openSalZpDialog() {
                var item = $('#sc').datagrid('getSelections');
                var row = item[0];
                if(item.length!=1) {
                    $.messager.alert("系统提示", "请选择一条要指派的机会");
                    return;
                }
                if(row.chcStatus==2) {
                    $.messager.alert("系统提示", "该数据已指派，请重新选择！");
                    return;
                }
                $('#mm').combobox({
                    url:'salChance/toDispatch',
                    method:'post',
                    valueField:'usrId',
                    textField:'usrName'
                });
                $('#wu-ff').form('load', row);
                $('#wu-dialog2').dialog({
                    closed:false,
                    modal:true,
                    title:"指派销售机会",
                    buttons: [{
                        text: '确定',
                        iconCls: 'icon-ok',
                        handler: function () {
//                            alert($("#mm").val());
                            $('#wu-dispatch').form('submit', {
                                url:'/salChance/dispatch?chcId='+row.chcId,
                                success:function(data){
                                    if(data==1){
                                        $.messager.alert('信息提示','指派成功！','info');
                                        $('#wu-dialog2').dialog('close');
                                        $("#sc").datagrid("reload");
                                    }
                                    else
                                    {
                                        $.messager.alert('信息提示','指派失败！','info');
                                    }
                                }
                            });
                        }
                    }, {
                        text: '取消',
                        iconCls: 'icon-cancel',
                        handler: function () {
                            $('#wu-dialog2').dialog('close');
                        }
                    }]
                });
            }



        </script>

        <%@include file="/common/button.jsp" %>
</body>

</html>

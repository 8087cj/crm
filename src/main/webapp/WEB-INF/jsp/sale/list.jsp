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
    <title>销售机会管理</title>
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
            <div class="side-body" id="tt">

                <div class="row">
                    <div class="col-xs-12">
                        <div class="card" >

                            <!--链接start-->
                            <div class="button_bar">
                                <button class="common_button" onclick="help('');">帮助</button>
                                <button class="common_button" onclick="reload();" id="listBtn">查询</button>
                            </div>
                            <table class="query_form_table">
                                <tr>
                                    <th>客户名称</th>
                                    <td id="chcCustName"><input /></td>
                                    <th>概要</th>
                                    <td id="chcTitle"><input /></td>
                                    <th>联系人</th>
                                    <td>
                                        <input name="T1" size="20" id="chcLinkman"/>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <table class="data_list_table" id="sc">

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
        <script type="text/javascript" >
            $(function() {
                $('#sc').datagrid( {
                    pagination : true,
                    pageList : [ 2, 4, 6, 8 ],
                    pageSize : 6,
                    idFiled : 'chcId',
                     fitColumns:true,
                    singleSelect : true,
                    toolbar : [{
                            iconCls: 'icon-add',
                            text:'新增',
                            handler : function(){
                                parent.openTab("销售机会新增",'salChance/toAdd');
                            }
                        },'-',{
                        iconCls : 'icon-edit',
                        text : '编辑',
                        handler  : function() {
                            //获得被选中的行
                            var row = $('#sc').datagrid("getSelected");
                            if (!row) {
                                $.messager.alert('警告', "请选择要修改的行");
                                return;
                            }
                            //获取选中的行的chcId
                            var chcId = row.chcId;
                            parent.openTab('编辑销售机会','salChance/toEdit?chcId='+chcId,'icon-edit',true);
                        }
                    }, '-', {
                        iconCls : 'icon-remove',
                        text : '删除',
                        handler : function() {
                            //获得被选中的行
                            var row = $('#sc').datagrid("getSelected");
                            if (!row) {
                                $.messager.alert('警告', "请选择要删除的行");
                                return;
                            }
                            //获取选中的行的chcId
                            var chcId = row.chcId;
                            var url = "salChance/toDel?chcId=" + chcId;
                            $.messager.confirm('确认', '您确认想要删除记录吗？？', function(r) {
                                if (r){
                                    $.ajax({
                                        dataType:'json',
                                        url:url,
                                        success:function(data){
                                            if(1==data){
                                                $.messager.alert('提示','删除成功');
//                                                var ind=$('#sc').datagrid("getRowIndex",chcId);
//                                                $('#sc').datagrid("deleteRow",ind);
                                                window.location.reload();
                                            }else{
                                                $.messager.alert('警告','销售机会删除失败,请与管理员联系');
                                            }
                                        }
                                    });
                                }
                            });
                        }
                    } ],
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
                $("#listBtn").click(function() {
                    //获取查询文本框的值
                    var formData = {
                        chcCustName:$("#chcCustName").val(),
                        chcTitle:$("#chcTitle").val(),
                        chcLinkman:$("#chcLinkman").val(),
                    }
                    $('#sc').datagrid( {
                        //在请求远程数据的时候发送额外的参数(dictName)
                        queryParams : formData
                    });
                    //终止默认行为
                    return false;
                });
            });

        </script>

        <%@include file="/common/button.jsp" %>
</body>

</html>

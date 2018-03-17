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
    <title>统计报表->客户构成分析</title>
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
                        <li>统计报表</li>
                        <li class="active">客户构成分析</li>
                    </ol>
                    <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                        <i class="fa fa-th icon"></i>
                    </button>
                </div>

            </div>
        </nav>


        <!-- 左边 -->
        <div class="side-menu sidebar-inverse">
            <%@include file="/common/left-rept.jsp" %>
        </div>

        <!-- Main Content -->
        <div class="container-fluid">
            <div class="side-body">

                <div class="row">
                    <div class="col-xs-12">
                        <div class="card">

                            <!--链接start-->
                            <table class="data_list_table" id="rx">
                                <div>
                                    报表方式:
                                    <select id="bbfs">
                                        <option value="1">按等级</option>
                                        <option value="2">按信用度</option>
                                        <option value="3">按满意度</option>
                                    </select>
                                    &nbsp;&nbsp;<button class="common_button" id="rxBtn">查询</button>
                                </div>
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
                $('#rx').datagrid( {
                    url : 'serviceReport/listCstCustomerNameAndCount',
                    columns : [ [  {
                        field : 'custLevelLabel',
                        width :'50%',
                        title:'等级',
                        formatter:function (val,rec) {
                            var str;
                            if(rec.custLevelLabel==1){
                                str='☆';
                            }else if(rec.custLevelLabel==2){
                                str='☆☆';
                            }else if(rec.custLevelLabel==3){
                                str='☆☆☆';
                            }else if(rec.custLevelLabel==4){
                                str='☆☆☆☆';
                            }else if(rec.custLevelLabel==5){
                                str='☆☆☆☆☆';
                            }

                            if(rec.custLevelLabel=='合作伙伴'){
                                str='合作伙伴';
                            }else if(rec.custLevelLabel=='大客户'){
                                str='大客户';
                            }else if(rec.custLevelLabel=='战略合作伙伴'){
                                str='战略合作伙伴';
                            }else if(rec.custLevelLabel=='普通客户'){
                                str='普通客户';
                            }else if(rec.custLevelLabel=='重点开发客户'){
                                str='重点开发客户';
                            }
                            return str;
                        }
                    }, {
                        field : 'custLevel',
                        width :'50%',
                        title:'客户数量'
                    } ] ]
                });

                $('#rxBtn').click(function () {
                    //获取查询文本框的值
                    var bbfs=document.getElementById("bbfs");
//                    alert(bbfs.value);
                    var formData = {
                        custCredit:bbfs.value
                    };
                    $('#rx').datagrid({
                        //在请求远程数据的时候发送额外的参数(dictName)
                        queryParams:formData
                    });
                    //终止默认行为
                    return false;
                });
            });
        </script>

    <%@include file="/common/button.jsp" %>

</body>

</html>

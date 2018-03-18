<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<nav class="navbar navbar-default" role="navigation">
    <div class="side-menu-container">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">
                <div class="icon fa fa-paper-plane"></div>
                <div class="title">客户关系管理系统</div>
            </a>
            <button type="button" class="navbar-expand-toggle pull-right visible-xs">
                <i class="fa fa-times icon"></i>
            </button>
        </div>
        <ul class="nav navbar-nav">
            <li class="panel panel-default dropdown">
                <a href="/input/admin">
                    <span class="icon fa fa-tachometer"></span><span class="title">首页</span>
                </a>
            </li>
            <li class="panel panel-default dropdown">
                <a data-toggle="collapse" href="#dropdown-table">
                    <span class="icon fa fa-table"></span><span class="title">营销管理</span>
                </a>
                <!-- Dropdown level 1 -->
                <div id="dropdown-table" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul class="nav navbar-nav">
                            <li><a href="/salChance/toList">销售机会管理</a></li>
                            <li><a href="/salPlan/toDev">客户开发计划</a></li>
                        </ul>
                    </div>
                </div>
            </li>
            <li class="panel panel-default dropdown">
                <a data-toggle="collapse" href="#dropdown-form">
                    <span class="icon fa fa-file-text-o"></span><span class="title">客户管理</span>
                </a>
                <!-- Dropdown level 1 -->
                <div id="dropdown-form" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul class="nav navbar-nav">
                            <li><a href="../cust/custlist.jsp">客户信息管理</a></li>
                            <li><a href="../cust/lostlist.jsp">客户流失管理</a></li>
                        </ul>
                    </div>
                </div>
            </li>

            <!-- Dropdown-->
            <li class="panel panel-default dropdown">
                <a data-toggle="collapse" href="#component-example">
                    <span class="icon fa fa-cubes"></span><span class="title">服务管理</span>
                </a>
                <!-- Dropdown level 1 -->
                <div id="component-example" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul class="nav navbar-nav">
                            <li><a href="../service/add.jsp">服务创建</a></li>
                            <li><a href="../service/dispatch.jsp">服务分配</a></li>
                            <li><a href="../service/deal.jsp">服务处理</a></li>
                            <li><a href="../service/feedback.jsp">服务反馈</a></li>
                            <li><a href="../service/arch.jsp">服务归档</a></li>

                        </ul>
                    </div>
                </div>
            </li>
            <!-- Dropdown-->
            <li class="active panel panel-default dropdown">
                <a data-toggle="collapse" href="#dropdown-example">
                    <span class="icon fa fa-slack"></span><span class="title">统计报表</span>
                </a>
                <!-- Dropdown level 1 -->
                <div id="dropdown-example" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul class="nav navbar-nav">
                            <li><a href="/serviceReport/toContr">客户贡献分析</a></li>
                            <li><a href="/serviceReport/toCons">客户构成分析</a></li>
                            <li><a href="/serviceReport/toSer">客户服务分析</a></li>
                            <li><a href="/serviceReport/toLost">客户流失分析</a></li>
                        </ul>
                    </div>
                </div>
            </li>
            <!-- Dropdown-->
            <li class="panel panel-default dropdown">
                <a data-toggle="collapse" href="#dropdown-icon">
                    <span class="icon fa fa-archive"></span><span class="title">基础数据</span>
                </a>
                <!-- Dropdown level 1 -->
                <div id="dropdown-icon" class="panel-collapse collapse">
                    <div class="panel-body">
                        <ul class="nav navbar-nav">
                            <li><a href="/BasDict/todict">数据字典管理</a></li>
                            <li><a href="/product/toProduct"> 查询产品信息</a></li>
                            <li><a href="/storages/toStorages">查询库存</a></li>
                        </ul>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <!-- /.navbar-collapse -->
</nav>

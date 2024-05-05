<%--
  Created by IntelliJ IDEA.
  User: Jin
  Date: 2024/4/16
  Time: 9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理界面</title>
    <style>
        * {
            box-sizing: border-box;
        }
        body {
            margin: 0;
        }
        .c1890{
            display:none;
        }
        .c1906{
            height:100vh;
            padding-top:60px;
        }
        .c1881{
            background:url('https://coscdn.htmlpage.cn/html-template/assets/img/bg/4.jpg') no-repeat right center;
        }
        .main-content.c1906{
            background-image:url('https://static.htmlpage.cn/editor/images/assets/food_03.jpg');
        }
        .wrapper.bg-soft-primary.image-wrapper.bg-image.pb-1.c6816{
            height:80px;
        }
        .fdb-block{
            font-family:"Roboto", sans-serif;
            font-size:16px;
            line-height:1.5;
            text-rendering:optimizelegibility;
            padding-top:100px;
            padding-right:0px;
            padding-bottom:100px;
            padding-left:0px;
            color:rgb(68, 68, 68);
            position:relative;
            background-size:cover;
            background-position-x:center;
            background-position-y:center;
            background-color:rgb(255, 255, 255);
        }
        .align-items-center{
            align-items:center;
        }
        .img-fluid{
            max-width:100%;
            height:auto;
            background-image:url('https://static.htmlpage.cn/editor/images/assets/bgthings_07.jpg');
        }
        .fdb-block img{
            border-top-left-radius:4px;
            border-top-right-radius:4px;
            border-bottom-right-radius:4px;
            border-bottom-left-radius:4px;
        }
        a{
            color:rgb(0, 123, 255);
            text-decoration-line:none;
            text-decoration-style:solid;
            text-decoration-color:currentcolor;
            text-decoration-thickness:auto;
            background-color:transparent;
        }
        a:hover{
            color:rgb(0, 86, 179);
            text-decoration-line:underline;
            text-decoration-style:solid;
            text-decoration-color:currentcolor;
            text-decoration-thickness:auto;
        }
        .fdb-block .text-h2, .fdb-block h2{
            font-size:1rem;
            margin-bottom:0.5em;
            margin-top:0.3em;
            font-weight:400;
        }
        .fdb-block .text-h3, .fdb-block h3{
            font-size:0.875rem;
            margin-bottom:0.5em;
            margin-top:0.3em;
            font-weight:400;
        }
        .col-12.col-md-6.col-lg-4{
            float:right;
        }
        .c15222{
            background-image:url('https://coscdn.htmlpage.cn/sandbox/assets/img/photos/bg3.jpg');
        }
        .c18204{
            padding:10px;
            width:399px;
            text-align:center;
            font-weight:800;
            font-family:"Microsoft Yahei", sans-serif;
            font-size:40px;
        }

    </style>
</head>
<body>
<%--    <c:if test="${param.name!=true}">--%>
<%--        <%--%>
<%--        response.sendRedirect("index.jsp");--%>
<%--        %>--%>
<%--    </c:if>--%>
    <%
        try{
            HttpSession session1 = request.getSession();
            boolean flag = (boolean) session1.getAttribute("flag");
            if (flag) {
                String name = (String) session1.getAttribute("name");
                out.println("<br>");
                out.println("<h1>欢迎您，"+name+"</h1>");
            }else {
                response.sendRedirect("index.jsp");
            }
        }catch (Exception e){
            response.sendRedirect("index.jsp");
        }
    %>

    <!-- Main Content -->
    <main id="i2kgq" class="main-content c1906">
        <link rel="stylesheet" href="https://coscdn.htmlpage.cn/vip-tpl/assets/css/plugins.css"/>
        <link rel="stylesheet" href="https://coscdn.htmlpage.cn/vip-tpl/assets/css/style.css"/>
        <header data-image-src="https://coscdn.htmlpage.cn/sandbox/assets/img/photos/bg3.jpg" id="iugxl" class="wrapper bg-soft-primary image-wrapper bg-image pb-1 c15222">
            <nav class="navbar navbar-expand-lg center-nav transparent">
                <div class="container flex-lg-row flex-nowrap align-items-center">
                    <div class="navbar-brand w-100 navbar-white">
                        <a href="./index.html"><img src="https://coscdn.htmlpage.cn/logos/logo-small-white.svg" srcset="https://coscdn.htmlpage.cn/logos/logo-small-white.svg" alt="" class="logo-light"/></a>
                    </div>
                    <div class="navbar-collapse offcanvas offcanvas-nav offcanvas-start">
                        <div id="imt7kj" class="c18204">学生体质管理系统
                            <br/>
                        </div>
                    </div>
                    <!-- /.navbar-collapse -->
                    <div class="navbar-other w-100 d-flex ms-auto">
                        <ul class="navbar-nav flex-row align-items-center ms-auto">
                            <li class="nav-item dropdown text-uppercase">
                                <ul class="dropdown-menu">
                                    <li class="nav-item">
                                        <a href="#" class="dropdown-item">中文</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#" class="dropdown-item">英文</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="#" class="dropdown-item">德文</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item d-none d-md-block">
                            </li>
                            <li class="nav-item d-lg-none">
                                <button type="button" class="hamburger offcanvas-nav-btn">Send</button>
                            </li>
                        </ul>
                        <!-- /.navbar-nav -->
                    </div>
                    <!-- /.navbar-other -->
                </div>
                <!-- /.container -->
            </nav>
            <!-- /.navbar -->
            <script src="https://coscdn.htmlpage.cn/vip-tpl/assets/js/plugins.js"></script>
            <script src="https://coscdn.htmlpage.cn/vip-tpl/assets/js/theme.js"></script>
        </header>
        <section data-block-type="contents" data-id="6" draggable="true" class="fdb-block">
            <div class="container">
                <div class="row text-left align-items-center">
                    <div class="col-12 col-md-6 col-lg-4">
                        <h2>查询学生信息
                            <br/>
                        </h2>
                        <p class="text-h3">可查询特定学生信息也可查询全部学生信息
                            <br/>
                        </p>
                        <p class="text-h3">
                            <a href="Query.jsp">了解更多</a>
                        </p>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4 pt-4 pt-md-0">
                        <h2>添加学生信息
                            <br/>
                        </h2>
                        <p class="text-h3">添加学生姓名、身高、体重等信息
                            <br/>
                        </p>
                        <p class="text-h3">
                            <a href="Add.jsp">了解更多</a>
                        </p>
                    </div>
                    <div class="col-12 col-md-8 m-auto m-lg-0 col-lg-4 pt-5 pt-lg-0">
                        <img alt="image" src="https://img2.baidu.com/it/u=4261193192,3839563272&fm=253&fmt=auto&app=138&f=JPEG?w=236&h=236" class="img-fluid"/>
                    </div>
                </div>
            </div>
        </section>
        <section data-block-type="contents" data-id="6" draggable="true" class="fdb-block">
            <div class="container">
                <div class="row text-left align-items-center">
                    <div class="col-12 col-md-8 m-auto m-lg-0 col-lg-4 pt-5 pt-lg-0">
                        <img alt="image" src="https://img2.baidu.com/it/u=2734513653,597532601&fm=253&fmt=auto&app=138&f=JPEG?w=610&h=476" class="img-fluid" width="236px" height="236px"/>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4">
                        <h2>删除学生记录
                            <br/>
                        </h2>
                        <p class="text-h3">可通过姓名或学号查找到学生并删除某条学生记录
                            <br/>
                        </p>
                        <p class="text-h3">
                            <a href="Delete.jsp">了解更多</a>
                        </p>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4 pt-4 pt-md-0">
                        <h2>修改学生信息
                            <br/>
                        </h2>
                        <p class="text-h3">当某学生信息错误需要修改时可使用此功能修改
                            <br/>
                        </p>
                        <p class="text-h3">
                            <a href="Update.jsp">了解更多</a>
                        </p>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <!-- /.main-content -->
</div>
<!-- Scripts -->
<script src="https://coscdn.htmlpage.cn/html-template/assets/js/page.min.js"></script>
<script src="https://coscdn.htmlpage.cn/html-template/assets/js/script.js"></script>
</body>
</html>

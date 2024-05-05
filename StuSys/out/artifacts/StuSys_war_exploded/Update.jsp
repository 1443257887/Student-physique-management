<%--
  Created by IntelliJ IDEA.
  User: Jin
  Date: 2024/5/4
  Time: 1:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="JavaBean.*" %>
<%@ page import="java.sql.Connection" %>
<html>
<head>
    <title>修改</title>
    <style>
        * {
            box-sizing: border-box;
        }
        body {
            margin: 0;
        }
        .htmlpage-row{
            display:table;
            padding-top:10px;
            padding-right:10px;
            padding-bottom:10px;
            padding-left:10px;
            width:100%;
        }
        .htmlpage-cell{
            width:8%;
            display:table-cell;
            height:75px;
        }
        .c22834{
            color:#6471e7;
            text-align:center;
            float:left;
            font-size:26px;
            vertical-align:middle;
            right:10%;
            top:30%;
            bottom:30%;
            border-radius:1rem;
            background-color:#72b7f1;
        }
        @media (max-width: 768px){
            .htmlpage-cell{
                width:100%;
                display:block;
            }
        }
    </style>
</head>
<body>
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
<div>
    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="https://coscdn.htmlpage.cn/html-template/template-company-00004/assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="https://coscdn.htmlpage.cn/html-template/template-company-00004/assets/css/font-awesome.css"/>
    <link rel="stylesheet" type="text/css" href="https://coscdn.htmlpage.cn/html-template/template-company-00004/assets/css/templatemo-art-factory.css"/>
    <link rel="stylesheet" type="text/css" href="https://coscdn.htmlpage.cn/html-template/template-company-00004/assets/css/owl-carousel.css"/>
    <!-- ***** Header Area Start ***** -->
    <!-- ***** Header Area End ***** -->
    <!-- ***** Welcome Area Start ***** -->
    <!-- ***** Welcome Area End ***** -->
    <!-- ***** Features Big Item Start ***** -->
    <!-- ***** Features Big Item End ***** -->
    <!-- ***** Features Big Item Start ***** -->
    <!-- ***** Features Big Item End ***** -->
    <!-- ***** Features Small Start ***** -->
    <!-- ***** Features Small End ***** -->
    <!-- ***** Frequently Question Start ***** -->
    <!-- ***** Frequently Question End ***** -->
    <!-- ***** Contact Us Start ***** -->
    <section id="contact-us" class="section">
        <div class="container-fluid">
            <div class="row">
                <!-- ***** Contact Map Start ***** -->
                <!-- ***** Contact Map End ***** -->
                <!-- ***** Contact Form Start ***** -->
                <div class="col-lg-6 col-md-6 col-sm-12">
                </div>
                <!-- ***** Contact Form End ***** -->
            </div>
        </div>
    </section>
    <!-- ***** Contact Us End ***** -->
    <!-- ***** Footer Start ***** -->
    <!-- jQuery -->
    <script src="https://coscdn.htmlpage.cn/html-template/template-company-00004/assets/js/jquery-2.1.0.min.js"></script>
    <!-- Bootstrap -->
    <script src="https://coscdn.htmlpage.cn/html-template/template-company-00004/assets/js/popper.js"></script>
    <script src="https://coscdn.htmlpage.cn/html-template/template-company-00004/assets/js/bootstrap.min.js"></script>
    <!-- Plugins -->
    <script src="https://coscdn.htmlpage.cn/html-template/template-company-00004/assets/js/owl-carousel.js"></script>
    <script src="https://coscdn.htmlpage.cn/html-template/template-company-00004/assets/js/scrollreveal.min.js"></script>
    <script src="https://coscdn.htmlpage.cn/html-template/template-company-00004/assets/js/waypoints.min.js"></script>
    <script src="https://coscdn.htmlpage.cn/html-template/template-company-00004/assets/js/jquery.counterup.min.js"></script>
    <script src="https://coscdn.htmlpage.cn/html-template/template-company-00004/assets/js/imgfix.min.js"></script>
    <!-- Global Init -->
    <script src="https://coscdn.htmlpage.cn/html-template/template-company-00004/assets/js/custom.js"></script>
</div>
<div class="htmlpage-row">
    <div class="htmlpage-cell" id="ieo0c">
        <a href="main.jsp" class="c22834"> 返回首页 </a>
    </div>
</div>
<div class="contact-form">
    <form method="post" id="contact" action="Update.jsp">
        <div class="row">
            <div class="col-md-6 col-sm-12">
                <fieldset>
                    <input type="text" name="qid" placeholder="要修改的学生学号(选填)" class="contact-field"/>
                    <input type="text" name="qname" placeholder="要修改的学生姓名(选填)" class="contact-field"/>
                </fieldset>
            </div>
            <div class="col-md-6 col-sm-12">
                <fieldset>
                    <input type="text" name="id" id="name" placeholder="修改后的学生学号(必填)" class="contact-field" required/>
                    <input type="text" name="name" placeholder="修改后的学生姓名(必填)" class="contact-field" required/>
                    <input type="text" name="weight" placeholder="修改后的学生体重(kg)(必填)" class="contact-field" required/>
                    <input type="text" name="height" placeholder="修改后的学生身高(cm)(必填)" class="contact-field" required/>
                </fieldset>
            </div>
            <div class="col-lg-12">
                <fieldset>
                </fieldset>
            </div>
            <div class="col-lg-12">
                <fieldset>
                    <button type="submit" id="form-submit" class="main-button">修改</button>
                </fieldset>
            </div>
        </div>
    </form>
</div>
<div>
    <%
        request.setCharacterEncoding("utf-8");
        String qid = request.getParameter("qid");
        String qname = request.getParameter("qname");
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String w = request.getParameter("weight");
        String h = request.getParameter("height");
        if (qid==null&qname==null&id==null&name==null&w==null&h==null){
            out.println("<h3>准备就绪</h3>");
        }else {
            double weight = Double.valueOf(w);
            double height = Double.valueOf(h);
            Student stu = new Student();
            stu.setId(id);
            stu.setName(name);
            stu.setHeight(height);
            stu.setWeight(weight);
            Connection conn = StuJDBCUtil.getConn();
            int flag = StuADQU.update(conn,qid,qname,stu);
            if (flag != 0){
                out.println("<h3>"+"修改成功"+"</h3>");
            }else {
                out.println("<h3>"+"出错了，此学生不存在或系统错误");
            }
        }
    %>
</div>
</body>
</html>


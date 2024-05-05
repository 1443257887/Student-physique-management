<%--
  Created by IntelliJ IDEA.
  User: Jin
  Date: 2024/5/3
  Time: 0:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="JavaBean.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>查询</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
        }

        .htmlpage-row {
            display: table;
            padding-top: 10px;
            padding-right: 10px;
            padding-bottom: 10px;
            padding-left: 10px;
            width: 100%;
        }

        .htmlpage-cell {
            width: 8%;
            display: table-cell;
            height: 75px;
        }

        .c22834 {
            color: #6471e7;
            text-align: center;
            float: left;
            font-size: 26px;
            vertical-align: middle;
            right: 10%;
            top: 30%;
            bottom: 30%;
            border-radius: 1rem;
            background-color: #72b7f1;
        }

        @media (max-width: 768px) {
            .htmlpage-cell {
                width: 100%;
                display: block;
            }
        }

        table {
            border: 1px;
            font-size: 25px;
        }

        table tr td {
            border: 1px solid #ccc;
        }

        table tr td {
            padding: 5px 10px;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>
<%
    try {
        HttpSession session1 = request.getSession();
        boolean flag = (boolean) session1.getAttribute("flag");
        if (flag) {
            String name = (String) session1.getAttribute("name");
            out.println("<br>");
            out.println("<h1>欢迎您，" + name + "</h1>");
        } else {
            response.sendRedirect("index.jsp");
        }
    } catch (Exception e) {
        response.sendRedirect("index.jsp");
    }
%>
<div>
    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css"
          href="https://coscdn.htmlpage.cn/html-template/template-company-00004/assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="https://coscdn.htmlpage.cn/html-template/template-company-00004/assets/css/font-awesome.css"/>
    <link rel="stylesheet" type="text/css"
          href="https://coscdn.htmlpage.cn/html-template/template-company-00004/assets/css/templatemo-art-factory.css"/>
    <link rel="stylesheet" type="text/css"
          href="https://coscdn.htmlpage.cn/html-template/template-company-00004/assets/css/owl-carousel.css"/>
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
    <form method="post" id="contact" action="Query.jsp">
        <div class="row">
            <div class="col-md-6 col-sm-12">
                <fieldset>
                    <input type="text" name="id" id="name" placeholder="学号(精确查询时选填)" class="contact-field"/>
                    <input type="text" name="minweight" placeholder="体重下限(kg)(模糊查询时选填)"
                           class="contact-field"/>
                    <input type="text" name="minheight" placeholder="身高下限(cm)(模糊查询时选填)"
                           class="contact-field"/>
                </fieldset>
            </div>
            <div class="col-md-6 col-sm-12">
                <fieldset>
                    <input type="text" name="name" id="email" placeholder="姓名(精确查询时选填)" class="contact-field"/>
                    <input type="text" name="maxweight" placeholder="体重上限(kg)(模糊查询时选填)"
                           class="contact-field"/>
                    <input type="text" name="maxheight" placeholder="身高上限(cm)(模糊查询时选填)"
                           class="contact-field"/>
                </fieldset>
            </div>
            <div class="col-lg-12">
                <fieldset>
                </fieldset>
            </div>
            <div class="col-lg-12">
                <fieldset>
                    <button type="submit" id="form-submit" class="main-button">检索</button>
                </fieldset>
            </div>
        </div>
    </form>
</div>
<div>
    <table>
        <tr>
            <th>学号</th>
            <th>姓名</th>
            <th>身高(cm)</th>
            <th>体重(kg)</th>
        </tr>
        <%
            request.setCharacterEncoding("utf-8");
            String id = (request.getParameter("id") == "" ? null : request.getParameter("id"));
            String name = (request.getParameter("name") == "" ? null : request.getParameter("name"));
            String minw = (request.getParameter("minweight") == "" ? null : request.getParameter("minweight"));
            String maxw = (request.getParameter("maxweight") == "" ? null : request.getParameter("maxweight"));
            String minh = (request.getParameter("minheight") == "" ? null : request.getParameter("minheight"));
            String maxh = (request.getParameter("maxheight") == "" ? null : request.getParameter("maxheight"));
            Double minweight = new Double(minw == null ? 0.0 : Double.valueOf(minw));
            Double maxweight = new Double(maxw == null ? 999.9 : Double.valueOf(maxw));
            Double minheight = new Double(minh == null ? 0.0 : Double.valueOf(minh));
            Double maxheight = new Double(maxh == null ? 999.9 : Double.valueOf(maxh));

            if (id == null && name == null && minweight == 0.0 && maxweight == 999.9 && minheight == 0.0 && maxheight == 999.9) {
                ArrayList<Student> students;
                Connection conn = StuJDBCUtil.getConn();
                students = StuADQU.getAll(conn);
                for (Student stu : students) {
                    out.println("<tr>");
                    out.println("<td>" + stu.getId() + "</td>");
                    out.println("<td>" + stu.getName() + "</td>");
                    out.println("<td>" + stu.getHeight() + "</td>");
                    out.println("<td>" + stu.getWeight() + "</td>");
                    out.println("</tr>");
                }
            } else if ((id != null || name != null) && (minweight == 0.0 && maxweight == 999.9 && minheight == 0.0 && maxheight == 999.9)) {
                Connection conn = StuJDBCUtil.getConn();
                ArrayList<Student> students = StuADQU.getAccurateQuery(conn, id, name);
                for (Student stu : students) {
                    out.println("<tr>");
                    out.println("<td>" + stu.getId() + "</td>");
                    out.println("<td>" + stu.getName() + "</td>");
                    out.println("<td>" + stu.getHeight() + "</td>");
                    out.println("<td>" + stu.getWeight() + "</td>");
                    out.println("</tr>");
                }
            } else if ((id == null && name == null) && (minweight != 0.0 || maxweight != 999.9 || minheight != 0.0 || maxheight != 999.9)) {
                Connection conn = StuJDBCUtil.getConn();
                ArrayList<Student> students = StuADQU.getQuery(conn, minweight, maxweight, minheight, maxheight);
                for (Student stu : students) {
                    out.println("<tr>");
                    out.println("<td>" + stu.getId() + "</td>");
                    out.println("<td>" + stu.getName() + "</td>");
                    out.println("<td>" + stu.getHeight() + "</td>");
                    out.println("<td>" + stu.getWeight() + "</td>");
                    out.println("</tr>");
                }
            } else {
                out.println("<h3>错误！精确查询与范围查询不可同时填写</h3>");
            }

        %>
    </table>
</div>

</body>
</html>

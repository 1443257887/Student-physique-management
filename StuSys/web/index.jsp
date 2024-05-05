<%--
  Created by IntelliJ IDEA.
  User: Jin
  Date: 2024/4/16
  Time: 8:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>登录</title>
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
      .bg-white.rounded.shadow-7.w-400.mw-100.p-6.mx-auto{
        background-color:#000000;
      }

    </style>
  </head>
  <body>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="keywords" content=""/>
  <title>用户登录
  </title>
  <link href="https://coscdn.htmlpage.cn/html-template/assets/css/page.min.css" rel="stylesheet"/>
  <link href="https://coscdn.htmlpage.cn/html-template/assets/css/style.css" rel="stylesheet"/>
  <link rel="apple-touch-icon" href="https://coscdn.htmlpage.cn/html-template/assets/img/apple-touch-icon.png"/>
  <link rel="icon" href="https://coscdn.htmlpage.cn/html-template/assets/img/favicon.png"/>
  <div id="iqgnm" class="bg-main-img c1881">
    <img src="https://coscdn.htmlpage.cn/html-template/assets/img/bg/4.jpg" class="c1890"/>
    <!-- Main Content -->
    <main id="i2kgq" class="main-content c1906">
      <div class="bg-white rounded shadow-7 w-400 mw-100 p-6 mx-auto">
        <h5 class="mb-7">用户登录
        </h5>
        <form action="Login" method="post">
          <div class="form-group">
            <input type="text" name="username" placeholder="用户名" class="form-control"/>
          </div>
          <div class="form-group">
            <input type="password" name="password" placeholder="密码" class="form-control"/>
          </div>
          <div class="form-group flexbox py-3">
            <div class="custom-control custom-checkbox">
              <input type="checkbox" checked class="custom-control-input"/>
            </div>
            <a href="user-recover.html" class="text-muted small-2">忘记密码？</a>
          </div>
          <div class="form-group">
            <button type="submit" class="btn btn-block btn-primary">登录</button>
          </div>
        </form>
        <div class="text-center">
        </div>
        <hr class="w-30"/>
        <p class="text-center text-muted small-2">您还没有账号？
          <a href="register.jsp">立即注册</a>
        </p>
      </div>
    </main>
    <!-- /.main-content -->
  </div>
  <!-- Scripts -->
  <script src="https://coscdn.htmlpage.cn/html-template/assets/js/page.min.js"></script>
  <script src="https://coscdn.htmlpage.cn/html-template/assets/js/script.js"></script>
  </body>
</html>

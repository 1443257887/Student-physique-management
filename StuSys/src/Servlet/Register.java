package Servlet;

import JavaBean.ADQU;
import JavaBean.JDBCUtil;
import JavaBean.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

@WebServlet(name = "Register", value = "/Register")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");

        Connection conn = JDBCUtil.getConn();
        User ru = new User(request.getParameter("username"),request.getParameter("name"),request.getParameter("password"));
        boolean flag = new ADQU().getUserAdd(ru,conn);
        if (flag) {
            PrintWriter out = response.getWriter();
            out.println("<h1>申请注册成功，等待管理员审核</h1>");
            out.println("<a href='http://localhost:8080/StuSys_war_exploded/'>点击返回</a>");
        }else {
            PrintWriter out = response.getWriter();
            out.println("<h1>注册失败，用户名已存在</h1>");
            out.println("<a href='http://localhost:8080/StuSys_war_exploded/'>点击返回</a>");
        }
    }
}

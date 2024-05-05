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

@WebServlet(description = "验证登录",name = "Login", value = "/Login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");

        Connection conn = JDBCUtil.getConn();
        User user = new User(request.getParameter("username"),null,request.getParameter("password"));
        ADQU que = new ADQU();
        String name = que.getUserQuery(user,conn);
        if (name!=null) {
            user.setName(name);
            HttpSession session = request.getSession();
            session.setAttribute("uname", user.getUname());
            session.setAttribute("name",user.getName());
            session.setAttribute("pswd",user.getPswd());
            session.setAttribute("flag",true);
            request.getRequestDispatcher("main.jsp").forward(request,response);
        }else {
            PrintWriter out = response.getWriter();
            out.println("<h1>登录失败，用户名或密码错误</h1>");
            out.println("<a href='http://localhost:8080/StuSys_war_exploded/'>点击返回</a>");
        }
    }
}

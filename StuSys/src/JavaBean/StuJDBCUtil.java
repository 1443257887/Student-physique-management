package JavaBean;

import java.sql.*;

public class StuJDBCUtil {
    public static Connection getConn() {
        String user = "root";
        String paswd = "root";
        String dbname = "stusys";
        String url1 = "jdbc:mysql://localhost:3306/" + dbname;
        String url2 = "?user=" + user + "&password=" + paswd;
        String url3 = "&userUnicode=ture&characterEncoding=UTF-8&useSSL=false";
        String url = url1 + url2 + url3;

        //在方法内使用try catch抛出错误后，再调用函数时，就不用再try catch了
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return conn;
    }

    public static void free(Connection conn, ResultSet rs, PreparedStatement ppstt) {
        try {
            if (rs != null) rs.close();
            if (ppstt != null) ppstt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}

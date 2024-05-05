package JavaBean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ADQU {
    public String getUserQuery(User u, Connection conn){
        /**
         * 查询 参数：用户对象，连接对象
         * 有则返回t无则返回f，出错返回null
         * **/
        String sql = "select * from users where uname=? and pswd=?";
        ResultSet rs;
        Boolean flag = null;
        String name  = null;
        try {
            PreparedStatement ppstt = conn.prepareStatement(sql);
            ppstt.setString(1,u.getUname());
            ppstt.setString(2,u.getPswd());
            rs = ppstt.executeQuery();
            flag = rs.next();
            if (flag){
                name = rs.getString("name");
                return name;
            }else {
                return name;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean getUserAdd(User u,Connection conn){
        /**
         * 添加 参数：用户对象，链接对象
         * 已有返回f 添加成功返回t，出错返回null
         * **/
        String Qe_sql = "select * from users where uname=?";
        ResultSet Qe_rs;
        Boolean Qe_flag = null;
        try {
            PreparedStatement ppstt = conn.prepareStatement(Qe_sql);
            ppstt.setString(1,u.getUname());
            Qe_rs = ppstt.executeQuery();
            Qe_flag = Qe_rs.next();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        Boolean flag = null;
        if (Qe_flag){
            flag = false;
        }else {
            String sql = "insert into register_users (uname,name,pswd) values (?,?,?)";
            ResultSet rs;
            try {
                PreparedStatement ppstt = conn.prepareStatement(sql);
                ppstt.setString(1,u.getUname());
                ppstt.setString(2,u.getName());
                ppstt.setString(3,u.getPswd());
                int i = ppstt.executeUpdate();
                if (i>0){
                    flag = true;
                }else {
                    flag = false;
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return flag;
    }
}

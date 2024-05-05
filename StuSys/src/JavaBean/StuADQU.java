package JavaBean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import JavaBean.Student;

public class StuADQU {
    public static ArrayList<Student> getAll(Connection con){
        ArrayList<Student> students = new ArrayList<>();
        String sql = "select * from stu";
        ResultSet rs;
        try{
            PreparedStatement ppsttmt = con.prepareStatement(sql);
            rs = ppsttmt.executeQuery();
            while (rs.next()){
                Student stu = new Student();

                stu.setId(rs.getString("id"));
                stu.setName(rs.getString("name"));
                stu.setWeight(rs.getDouble("weight(kg)"));
                stu.setHeight(rs.getDouble("height(cm)"));

                students.add(stu);
            }
        }catch (SQLException e){
            System.out.println("出错啦，请重试");
        }
        return students;
    }

    public static ArrayList<Student> getQuery(Connection con,Double minweight,Double maxweight,Double minheight,Double maxheight){
        String sql = "select * from stu where (`weight(kg)` between ? and ?) and (`height(cm)` between ? and ?)";
        ResultSet rs;
        ArrayList<Student> students = new ArrayList<>();
        try{
            PreparedStatement ppsttmt = con.prepareStatement(sql);
            ppsttmt.setDouble(1,minweight);
            ppsttmt.setDouble(2,maxweight);
            ppsttmt.setDouble(3,minheight);
            ppsttmt.setDouble(4,maxheight);
            rs = ppsttmt.executeQuery();
            while (rs.next()){
                Student stu = new Student();

                stu.setId(rs.getString("id"));
                stu.setName(rs.getString("name"));
                stu.setWeight(rs.getDouble("weight(kg)"));
                stu.setHeight(rs.getDouble("height(cm)"));

                students.add(stu);
            }
        }catch (SQLException e){
            System.out.println("出错啦，请重试");
        }
        return students;
    }

    public static ArrayList<Student> getAccurateQuery(Connection con,String id,String name) {
        String sql = "select * from stu where (id=?) or (`name`=?)";
        ResultSet rs;
        ArrayList<Student> students = new ArrayList<>();
        try{
            PreparedStatement ppsttmt = con.prepareStatement(sql);
            ppsttmt.setString(1,id);
            ppsttmt.setString(2,name);
            rs = ppsttmt.executeQuery();
            while (rs.next()){
                Student stu = new Student();

                stu.setId(rs.getString("id"));
                stu.setName(rs.getString("name"));
                stu.setWeight(rs.getDouble("weight(kg)"));
                stu.setHeight(rs.getDouble("height(cm)"));

                students.add(stu);
            }
        }catch (SQLException e){
            System.out.println("出错啦，请重试");
        }
        return students;
    }

    public static boolean add(Connection con,Student student) {
        String id = student.getId();
        String name = student.getName();
        double weight = student.getWeight();
        double height = student.getHeight();
        boolean flag;
        String query_sql = "select * from stu where id=?";
        try {
            PreparedStatement query_ppsttmt = con.prepareStatement(query_sql);
            query_ppsttmt.setString(1,id);
            ResultSet q_rs = query_ppsttmt.executeQuery();
            if (q_rs.next()){
                flag = false;
            }else {
                String insert_sql = "insert into stu values (?,?,?,?)";
                PreparedStatement insert_ppsttmt = con.prepareStatement(insert_sql);
                insert_ppsttmt.setString(1,id);
                insert_ppsttmt.setString(2,name);
                insert_ppsttmt.setDouble(3,height);
                insert_ppsttmt.setDouble(4,weight);
                insert_ppsttmt.execute();
                flag = true;
            }
        }catch (SQLException e){
                flag = false;
        }
        return flag;
    }

    public static int deletePlus(Connection con,double minweight,double maxweight,double minheight,double maxheight) {
        String sql = "DELETE FROM stu WHERE (`weight(kg)` BETWEEN ? AND ?) and (`height(cm)` BETWEEN ? AND ?)";
        int flag = 0;
        try {
            PreparedStatement ppsttmt = con.prepareStatement(sql);
            ppsttmt.setDouble(1,minweight);
            ppsttmt.setDouble(2,maxweight);
            ppsttmt.setDouble(3,minheight);
            ppsttmt.setDouble(4,maxheight);
            flag = ppsttmt.executeUpdate();
        }catch (SQLException e){
            flag = 0;
        }
        return flag;
    }

    public static int delete(Connection con,String id,String name) {
        String sql = "DELETE FROM stu WHERE (id=?) OR (`name`=?)";
        int flag;
        try {
            PreparedStatement ppsttmt = con.prepareStatement(sql);
            ppsttmt.setString(1,id);
            ppsttmt.setString(2,name);
            flag = ppsttmt.executeUpdate();
        }catch (SQLException e){
            flag = 0;
        }
        return flag;
    }

    public static int update(Connection con,String id,String name,Student stu) {
        String sql = "UPDATE stu SET `id`=?,`name`=?,`height(cm)`=?,`weight(kg)`=? WHERE `id`=? OR `name`=?";
        int flag = 0;
        try {
            PreparedStatement ppsttmt = con.prepareStatement(sql);
            ppsttmt.setString(1,stu.getId());
            ppsttmt.setString(2,stu.getName());
            ppsttmt.setDouble(3,stu.getHeight());
            ppsttmt.setDouble(4,stu.getWeight());
            ppsttmt.setString(5,id);
            ppsttmt.setString(6,name);
            flag = ppsttmt.executeUpdate();
        }catch (SQLException e){
            flag = 0;
        }
        return flag;
    }
}

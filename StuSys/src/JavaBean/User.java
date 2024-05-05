package JavaBean;

public class User {
    private String uname;
    private String name;
    private String pswd;

    public User(String uname, String name, String pswd) {
        this.uname = uname;
        this.name = name;
        this.pswd = pswd;
    }

    public String getPswd() {
        return pswd;
    }

    public void setPswd(String pswd) {
        this.pswd = pswd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }
}

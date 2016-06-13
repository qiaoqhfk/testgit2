



import java.sql.*;

/**
 * Created by LENOVO-QH on 2016/5/4.
 */
public class DbUtill {
    public static final String URL = "jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=UTF-8";
    public static final String USER = "root";
    public static final String PASSWORD = "";
    private static Connection conn = null;

    static {
        try {
            //1.加载驱动程序
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws Exception {
        if (conn == null) {
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        }
        return conn;
    }

    public int loginSuccess(String userName, String password) {
        int returnValue = 0;
        String sql = "SELECT * FROM user3";
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            conn = getConnection();
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            while (rs.next()) {
                String userNameInDB = rs.getString("username");
                String passwordInDB = rs.getString("paw");
                if (userNameInDB.equals(userName)){
                    if (passwordInDB.equals(password)) {
                        returnValue = 1;
                    }else{
                        returnValue = 2;
                        break;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return returnValue;
    }

    public static int registerSuccess(String userName, String password) {
        String sql2 = "insert into user value (VARCHAR (userName),VARCHAR (password))";
        Connection conn2 = null;
        Statement stmt2 = null;
        int rs2 = 0;
        try {
            conn2 = getConnection();
            stmt2 = conn2.createStatement();
            rs2 = stmt2.executeUpdate(sql2);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs2;
    }
}

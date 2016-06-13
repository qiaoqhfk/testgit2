/**
 * Created by LENOVO-QH on 2016/6/12.
 */
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegisterServlet extends HttpServlet {

    public RegisterServlet(){
        super();
    }

    public void destroy(){
        super.destroy();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        doPost(request, response);
    }


    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{

        String newusername = request.getParameter("newusername");//取得用户名
        String newpassword = request.getParameter("newpassword");//取得密码
        DbUtill db2 = new DbUtill();//构建数据库对象
        int canregister = db2.loginSuccess(newusername,newpassword);
        String regEx = "^[A-Za-z][A-Za-z1-9_-]+$";
        // 编译正则表达式
        Pattern pattern = Pattern.compile(regEx);
        Matcher matcher = pattern.matcher(newusername);
        // 字符串是否与正则表达式相匹配
        boolean rs = matcher.matches();
        if(rs==true) {
            if(canregister == 1){
                request.getRequestDispatcher("register_failure.jsp").forward(request, response);
            }else{
                int registersuc = db2.registerSuccess(newusername,newpassword);
                if(registersuc != 0){
                    request.getRequestDispatcher("register_success.jsp").forward(request, response);
                }
            }
        }else{
            request.getRequestDispatcher("/WEB-INF/serror.jsp").forward(request, response);
        }


    }

    public void init() throws ServletException{

    }
}

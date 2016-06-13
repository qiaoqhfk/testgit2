/**
 * Created by LENOVO-QH on 2016/4/28.
 */
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class LoginServlet extends HttpServlet {

    public LoginServlet(){
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

        String userName = request.getParameter("username");//取得用户名
        String password = request.getParameter("password");//取得密码
        DbUtill db = new DbUtill();//构建数据库对象
        int canLogin = db.loginSuccess(userName, password);
        String regEx = "^[A-Za-z][A-Za-z1-9_-]+$";
        // 编译正则表达式
        Pattern pattern = Pattern.compile(regEx);
        Matcher matcher = pattern.matcher(userName);
        // 字符串是否与正则表达式相匹配
        boolean rs = matcher.matches();
        if(rs==true) {
            if(canLogin == 1){//根据登陆情况，跳转页面
                request.getRequestDispatcher("login_success.jsp").forward(request, response);
            }else{
               request.getRequestDispatcher("login_failure.jsp").forward(request, response);
            }
        }else{
            request.getRequestDispatcher("/WEB-INF/serror.jsp").forward(request, response);
        }
    }

    public void init() throws ServletException{

    }
}

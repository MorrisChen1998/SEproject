package defult;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Action {
	protected String view;
	
	public void doAuthenticate(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
		String userName = request.getParameter("username");
        String password = request.getParameter("password");

        // �Y�������ҵL�~�A�N�إ� userInfo ����A�ë��w�@�� attribute �P��ô��
        if ("123".equals(password)) {
            HttpSession session = request.getSession();

            UserInfoBean bean = new UserInfoBean();
            bean.setUserName(userName);
            bean.setPassword(password);

            session.setAttribute("userInfo", bean);
            view = "/Welcome.jsp";
        }
        else {  // ���ҥ���
            view = "/LoginError.jsp";
        }
    }
	
	
	public void setView(String aView)
    {
        view = aView;
    }
	
	public String getView()
    {
        return view;
    }
}

package defult;

import java.sql.*;
import java.util.ArrayList;

public class DBController {
	private Connection con;
	private Statement st;
	private ResultSet rs;

	public DBController() {
		try {
			// Class ���R�A forName() ��k��{�ʺA�[�����O
			Class.forName("com.mysql.jdbc.Driver");
			// 3306|MySQL�}�񦹺ݤf
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ntustsql?serverTimezone=UTC", "root", "root");
			st = con.createStatement();

		} catch (Exception ex) {
			System.out.println("Error: " + ex);
		}
	}

	public ArrayList<UserInfoBean> getData() {
		ArrayList<UserInfoBean> result = new ArrayList<UserInfoBean>();
		try {
			String query = "select * from user";
			rs = st.executeQuery(query);
			System.out.println("Records for Database");
			while (rs.next()) {
				UserInfoBean data = new UserInfoBean();
				data.id = rs.getString("id");
				data.password = rs.getString("password");
				data.name = rs.getString("name");
				data.mail = rs.getString("mail");
				data.institute = rs.getString("institute");
				data.depart = rs.getString("depart");
				data.birthday = rs.getString("birthday");
				result.add(data);
			}
		} catch (Exception ex) {
			System.out.println(ex);
		}
		return result;
	}

	
	
}
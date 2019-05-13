package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.User;

public class UserDAO {

	public static void main(String[] args) {

		System.out.println(new UserDAO().getUser("tom", "123").getId());
		System.out.println("end");

	}

	public User getUser(String name, String password) {
		User result = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/cart", "root", "root");

			String sql = "select * from user where name = ? and password = ?";

			PreparedStatement ps = c.prepareStatement(sql);

			ps.setString(1, name);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			System.out.println("searchuser");

			if (rs.next()) {
				result = new User();
				result.setId(rs.getInt(1));
				result.setPassword(password);
				result.setName(name);
			}

			ps.close();

			System.out.println("psclose");
			c.close();
			System.out.println("cclose");

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
}
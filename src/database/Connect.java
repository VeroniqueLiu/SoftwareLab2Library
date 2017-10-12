package database;
import java.sql.*;

public class Connect {
	Connection con=null;
	Statement state = null;
	ResultSet result = null;
	public Connect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");			
			
			con = DriverManager.getConnection("jdbc:mysql://bkemzkqwywqz.mysql.sae.sina.com.cn:10646/bookdb?useSSL=false","root","LSFqyhLRX7977");
			state = con.createStatement();	

		} catch (Exception e) {
			con = null;
			System.out.println("Error");
		}
	}
	
	public ResultSet executeQuery(String sql) {
		try {
			result = state.executeQuery(sql);
		} catch (Exception e) {
			result = null;
		}
		return result;
	}
	
	public int executeUpdate(String sql) {
		try {
			state.executeUpdate(sql);
			return 0;
		} catch (Exception e) {
			return -1;
		}
	}
}

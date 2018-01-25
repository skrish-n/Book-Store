package utility;
//To establish Oracle database connection:
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcUtility {
	// loading oracle driver
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("oracle driver fired up!!");
		} catch (Exception e) {
			System.out.println("Driver is not loaded");
		}
	}

	// getConnection
	public static Connection getConnection() {
		Connection con = null;
		try {
			String url = "jdbc:oracle:thin:@//localhost:1521/XE";
			String usrid = "skrish";
			String pass = "saikrishnan";
			con = DriverManager.getConnection(url, usrid, pass);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	// close connection

	public static void close(Connection con, Statement st) {
		try {
			if (con != null) {
				con.close();
			}
			if (st != null) {
				st.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

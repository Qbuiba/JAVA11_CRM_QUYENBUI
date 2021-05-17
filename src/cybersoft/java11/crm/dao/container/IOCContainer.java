package cybersoft.java11.crm.dao.container;

import cybersoft.java11.crm.config.MySqlConnection;

public class IOCContainer {

	private static MySqlConnection _mysqlConnection = null;
	// private static MysqlConnection _mysqlConnection = null;

	public static MySqlConnection getDataBaseConnection() {
		/* database connection information */
		String url = "jdbc:mysql://localhost:3306/crm";
		String username = "root";
		String password = "1234@Abc";

		if (_mysqlConnection == null) {
			return new MySqlConnection(url, username, password);
		}
		return _mysqlConnection;
	}
}

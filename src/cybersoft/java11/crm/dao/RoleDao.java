package cybersoft.java11.crm.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import cybersoft.java11.crm.config.DatabaseConnection;
import cybersoft.java11.crm.dao.container.IOCContainer;
import cybersoft.java11.crm.model.Role;

public class RoleDao {
	DatabaseConnection _dbConnection;

	public RoleDao() {
		_dbConnection = IOCContainer.getDataBaseConnection();
	}

	public List<Role> findAll() {
		/* return all roles in database */
		List<Role> listRole = new LinkedList<Role>();

		Connection connection = _dbConnection.getConnection();
		try {
			Statement statement = connection.createStatement();
			String query = "select id, name, description from role";

			ResultSet results = statement.executeQuery(query);

			// iterator
			while (results.next()) {
				Role newRole = new Role();
				newRole.setId(results.getInt("id"));
				newRole.setName(results.getString("name"));
				newRole.setDescription(results.getString("description"));

				listRole.add(newRole);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listRole;
	}
}

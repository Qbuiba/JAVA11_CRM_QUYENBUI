package cybersoft.java11.crm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import cybersoft.java11.crm.config.MySqlConnection;
import cybersoft.java11.crm.model.Role;

public class RoleDao {
	public List<Role> findAll() {
		/* return all roles in database */
		List<Role> listRole = new LinkedList<Role>();

		Connection connection = MySqlConnection.getConnection();
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
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return listRole;
	}

	public Role findRoleById(int id) {
		Role result = null;

		Connection connection = MySqlConnection.getConnection();
		try {
			String query = "select name, description from role where id=?";

			PreparedStatement statement = connection.prepareStatement(query);

			statement.setInt(1, id);

			ResultSet results = statement.executeQuery(query);

			// iterator
			while (results.next()) {
				Role newRole = new Role();
				newRole.setId(id);
				newRole.setName(results.getString("name"));
				newRole.setDescription(results.getString("description"));

				result = newRole;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}
}

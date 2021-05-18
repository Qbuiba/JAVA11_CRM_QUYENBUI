package cybersoft.java11.crm.biz;

import java.util.List;

import cybersoft.java11.crm.dao.RoleDao;
import cybersoft.java11.crm.model.Role;

public class RoleBiz {
	private RoleDao dao;

	public RoleBiz() {
		dao = new RoleDao();
	}

	public List<Role> findAll() {
		return dao.findAll();
	}

	public Role findRoleById(int id) {
		return dao.findRoleById(id);
	}

	public boolean addRole(String name, String description) {
		if (dao.addRole(name, description) == 1) {
			return true;
		} else {
			return false;
		}

	}

	public boolean updateRoleById(int id, String name, String description) {
		if (dao.updateRoleById(id, name, description) == 1) {
			return true;
		} else {
			return false;
		}
	}
}

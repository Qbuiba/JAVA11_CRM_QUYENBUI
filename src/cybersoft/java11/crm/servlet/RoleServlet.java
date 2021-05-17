package cybersoft.java11.crm.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cybersoft.java11.crm.biz.RoleBiz;
import cybersoft.java11.crm.model.Role;
import cybersoft.java11.crm.utils.PathConst;
import cybersoft.java11.crm.utils.UrlConst;

@WebServlet(name = "roleServlet", urlPatterns = { UrlConst.ROLE_ADD, UrlConst.ROLE_DASHBOARD, UrlConst.ROLE_DELETE,
		UrlConst.ROLE_UPDATE, })
public class RoleServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private RoleBiz biz;

	@Override
	public void init() throws ServletException {
		// TODO: init RoleBiz
		super.init();
		biz = new RoleBiz();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Role> listRole = biz.findAll();

		String path = req.getServletPath();
		switch (path) {
		case UrlConst.ROLE_DASHBOARD: {
			req.setAttribute("roles", listRole);
			req.getRequestDispatcher(PathConst.ROLE_DASHBOARD).forward(req, resp);
			break;
		}
		case UrlConst.ROLE_ADD: {
			req.getRequestDispatcher(PathConst.ROLE_ADD).forward(req, resp);
			break;
		}
		case UrlConst.ROLE_UPDATE: {
			req.getRequestDispatcher(PathConst.ROLE_UPDATE).forward(req, resp);
			break;
		}
		default:
			throw new IllegalArgumentException("Unexpected value: " + path);
		}

	}
}

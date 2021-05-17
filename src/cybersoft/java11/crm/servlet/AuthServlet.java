package cybersoft.java11.crm.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cybersoft.java11.crm.biz.AuthBiz;
import cybersoft.java11.crm.model.User;
import cybersoft.java11.crm.utils.PathConst;
import cybersoft.java11.crm.utils.UrlConst;

@WebServlet(name = "authServlet", urlPatterns = { UrlConst.AUTH_LOGIN, UrlConst.AUTH_FORGOT_PASSWORD,
		UrlConst.AUTH_LOGOUT, UrlConst.AUTH_REGISTER, })
public class AuthServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private AuthBiz biz;

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		biz = new AuthBiz();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO: forward to login.jsp
		String path = req.getServletPath();

		switch (path) {
		case UrlConst.AUTH_LOGIN:
			RequestDispatcher dispatcher = req.getRequestDispatcher(PathConst.AUTH_LOGIN);
			dispatcher.forward(req, resp);
			break;
		case UrlConst.AUTH_LOGOUT:
			req.getSession().invalidate();
			resp.sendRedirect(req.getContextPath() + UrlConst.AUTH_LOGIN);
			break;
		default:
			break;
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO:
		String path = req.getServletPath();

		switch (path) {
		case UrlConst.AUTH_LOGIN:
			String email = req.getParameter("email");
			String password = req.getParameter("password");

			System.out.printf("email: %s, password: %s\n", email, password);

			User user = biz.login(email, password);

			if (user != null) { // logged in successfully
				HttpSession session = req.getSession();

				session.setAttribute("userId", "" + user.getId());
				session.setAttribute("fullname", user.getFullname());
				session.setMaxInactiveInterval(60 * 2);

				resp.sendRedirect(req.getContextPath() + "/home");
			} else { // logged in fail
				req.getRequestDispatcher(PathConst.AUTH_LOGIN).forward(req, resp);
			}

			break;

		default:
			break;
		}
	}
}

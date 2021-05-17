package cybersoft.java11.crm.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cybersoft.java11.crm.biz.HomeBiz;
import cybersoft.java11.crm.utils.PathConst;
import cybersoft.java11.crm.utils.UrlConst;

@WebServlet(name = "homeServlet", urlPatterns = { UrlConst.HOME, UrlConst.HEALTH })
public class HomeServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private HomeBiz biz;

	@Override
	public void init() throws ServletException {
		// TODO: init HomeBiz
		super.init();
		biz = new HomeBiz();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO: check database health

		// COOKIES AND SESSION DEMO
//		// create a new cookie: "username" is name of cookie and "tuanphan91" is value
//		Cookie cookie = new Cookie("username", "tuanphan91");
//		// set time to live for cookie is 20 seconds
//		cookie.setMaxAge(20);
//		// add cookie to response to send to client
//		resp.addCookie(cookie);
//
//		Date curTime = Calendar.getInstance().getTime();
//		String now = "" + curTime.getHours() + "." + curTime.getMinutes() + "." + curTime.getSeconds() + "."
//				+ curTime.getDate() + "." + curTime.getMonth() + "." + curTime.getYear();
//
//		Cookie anotherCookie = new Cookie("lastAccess", now);
//		anotherCookie.setMaxAge(60 * 60 * 24 * 30);
//		resp.addCookie(anotherCookie);
//
//		// get current session from request
//		HttpSession currentSession = req.getSession();
//
//		System.out.println(currentSession.getAttribute("loggedUser"));
//
//		if (currentSession.getAttribute("loggedUser") == null) {
//			// set an attribute to current session
//			currentSession.setAttribute("loggedUser", "tuanphan91");
//			// set max time to wait for another request from client
//			currentSession.setMaxInactiveInterval(20);
//		}
//
//		boolean databaseCheckResult = biz.checkHealth();
//		if (databaseCheckResult)
//			resp.getWriter().append("Connection to database has been made successfully.");
//		else
//			resp.getWriter().append("Connection to database has been made unsuccessfully.");

		req.getRequestDispatcher(PathConst.HOME_DASHBOARD).forward(req, resp);
	}
}

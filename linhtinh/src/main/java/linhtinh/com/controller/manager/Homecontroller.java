package linhtinh.com.controller.manager;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = { "/manager/home", "/manager/logout" })
public class Homecontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/view/manager/home.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getServletPath();
		if ("/manager/logout".equals(action)) {
			HttpSession session = req.getSession(false);
			if (session != null) {
				session.invalidate();
			}
			Cookie cookie = new Cookie("cookieName", null);
			cookie.setPath("/");
			cookie.setMaxAge(0);
			resp.addCookie(cookie);
			resp.sendRedirect(req.getContextPath() + "/login");
		}
	}
}

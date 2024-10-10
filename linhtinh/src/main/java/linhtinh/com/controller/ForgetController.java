package linhtinh.com.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import linhtinh.com.service.IUserService;
import linhtinh.com.service.impl.UserServiceImpl;
@WebServlet(urlPatterns = { "/forget" })
public class ForgetController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IUserService service = new UserServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/view/forget.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String repeat_password = req.getParameter("repeat-password");

		String alertMsg = "";

		if (!service.checkExistEmail(email)) {
			alertMsg = "Không tìm thấy tài khoản!";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher("/view/forget.jsp").forward(req, resp);
			return;
		}

		if (!password.equals(repeat_password)) {
			alertMsg = "Mật khẩu không khớp!";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher("/view/forget.jsp").forward(req, resp);
			return;
		}

		boolean isSuccess = service.changePass(password, email);
		if (isSuccess) {
			req.setAttribute("alert", alertMsg);
			resp.sendRedirect(req.getContextPath() + "/login");
		} else {
			alertMsg = "System error!";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher("/view/forget.jsp").forward(req, resp);
		}
	}
}
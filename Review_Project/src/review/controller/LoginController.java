package review.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import review.service.ReviewService;

public class LoginController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		ReviewService service = ReviewService.getInstance();
		boolean result = service.ReviewLogin(id, pwd);
		String path = null;
		
		if(result)
		{
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			path = "/review_login_success.jsp";
		}
		else
		{
			path = "/review_login_fail.jsp";
		}
		HttpUtil.forward(request, response, path);
	}

}

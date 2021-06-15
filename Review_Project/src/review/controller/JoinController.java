package review.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import review.service.ReviewService;
import review.vo.ReviewVO;

public class JoinController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String number = request.getParameter("number");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String phonenumber = request.getParameter("phonenumber");
		
		ReviewVO review = new ReviewVO(name, number, id, pwd, phonenumber);
		
		ReviewService service = ReviewService.getInstance();
		service.ReviewJoin(review);
		
		HttpUtil.forward(request, response, "/review_join_success.jsp");
	}

}

package review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import review.service.ReviewService;

public class DeleteController implements Controller{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");

		ReviewService service = ReviewService.getInstance();
		service.ReviewDelete(id);

		HttpUtil.forward(request, response, "/result/delete_result.jsp");

		
	}

}

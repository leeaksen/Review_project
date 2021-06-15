package review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import review.service.ReviewService;
import review.vo.ReviewVO;

public class WriteController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String category = request.getParameter("category");
		String content = request.getParameter("content");
	
		ReviewVO review = new ReviewVO();
		review.setId(id);
		review.setTitle(title);
		review.setCategory(category);
		review.setContent(content);

		ReviewService service = ReviewService.getInstance();
		service.ReviewWrite(review);

		HttpUtil.forward(request, response, "/result/write_result.jsp");
	}

}

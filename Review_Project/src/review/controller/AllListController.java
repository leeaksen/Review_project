package review.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import review.service.ReviewService;
import review.vo.ReviewVO;

public class AllListController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReviewService service = ReviewService.getInstance();
		ArrayList<ReviewVO> list = service.AllReviewList();
		
		request.setAttribute("list", list);
		HttpUtil.forward(request, response, "/result/all_list_result.jsp");
	}

}

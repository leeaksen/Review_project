package review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import review.service.ReviewService;
import review.vo.ReviewVO;

public class SearchController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				String id = request.getParameter("id");
				String job = request.getParameter("job");
				String path = null;
				
				if (job.equals("search"))
					path = "/result/search_result.jsp";
				else if (job.equals("delete"))
					path = "/result/delete_result.jsp";	
				
				if (id.isEmpty()) {
					request.setAttribute("error", "아이디를 입력해 주세요!!");
					HttpUtil.forward(request, response, path);
					return;
				}

				ReviewService service = ReviewService.getInstance();
				ReviewVO review = service.ReviewSearch(id);

				if (review == null) request.setAttribute("result", "검색된 정보가 없어요!!");
				request.setAttribute("review", review);
				HttpUtil.forward(request, response, path);

			}
}

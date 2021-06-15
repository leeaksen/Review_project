package review.service;

import java.util.ArrayList;

import review.dao.ReviewDAO;
import review.vo.ReviewVO;


public class ReviewService {
	private static ReviewService service = new ReviewService();
	public ReviewDAO dao = ReviewDAO.getInstance();
	
	private ReviewService(){}

	public void ReviewJoin(ReviewVO review) {
		dao.ReviewJoin(review);
	}
	
	public boolean ReviewLogin(String id, String pwd) {
		return dao.ReviewLogin(id, pwd);
	}
	
	public static ReviewService getInstance() {
		return service;
	}

	public void ReviewWrite(ReviewVO review) {
		dao.ReviewWrite(review);
	}

	public ReviewVO ReviewSearch(String id) {
		ReviewVO review = dao.ReviewSearch(id);
		return review;
	}

	public void ReviewDelete(String id) {
		dao.ReviewDelete(id);
	}

	public ArrayList<ReviewVO> ReviewList() {
		ArrayList<ReviewVO> list = dao.ReviewList();
		return list;
	}
	
	public ArrayList<ReviewVO> AllReviewList() {
		ArrayList<ReviewVO> list = dao.AllReviewList();
		return list;
	}
}

package review.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import review.vo.ReviewVO;

public class ReviewDAO {
	private static ReviewDAO dao = new ReviewDAO();
	private ReviewDAO() {}
	public static ReviewDAO getInstance() {
		return dao;
	}
	public Connection connect()
	{
		Connection conn = null;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/review_service?characterEncoding=UTF-8&serverTimezone=UTC", "root" , "1127");
		}catch(Exception e)
		{
			System.out.print("Connection error" +e);
		}
		return conn;
	}
	public void close(Connection conn, PreparedStatement pstmt)
	{
		if(pstmt != null)
		{
			try {
				pstmt.close();
			}catch(Exception e) {
				System.out.print("Pstmt close error" +e);
			}
		}
		if(conn != null)
		{
			try {
				conn.close();
			}catch(Exception e)
			{
				System.out.print("Conn close error" +e);
			}
		}
	}
	public void close(Connection conn, PreparedStatement pstmt, ResultSet rs)
	{
		if (rs != null)
		{
			try { 
				rs.close();
			}catch (Exception e)
			{
				System.out.print("rs close error" +e);
			}
		}
		close(conn, pstmt);
	}
	
	public void ReviewDelete(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = connect();
			pstmt = conn.prepareStatement("delete from review where ID =?");
			pstmt.setString(1, id);
			pstmt.executeUpdate();

		} catch (Exception e) {
			System.out.println("리뷰 삭제 오류 발생 : " + e);
		} finally {
			close(conn, pstmt);
		}
	}
	
	public void ReviewJoin(ReviewVO review)
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into customer values(?, ?, ?, ?, ?)");
			pstmt.setString(1, review.getName());
			pstmt.setString(2, review.getNumber());
			pstmt.setString(3, review.getId());
			pstmt.setString(4, review.getPwd());
			pstmt.setString(5, review.getPhonenumber());
			pstmt.executeUpdate();
			
		}catch(Exception e)
		{
			System.out.print("회원가입 오류 발생 : " +e);
		}
		finally
		{
			close(conn, pstmt);
		}
	}
	
	public boolean ReviewLogin(String id, String pwd) {
		// TODO Auto-generated method stub
		boolean result = false;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("select ID, PWD from customer where ID = ? and PWD = ?");
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				result = true;
			}
			else
				result = false;
		}catch(Exception e)
		{
			System.out.print("로그인 오류 발생 : " +e);
		}
		finally
		{
			close(conn, pstmt, rs);
		}
		return result;
	}
	
	public ReviewVO ReviewSearch(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ReviewVO review = null;

		try {
			conn = connect();
			pstmt = conn.prepareStatement("select * from review where ID =?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				review = new ReviewVO();
				review.setCategory(rs.getString(1));
				review.setTitle(rs.getString(2));
				review.setContent(rs.getString(3));
				review.setId(rs.getString(4));
				review.setDate(rs.getString(5));
			}

		} catch (Exception e) {
			System.out.println("검색 오류 발생 : " + e);
		} finally {
			close(conn, pstmt, rs);
		}

		return review;
	}
	
	public void ReviewWrite(ReviewVO review) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into review(ID, TITLE, CATEGORY, CONTENT) values(?, ?, ?, ?)");
			pstmt.setString(1, review.getId());
			pstmt.setString(2, review.getTitle());
			pstmt.setString(3, review.getCategory());
			pstmt.setString(4, review.getContent());
			pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("리뷰 작성 오류 발생 : " + e);
		} finally {
			close(conn, pstmt);
		}
	}

	public ArrayList<ReviewVO> ReviewList() {

		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ReviewVO review = null;

		try {
			conn = connect();
			pstmt = conn.prepareStatement("select * from review where ID = ?");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				review = new ReviewVO();
				review.setCategory(rs.getString(1));
				review.setTitle(rs.getString(2));
				review.setContent(rs.getString(3));
				review.setId(rs.getString(4));
				review.setDate(rs.getString(5));
				list.add(review);
			}

		} catch (Exception e) {
			System.out.println("리뷰 목록 오류 발생 : " + e);
		} finally {
			close(conn, pstmt, rs);
		}

		return list;
	}
	
	public ArrayList<ReviewVO> AllReviewList() {

		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ReviewVO review = null;

		try {
			conn = connect();
			pstmt = conn.prepareStatement("select * from review");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				review = new ReviewVO();
				review.setCategory(rs.getString(1));
				review.setTitle(rs.getString(2));
				review.setContent(rs.getString(3));
				review.setId(rs.getString(4));
				review.setDate(rs.getString(5));
				list.add(review);
			}

		} catch (Exception e) {
			System.out.println("전체 리뷰 목록 오류 발생 : " + e);
		} finally {
			close(conn, pstmt, rs);
		}

		return list;
	}
}

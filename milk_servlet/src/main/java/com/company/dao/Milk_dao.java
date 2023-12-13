package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.company.dbmanager.DBManager;
import com.company.dto.Milk_dto;

public class Milk_dao {

//    1. select * from milk  order by mno desc
//       - 전체 milk list 뽑기      (list)
//       - return     :     ArrayList<MlikDto> 
//       - parameter  :      X     

	public ArrayList<Milk_dto> list() {

		// 1. db 연동
		DBManager db = new DBManager();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = "select * from milk order by mno desc";
		String result = "관리자에게 문의 바랍니다.";
//		String result_url = "MILK";

		conn = db.getConnection();

		ArrayList<Milk_dto> milk_list = new ArrayList<Milk_dto>();
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Milk_dto milk_dto = new Milk_dto();
				milk_dto.setMno(rset.getInt("mno"));
				milk_dto.setMname(rset.getString("mname"));
				milk_dto.setMprice(rset.getInt("mprice"));

				milk_list.add(milk_dto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			if (rset != null) {
				try {
					rset.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		}

		return milk_list;
	}

//   2. insert into milk ( mname, mprice)  values (?,?)  
//    - 아이템삽입                (insert)
//    - return        :    실패-1 / 성공 1
//    - parameter  :     MlikDto  dto  / String mname, int mprice 

	public int insert(Milk_dto milk_dto) {

		// 1. db 연동
		DBManager db = new DBManager();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = "insert into milk ( mname, mprice)  values (?,?)";
		String result = "관리자에게 문의 바랍니다.";
//		String result_url = "MILK";
		int result_int = -1;
		conn = db.getConnection();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, milk_dto.getMname());
			pstmt.setInt(2, milk_dto.getMprice());

			if (pstmt.executeUpdate() > 0) {
				result = "milk 테이블 추가성공";
				result_int = 1;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			if (rset != null) {
				try {
					rset.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		}

		return result_int;
	}

//   3. select * from milk   where mno=?
//    - 아이템 번호 검색      (search)
//    - return        :    MlikDto  
//    - parameter  :     MlikDto  dto   
	public ArrayList<Milk_dto> search(Milk_dto milk_dto) {

		// 1. db 연동
		DBManager db = new DBManager();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = "select * from milk   where mno=?";
		String result = "관리자에게 문의 바랍니다.";
//		String result_url = "MILK";

		conn = db.getConnection();

		ArrayList<Milk_dto> list = new ArrayList<Milk_dto>();
		Milk_dto dto = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, milk_dto.getMno());
			rset = pstmt.executeQuery();

			while (rset.next()) {

				dto = new Milk_dto(rset.getInt("mno"), rset.getString("mname"), rset.getInt("mprice"));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			if (rset != null) {
				try {
					rset.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		}
		list.add(dto);
		return list;
	}
//   4. update  milk  set  mprice=?     where mno=?
//    - 아이템 수정              (update)
//    - return        :    실패-1 / 성공 1
//    - parameter  :     MlikDto  dto 

	public int update(Milk_dto milk_dto) {

		// 1. db 연동
		DBManager db = new DBManager();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = "update milk set mprice=? where mno=?";
		
		int result_int = -1;
		conn = db.getConnection();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, milk_dto.getMprice());
			pstmt.setInt(2, milk_dto.getMno());

			if (pstmt.executeUpdate() > 0) {
				result = "milk 테이블 수정 성공";
				result_int = 1;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			if (rset != null) {
				try {
					rset.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		}

		return result_int;
	}

//   5. delete  from milk   where mno=?   
//    - 아이템 삭제             (delete)
//    - return        :    실패-1 / 성공 1
//    - parameter  :     MlikDto  dto

	public int delete(Milk_dto milk_dto) {

		// 1. db 연동
		DBManager db = new DBManager();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = "delete from milk where mno=?";
		
		int result_int = -1;
		conn = db.getConnection();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, milk_dto.getMno());

			if (pstmt.executeUpdate() > 0) {
				result = "milk 테이블 삭제 성공";
				result_int = 1;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			if (rset != null) {
				try {
					rset.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		}

		return result_int;
	}

}

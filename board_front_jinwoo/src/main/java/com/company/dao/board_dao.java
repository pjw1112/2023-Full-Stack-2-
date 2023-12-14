package com.company.dao;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.company.dbmanager.DBManager;
import com.company.dto.Board_dto;

public class board_dao {

	public int total() {
		int total = 0;
		DBManager db = new DBManager();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		conn = db.getConnection();
		String sql = "select count(*) from board";

		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Board_dto.setBno(rset.getInt("bno"));

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

		return Board_list;
	}
	
	
	
	public ArrayList<Board_dto> list() {
		ArrayList<Board_dto> Board_list = new ArrayList<Board_dto>();

		DBManager db = new DBManager();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		conn = db.getConnection();
		String sql = "select * from board order by bno desc";

		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Board_dto Board_dto = new Board_dto();
				Board_dto.setBno(rset.getInt("bno"));
				Board_dto.setBname(rset.getString("bname"));
				Board_dto.setBpass(rset.getString("bpass"));
				Board_dto.setTitle(rset.getString("btitle"));
				Board_dto.setBcontent(rset.getString("bcontent"));
				Board_dto.setBdate(rset.getString("bdate"));
				Board_dto.setBhit(rset.getInt("bhit"));
				Board_dto.setBip(rset.getString("bip"));

				Board_list.add(Board_dto);
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

		return Board_list;
	}

	public int insert(Board_dto input_dto) {
		int result_int = -1;

		DBManager db = new DBManager();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		conn = db.getConnection();
		String sql = "insert into board (bname, bpass, btitle, bcontent,bip) values (?,?,?,?,?)";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, input_dto.getBname());
			pstmt.setString(2, input_dto.getBpass());
			pstmt.setString(3, input_dto.getTitle());
			pstmt.setString(4, input_dto.getBcontent());
			pstmt.setString(5, InetAddress.getLocalHost().getHostAddress());

			if (pstmt.executeUpdate() > 0) {
				result_int = 1;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
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

	public Board_dto select(Board_dto input_dto) {
		Board_dto output_dto = new Board_dto();

		DBManager db = new DBManager();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		conn = db.getConnection();
		String sql = "select * from board where bno = ?;";

		try {

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, input_dto.getBno());
			rset = pstmt.executeQuery();

			if (rset.next()) {
				output_dto = new Board_dto(rset.getInt("bno"), rset.getString("bname"), rset.getString("bpass"),
						rset.getString("btitle"), rset.getString("bcontent"), rset.getString("bdate"),
						rset.getInt("bhit"), rset.getString("bip"));
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

		return output_dto;
	}

	public int update_hit(Board_dto input_dto) {
		int result_int = -1;

		DBManager db = new DBManager();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		conn = db.getConnection();
		String sql = "update board set bhit=bhit+1 where bno=? ";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, input_dto.getBno());

			if (pstmt.executeUpdate() > 0) {
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

	public int update(Board_dto input_dto) {
		int result_int = -1;

		DBManager db = new DBManager();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		conn = db.getConnection();
		String sql = "update board set btitle = ?, bcontent = ? where bno = ? and bpass = ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, input_dto.getTitle());
			pstmt.setString(2, input_dto.getBcontent());
			pstmt.setInt(3, input_dto.getBno());
			pstmt.setString(4, input_dto.getBpass());

			if (pstmt.executeUpdate() > 0) {
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
	
	Board_dto jinwoo() {
		Board_dto dto = new Board_dto();
		return dto;
	}

	public int delete(Board_dto input_dto) {
		int result_int = -1;

		DBManager db = new DBManager();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		conn = db.getConnection();
		String sql = "delete from board where bno=? and bpass=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, input_dto.getBno());
			pstmt.setString(2, input_dto.getBpass());

			if (pstmt.executeUpdate() > 0) {
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

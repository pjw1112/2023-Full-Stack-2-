package com.company.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.company.dbmanager.DBManager;
import com.company.dto.ImgDto;

public class ImgDao {
	
	
	public ArrayList<ImgDto> list() {
		ArrayList<ImgDto> img_list = new ArrayList<ImgDto>();

		DBManager db = new DBManager();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		conn = db.getConnection();
		String sql = "select * from img_board order by ino desc limit 5";

		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				ImgDto ImgDto = new ImgDto();
				ImgDto.setIno(rset.getInt("ino"));
				ImgDto.setName(rset.getString("name"));
				ImgDto.setPrice(rset.getInt("price"));
				ImgDto.setDescription(rset.getString("description"));
				ImgDto.setImg(rset.getString("img"));
				img_list.add(ImgDto);
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

		return img_list;
	}

	public int insert(ImgDto input_dto) {
		int result_int = -1;

		DBManager db = new DBManager();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		conn = db.getConnection();
		String sql = "insert into img_board (name, price, description, img) values (?,?,?,?)";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, input_dto.getName());
			pstmt.setInt(2, input_dto.getPrice());
			pstmt.setString(3, input_dto.getDescription());
			pstmt.setString(4, input_dto.getImg());

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

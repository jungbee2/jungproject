package team.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import oracle.db.DbConnect;

public class TeamDao {

	DbConnect db=new DbConnect();


	//insert
	public void insertTeam(TeamDto dto)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;

		String sql="insert into team values (seq_1.nextval,?,?,?,sysdate)";

		try {
			pstmt=conn.prepareStatement(sql);

			//바인딩 3개
			pstmt.setString(1, dto.getMyname());
			pstmt.setString(2, dto.getDriver());
			pstmt.setString(3, dto.getHp());

			//실행
			pstmt.execute();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}

	}

	//출력
	public ArrayList<TeamDto> getAllTeamDatas()
	{

		ArrayList<TeamDto> list=new ArrayList<>();

		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;

		String sql="select * from team order by num";

		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();

			//while
			while(rs.next())
			{
				TeamDto dto=new TeamDto();

				dto.setNum(rs.getString("num"));
				dto.setMyname(rs.getString("name"));
				dto.setDriver(rs.getString("driver"));
				dto.setHp(rs.getString("hp"));
				dto.setWriteday(rs.getTimestamp("writeday"));

				//list에추가
				list.add(dto);
			}



		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}



		return list;

	}


	//num에의한 하나의 dto
	public TeamDto getData(String num)
	{
		TeamDto dto=new TeamDto();

		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;

		String sql="select * from team where num=?";

		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs=pstmt.executeQuery();

			if(rs.next())
			{
				dto.setNum(rs.getString("num"));
				dto.setMyname(rs.getString("name"));
				dto.setDriver(rs.getString("driver"));
				dto.setHp(rs.getString("hp"));
				dto.setWriteday(rs.getTimestamp("writeday"));
			}



		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}


		return dto;
	}


	//update
	public void updateTeam(TeamDto dto)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;

		String sql="update team set name=?,driver=?,hp=? where num=?";

		try {
			pstmt=conn.prepareStatement(sql);

			//바인딩
			pstmt.setString(1, dto.getMyname());
			pstmt.setString(2, dto.getDriver());
			pstmt.setString(3, dto.getHp());
			pstmt.setString(4, dto.getNum());

			pstmt.execute();


		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}

	}

	//delete

	public void deleteTeam(String num)

	{

		Connection conn = db.getConnection();
		PreparedStatement pstmt=null;

		String sql="delete from team where num=?";

		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.execute();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}

	}

}

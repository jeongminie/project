package test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jeongmini.project.common.MysqlService;

@WebServlet("/db/test2")
public class DatabaseQueryTest extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		MysqlService mysqlService = MysqlService.getInstance(); //DB연결을 위한 객체 생성
		mysqlService.connection(); //DB 연결
		
		//insert 쿼리
		String insertQuery = "INSERT INTO db.user"
				+ "(userId, password, phone, name, birth, email)"
				+ "VALUE ('test', 'test', 'test', 'test', 'test', 'test')";
		
		try {
			int count = mysqlService.update(insertQuery);
			System.out.println("인서트 성공 수 : " + count);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String selectQuery = "SELECT * FROM db.user";
		
		PrintWriter out = response.getWriter();
		ResultSet resultSet;
		
		try {
			resultSet = mysqlService.select(selectQuery);
			while(resultSet.next()) {
				out.println(resultSet.getInt("id"));
                out.println(resultSet.getString("userId"));
                out.println(resultSet.getString("phone"));
                out.println(resultSet.getString("name"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			mysqlService.disconnect();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}

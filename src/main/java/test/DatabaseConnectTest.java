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

@WebServlet("/db/test")
public class DatabaseConnectTest extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/plain");
        response.setCharacterEncoding("utf-8");

        MysqlService mysqlService = MysqlService.getInstance(); // DB 연결을 위한 객체 생성(싱글턴이라 한개만 생성됨)
        mysqlService.connection(); // DB 연결

        //-- 쿼리 수행
        // select
        String selectQuery = "select * from db.user";

        PrintWriter out = response.getWriter();
        ResultSet resultSet;
        try {
            resultSet = mysqlService.select(selectQuery);
            while (resultSet.next()) {  // 결과 행이 있는 동안 수행
                out.println(resultSet.getInt("id"));
                out.println(resultSet.getString("userId"));
                out.println(resultSet.getString("phone"));
                out.println(resultSet.getString("name"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        //-- 쿼리 끝

        try {
			mysqlService.disconnect();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
}
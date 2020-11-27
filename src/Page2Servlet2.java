

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Page1Servlet
 */
@WebServlet("/page2-2")
public class Page2Servlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Page2Servlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		final String driverName = "oracle.jdbc.driver.OracleDriver";
		final String url = "jdbc:oracle:thin:@192.168.54.226:1521/orcl";
		final String id = "OUBO";
		final String pass = "TOUSEN";
		
		String sEname = request.getParameter("email");
		String sNumA1 = request.getParameter("numa1");
		String sNumB1 = request.getParameter("numb1");
		String sNumA2 = request.getParameter("numa2");
		String sNumB2 = request.getParameter("numb2");
		String sNumA3 = request.getParameter("numa3");
		String sNumB3 = request.getParameter("numb3");
		String sNumA4 = request.getParameter("numa4");
		String sNumB4 = request.getParameter("numb4");
		String sNumA5 = request.getParameter("numa5");
		String sNumB5 = request.getParameter("numb5");

		try {
			Class.forName(driverName);
			Connection connection=DriverManager.getConnection(url,id,pass);
			
			
			
			
			PreparedStatement rt = 
					connection.prepareStatement(
							"select NUMA,NUMB from OUBO where NUMA=? and NUMB=?"
						);
			rt.setString(1, sNumA1);
			rt.setString(2, sNumB1);
			
			ResultSet ss = rt.executeQuery();
			
			
			PreparedStatement tt = 
					connection.prepareStatement(
							"select NUMA,NUMB from OUBO where NUMA=? and NUMB=?"
						);
			tt.setString(1, sNumA2);
			tt.setString(2, sNumB2);
			
			ResultSet fs = tt.executeQuery();
			
			
			PreparedStatement yt = 
					connection.prepareStatement(
							"select NUMA,NUMB from OUBO where NUMA=? and NUMB=?"
						);
			yt.setString(1, sNumA3);
			yt.setString(2, sNumB3);
			
			ResultSet gs = yt.executeQuery();
			
			
			PreparedStatement ut = 
					connection.prepareStatement(
							"select NUMA,NUMB from OUBO where NUMA=? and NUMB=?"
						);
			ut.setString(1, sNumA4);
			ut.setString(2, sNumB4);
			
			ResultSet hs = ut.executeQuery();
			
			PreparedStatement it = 
					connection.prepareStatement(
							"select NUMA,NUMB from OUBO where NUMA=? and NUMB=?"
						);
			it.setString(1, sNumA5);
			it.setString(2, sNumB5);
			
			ResultSet ks = rt.executeQuery();
			if(ss.next()==true||fs.next()==true||gs.next()==true||hs.next()==true||ks.next()==true) {
				System.out.println("èdï°");
				RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/JSP/page2.5.jsp");
				rd.forward(request, response);
			}
			
			
			
			
			else {
			
			PreparedStatement st = 
					connection.prepareStatement(
							"Insert into OUBO Values(?,?,?)"
						);
			st.setString(1, sEname);
			st.setString(2, sNumA1);
			st.setString(3, sNumB1);
			
			st.executeUpdate();
			
			PreparedStatement dt = 
					connection.prepareStatement(
							"Insert into OUBO Values(?,?,?)"
						);
			dt.setString(1, sEname);
			dt.setString(2, sNumA2);
			dt.setString(3, sNumB2);
			
			dt.executeUpdate();
			
			PreparedStatement ft = 
					connection.prepareStatement(
							"Insert into OUBO Values(?,?,?)"
						);
			ft.setString(1, sEname);
			ft.setString(2, sNumA3);
			ft.setString(3, sNumB3);
			
			ft.executeUpdate();
			
			PreparedStatement gt = 
					connection.prepareStatement(
							"Insert into OUBO Values(?,?,?)"
						);
			gt.setString(1, sEname);
			gt.setString(2, sNumA4);
			gt.setString(3, sNumB4);
			
			gt.executeUpdate();
			
			PreparedStatement ht = 
					connection.prepareStatement(
							"Insert into OUBO Values(?,?,?)"
						);
			gt.setString(1, sEname);
			gt.setString(2, sNumA5);
			gt.setString(3, sNumB5);
			
			gt.executeUpdate();
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/JSP/page2.jsp");
			rd.forward(request, response);
			}
		}catch(SQLException e) {
			System.out.println("SQLException");
			response.getWriter().println("SQLException");
			e.printStackTrace();
			e.printStackTrace(response.getWriter());
		} catch (ClassNotFoundException e) {
			System.out.println("ClassNotFoundException");
			response.getWriter().println("ClassNotFoundException");
			e.printStackTrace();
			e.printStackTrace(response.getWriter());
		}
	}

}

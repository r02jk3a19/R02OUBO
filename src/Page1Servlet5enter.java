

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.text.ParseException;

/**
 * Servlet implementation class Page1Servlet
 */
@WebServlet("/page1-5en")
public class Page1Servlet5enter extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	final String driverName = "oracle.jdbc.driver.OracleDriver";
	final String url = "jdbc:oracle:thin:@192.168.54.226:1521/orcl";
	final String id = "OUBO";
	final String pass = "TOUSEN";
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Page1Servlet5enter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String kigenb;
		try {
			
			Class.forName(driverName);
			Connection connection=DriverManager.getConnection(url,id,pass);
			
			PreparedStatement st = 
					connection.prepareStatement(
						"SELECT KIGEN FROM KIGEN"
						);
			ResultSet rs = st.executeQuery();
			rs.next();
			
			kigenb=rs.getString("KIGEN");
			
			Date kigen =new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(kigenb);
			
			
			Date date =new Date();
			
			long dateTime1=kigen.getTime();
			long dateTime2=date.getTime();
			long dayDiff=(dateTime1-dateTime2)/(1000*60*60*24);
		
				request.setAttribute("day",dayDiff);
			
				RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/JSP/page1-2.jsp");
				rd.forward(request, response);
			
		
		}catch(SQLException e){System.out.println(e);}
	catch(ClassNotFoundException e){System.out.println(e);}
	catch(ParseException e){System.out.println(e);}
		
		
	}

}

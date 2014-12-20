import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
@WebServlet("/Delete1")
public class Delete1 extends HttpServlet {
       
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String email=request.getParameter("umail");
		try
		{
			
				
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project", "project");
			PreparedStatement pst=null;
			String sql="delete from PRODUCT where PROD_ID='"+email+"'";
			pst=con.prepareStatement(sql);
			int x=pst.executeUpdate();
			if(x>0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("welcomea.jsp");
				rd.forward(request, response);
				System.out.println("dfg");
			
			}
			else
			{
				RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
				rd.forward(request, response);
				System.out.println("query not ok");
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
			RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
			rd.forward(request, response);
			System.out.println("exception");
			
		}
	}

}

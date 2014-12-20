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
import java.util.Random;
@WebServlet("/Order_Entry")
public class Order_Entry extends HttpServlet {
       
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		Random rand = new Random();	
		String email=(String)request.getParameter("uemail");
		String quantity=request.getParameter("quantitySelector");
		String itemid=Integer.toString(rand.nextInt(10000) + 100);
		String orderid=(String)request.getParameter("uorderid");
		
		String skuid=(String)request.getParameter("uskuid");
	
		String state="Pending";
		int tot=0;
		try
		{
			int qty=Integer.parseInt(request.getParameter("quantitySelector"));
			int price=(Integer.parseInt(request.getParameter("uprice")));
			tot=0;
			System.out.println(" "+orderid+" "+price+" "+skuid+" "+itemid+" "+qty);
			System.out.println(tot);
			//int age=Integer.parseInt(request.getParameter("uage"));
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","project", "project");
			PreparedStatement pst=null;
			String sql1="insert into Item values(?,?,?,?,?)";
			pst=con.prepareStatement(sql1);
			pst.setString(1,itemid);
			pst.setString(2, skuid);
			pst.setInt(3,qty);
			pst.setInt(4,price);
			pst.setString(5,orderid);
			int y=pst.executeUpdate();
			if(y>0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("cart.jsp");
				rd.forward(request, response);
			
			}
			else
			{
				System.out.println("This is inside Exception");
				RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
				rd.forward(request, response);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
			RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
			rd.forward(request, response);
			
		}
	}

}

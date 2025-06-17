package Airlines.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Airlines.FactoryProvider;
import Airlines.Dao.UserDao;
import Airlines.entites.User;

/**
 * Servlet implementation class login_servlet
 */
@WebServlet("/login_servlet")
public class login_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		try {
			PrintWriter out = response.getWriter();
			String email = request.getParameter("email");
			String password = request.getParameter("password");

			//validation panding

			//authenticating user
			UserDao userdao =new UserDao(FactoryProvider.getFactory());
			User user=userdao.getUserByEmailAndPassword(email, password);
			//System.out.println(user);
			HttpSession session = request.getSession();


			if(user==null)
			{
				//out.println("Invalid details");
				session.setAttribute("message", "Invalid details !! Try with Another One");
				response.sendRedirect("login_page.jsp");

			}
			else {
				//System.out.println("WEllCOME"+user.getFname());
				session.setAttribute("message", "Login Successfully");
				//login

				session.setAttribute("fname", user.getFname());
				session.setAttribute("lname", user.getLname());
				session.setAttribute("current-user", user);

				if(user.getUser_type().equals("admin"))
				{
				response.sendRedirect("Admin.jsp");
				}
				else if(user.getUser_type().equals("normal"))
				{
					response.sendRedirect("index.jsp");
				}
				else {
					out.println("We have not identified user type");
				}
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}

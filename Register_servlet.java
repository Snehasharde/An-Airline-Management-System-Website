package Airlines.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import Airlines.FactoryProvider;
import Airlines.entites.User;


@WebServlet(name="Register_servlet", urlPatterns="/Register_servlet")
public class Register_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		try {
		 String fname = request.getParameter("first-name");
		 String lname = request.getParameter("last-name");
		 String email = request.getParameter("email");
		 String password = request.getParameter("password");
		 String phone = request.getParameter("phone");
		 String language = request.getParameter("language");
		 String dob = request.getParameter("dob");
		 String country = request.getParameter("country");

		 System.out.println(phone);
		 if(fname.isEmpty())
		 {
			 out.println("name is empty");
			 return;
		 }

		//long number = Integer.parseInt(phone);
		 System.out.println(email);

		 User user = new User(email,fname,lname,password,phone,country,language, dob,11,"normal");

		 try {
		Session hibernateSession =FactoryProvider.getFactory().openSession();

		  Transaction tx=  hibernateSession.beginTransaction();

		  hibernateSession.save(user);
		  tx.commit();
		  hibernateSession.close();
		 // out.println("Registerd"+id);
		 }
		 catch(Exception e)
		 {
			 System.out.println("Eroor 1 :"+e);
		 }

		 HttpSession httpsession = request.getSession();
		 httpsession.setAttribute("userfname", fname);
		 httpsession.setAttribute("userlname", lname);
		 httpsession.setAttribute("message", "Registration Successful !!"+fname+" "+lname);
		 response.sendRedirect("index.jsp");


		}
		catch(Exception e)
		{
			System.out.println("Error :"+e);
		}
	}

}

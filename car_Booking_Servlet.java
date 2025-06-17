package Airlines.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import Airlines.FactoryProvider;
import Airlines.email.Flight_Booked_email;
import Airlines.entites.car_Booking;

@WebServlet("/car_Booking_Servlet")
public class car_Booking_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String gender = request.getParameter("gender");
		String fname = request.getParameter("first-name");
		String lname= request.getParameter("last-name");
		String email = request.getParameter("email");
		String nationality = request.getParameter("nationality");
		String phone = request.getParameter("phone");
		String dob = request.getParameter("dob");
		String code = request.getParameter("code");

		try {
		car_Booking cd = new car_Booking(gender,fname,lname,email,nationality,phone,dob,code);

		 Session hibernateSession =FactoryProvider.getFactory().openSession();
		  Transaction tx=  hibernateSession.beginTransaction();
		  hibernateSession.save(cd);

		//semd email to booked our tickect


		  String message="Thanks"+fname+" "+lname+" for Booking the Car.I Wish You Enjoy Your Jernoury";
	        String subject ="FlightFlow : Car Booked";
	        String to=email;
	        String from ="snehasharde9@gmail.com";

	      Flight_Booked_email e = new Flight_Booked_email();
	       boolean b=e.sendEmail(message, subject, to, from);

		 //email code emd
		  
		  tx.commit();
		  hibernateSession.close();

		 response.sendRedirect("car-listing.jsp");
	 }
	 catch(Exception e)
	 {
		 System.out.println(e);
	 }
	}

}

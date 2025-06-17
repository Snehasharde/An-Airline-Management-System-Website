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
import Airlines.entites.Flight_Bookings;


@WebServlet("/Flight_Booking_Servlet")
public class Flight_Booking_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 try {

			 String fname= req.getParameter("fname");
			 String lname= req.getParameter("lname");
			 String email= req.getParameter("email");
			 String gender = req.getParameter("gender");
			 String phone = req.getParameter("phone");
			 String nationality =req.getParameter("nationality");
			 String dob =req.getParameter("dob");
			 String postal_code= req.getParameter("postal_code");
			 String flight_number=req.getParameter("flight_number");

			 Flight_Bookings fb = new Flight_Bookings(fname, lname, email, gender, phone, dob, nationality, postal_code, flight_number);

			 Session hibernateSession =FactoryProvider.getFactory().openSession();
			  Transaction tx=  hibernateSession.beginTransaction();
			  hibernateSession.save(fb);
			//semd email to booked our tickect


			  String message="Dear "+fname+" "+lname+"Thank you for booking your flight with\r\n"
			  		+ " FlightFlow. We are pleased to confirm your booking and\r wish you a pleasant and safe journey.If you have any questions or need assistance,feel free to contact our support team. Warm regards, FlightFlow Team \n ";
			  
		        String subject ="FlightFlow : Flight Booked";
		        String to=email;
		        String from ="snehasharde9@gmail.com";

		      Flight_Booked_email e = new Flight_Booked_email();
		       boolean b=e.sendEmail(message, subject, to, from);

			 //email code emd
			  tx.commit();
			  hibernateSession.close();

			 resp.sendRedirect("flight-listing.jsp");
		 }
		 catch(Exception e)
		 {
			 System.out.println(e);
		 }
	}




}

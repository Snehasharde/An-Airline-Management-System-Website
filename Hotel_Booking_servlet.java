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
import Airlines.entites.Hotel_Booking;


@WebServlet("/Hotel_Booking_servlet")
public class Hotel_Booking_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			String fname = request.getParameter("first-name");
			String lname = request.getParameter("last-name");
			String email = request.getParameter("email");
			String nationality = request.getParameter("nationality");
			String number = request.getParameter("phone");

			Hotel_Booking hb = new Hotel_Booking(email,fname,lname,nationality,number);

			 Session hibernateSession =FactoryProvider.getFactory().openSession();
			  Transaction tx=  hibernateSession.beginTransaction();
			  hibernateSession.save(hb);
			  
			//semd email to booked our tickect


			  String message="Thanks"+fname+" "+lname+" for Booking the Hotel.I Wish You Enjoy Your Jernoury";
		        String subject ="FlightFlow : Hotel Booked";
		        String to=email;
		        String from ="snehasharde9@gmail.com";

		      Flight_Booked_email e = new Flight_Booked_email();
		       boolean b=e.sendEmail(message, subject, to, from);

			 //email code emd
			  
			  tx.commit();
			  hibernateSession.close();

			 response.sendRedirect("hotel-listing.jsp");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}

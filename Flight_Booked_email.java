package Airlines.email;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Flight_Booked_email {


	public boolean sendEmail(String message,String subject,String to,String from)
	{
		boolean flag =false;

		//logic
		//smtp properties
		Properties properties = new Properties();
       properties.put("mail.smtp.host", "smtp.gmail.com");
       properties.put("mail.smtp.port", "587");
       properties.put("mail.smtp.starttls.enable","true");
       properties.put("mail.smtp.auth", "true");


      final String user = "snehasharde9@gmail.com";
      final String password="pgds vczm ymzh gplc";
       //step 1: to get the session object..
       Session session = Session.getInstance(properties, new Authenticator(){

		@Override
		protected PasswordAuthentication getPasswordAuthentication() {

			return new PasswordAuthentication(user,password);
		}
       });

       session.setDebug(true);
       //step 2:compose the message [text,multi meadia]

       try {

       MimeMessage mess = new MimeMessage(session);
       mess.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
        mess.setFrom(new InternetAddress(from));
        mess.setSubject(subject);
        mess.setText(message);

        Transport.send(mess);
        System.out.println("login successfully");
        flag =true;
       }
       catch(Exception e)
       {
    	   e.printStackTrace();
    	//System.out.println(e);
       }
	return flag;
	}
}

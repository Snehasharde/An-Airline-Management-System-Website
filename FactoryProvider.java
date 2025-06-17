package Airlines;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class FactoryProvider {

 private static SessionFactory factory;

	 public static SessionFactory getFactory()
	 {
		  try {

			if(factory == null)
			{
				//factory = new Configuration().configure("hiber.cfg.xml").buildSessionFactory();
				Configuration cfg= new Configuration();
		        cfg.configure("hiber.cfg.xml");
		         factory = cfg.buildSessionFactory();


			}
		 }
		 catch(Exception e)
		 {
		    System.out.println(e);
		 }
		 return factory;
	 }
}

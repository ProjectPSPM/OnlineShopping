package util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

	private static SessionFactory sessionFactory;
	private static Session session = null;

	static {
		// this block is called only one time when JVM loads it
		sessionFactory = new Configuration().configure().buildSessionFactory();
	}

	public static Session getSession() {
		// we can create multiple sessions for each request
		closeSession();
		session = sessionFactory.openSession();
		return session;
	}

	// closes current session
	public static void closeSession() {
		if (session != null)
			session.close();
	}
}

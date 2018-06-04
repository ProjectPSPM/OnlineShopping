import java.io.FileInputStream;
import java.io.ObjectInputStream;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import model.Person;
import model.UserDetail;
import util.HibernateUtil;

public class HibernatTest {
	private static ObjectInputStream objectInputStream;

	public static void main(String[] args) {

		SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
//		Session session = HibernateUtil.getSession();
//		session.beginTransaction();

        // UPDATED: Create CriteriaBuilder
        CriteriaBuilder builder = session.getCriteriaBuilder();

        // UPDATED: Create CriteriaQuery
        CriteriaQuery<UserDetail> criteria = builder.createQuery(UserDetail.class);

        // UPDATED: Specify criteria root
        criteria.from(UserDetail.class);

        // UPDATED: Execute query
        List<UserDetail> userList = session.createQuery(criteria).getResultList();
        
        for(UserDetail user : userList) {
        	System.out.println(user.getUserName() + " " + user.getUserEmail());
        }
        
        
//		UserDetail person = new UserDetail();
//		person.setId(1);
//		person.setUserName("Pushpendra Singh");
//		session.save(person);
//		session.getTransaction().commit();
//		
//		HibernateUtil.closeSession();
		session.close();
		
//		String file = "person.ser";
//		try {
//			FileInputStream fileInputStream = new FileInputStream(file);
//			objectInputStream = new ObjectInputStream(fileInputStream);
//			Person p1 = (Person) objectInputStream.readObject();
//
//			System.out.println("Deserialized Data");
//			System.out.println(p1.name + " : " + p1.num);
//			System.out.println("Deserialized Data");
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
	}
}

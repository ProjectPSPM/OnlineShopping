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


		System.out.println("Hi checking commit");
	}
}

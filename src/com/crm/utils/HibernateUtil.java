package com.crm.utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public final class HibernateUtil {
	private static SessionFactory sessionFactory;
	private static ThreadLocal<Session> session = new ThreadLocal<>();
	private HibernateUtil() {}
	static {
		Configuration configuration = new Configuration();
		configuration.configure();
		ServiceRegistry serviceRegistry=new StandardServiceRegistryBuilder().configure().build();
		sessionFactory = configuration.buildSessionFactory(serviceRegistry);
		
	}
	public static Session getThreadLocalSession() {
		Session s=(Session)session.get();
		if(s==null) {
			s=sessionFactory.openSession();
			session.set(s);
		}
		return s;
	}
	public static void closeSession() {
		Session s=(Session)session.get();
		if(s!=null) {
			s.close();
			session.set(null);
		}
	}
}

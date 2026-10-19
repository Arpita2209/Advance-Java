package com.linkcode.hibernate.manytoone;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;

public class PassangerTrainDAO {
	
	private static EntityManagerFactory factory;
	private static EntityManager manager;
	private static EntityTransaction transaction;
	
	public static void OpenConnection() {
		factory=Persistence.createEntityManagerFactory("Hibernate");
		manager=factory.createEntityManager();
		transaction=manager.getTransaction();
	}
	
	public static void CloseConnection() {
		if(factory!=null) {
			factory.close();
		}
		if(manager!=null) {
			manager.close();
		}
		if(transaction.isActive()) {
			transaction.rollback();
		}
	}
	
	public static void main(String[] args) {
		OpenConnection();
		transaction.begin();
		
		TrainDTO train1=new TrainDTO(1,"Vande Bharat","Pune-Delhi","12:30 pm");
		TrainDTO train2=new TrainDTO(2,"Rajdhani Express","Mumbai-New Delhi","7:30 am");
		manager.persist(train1);
		manager.persist(train2);
		
		PassengerDTO passanger1=new PassengerDTO(1,"pravin",28,"4587695123",train2);
		PassengerDTO passanger2=new PassengerDTO(2,"shubham",25,"5486475645",train2);
		PassengerDTO passanger3=new PassengerDTO(3,"Sagar",32,"452135894",train1);
		PassengerDTO passanger4=new PassengerDTO(4,"suresh",30,"4789561235",train2);
		PassengerDTO passanger5=new PassengerDTO(5,"Ramesh",22,"9856475862",train1);
		manager.persist(passanger1);
		manager.persist(passanger2);
		manager.persist(passanger3);
		manager.persist(passanger4);
		manager.persist(passanger5);
		
		transaction.commit();
		CloseConnection();

	}

}
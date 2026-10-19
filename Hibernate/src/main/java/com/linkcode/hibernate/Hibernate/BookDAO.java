package com.linkcode.hibernate.Hibernate;

import java.util.Scanner;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;

public class BookDAO {
	private static Scanner sc=new Scanner(System.in);
	private static EntityManagerFactory factory;
	private static EntityManager manager;
	private static EntityTransaction transaction;
	
	public static void openConnection() {
		Persistence.createEntityManagerFactory("Hibernate");
		factory.createEntityManager();
		manager.getTransaction();
	}
	
	public static void closeConnection() {
		if(factory!=null) {
			factory.close();
		}
		
		if(manager!=null) {
			manager.close();
		}
		
		if(transaction!=null) {
			manager.close();
		}
	}
	
	
	
	public static void main(String [] args) {
		
		
		boolean flag=true;
		
		while(true) {
			System.out.println("Enter your choice");
			System.out.println("1.add book");
			System.out.println("2.remove book");
			System.out.println("3.update book");
			System.out.println("4.display book");
			int ch=sc.nextInt();

			
			switch(ch) {
			case 1->addBook();
			case 2->removeBook();
			case 3->displayBook();
			case 4->updateBook();
			}
		}
		
//		transaction.begin();
		//1.add book
//		BookDTO book=new BookDTO(1, "Harry potter", "J K Rowling", 500);
//		manager.persist(book);
		
		//2.display book
//		BookDTO Book = manager.find(BookDTO.class, 1);
//		System.out.println(Book);
		
		//3.remove book
//		BookDTO book=manager.find(BookDTO.class, 1);
//		if(book!=null) {
//			manager.remove(book);
//		}else {
//			System.out.println("book not found");
//		}
//		
//		
//		transaction.commit();
//		
//		factory.close();
//		manager.close();
		
	}
	public static BookDTO findBookById() {
		System.out.println("Enter book id");
		int id=sc.nextInt();
		
		BookDTO book=manager.find(BookDTO.class, id);
				return book;
	}
	private static Object updateBook() {
		// TODO Auto-generated method stub
		return null;
	}

	private static void displayBook() {
		openConnection();
		transaction.begin();
		
		BookDTO book=findBookById();
		if(book!=null) {
			System.out.println("book found!");
		}else {
			System.out.println("not found");
		}
		
		transaction.commit();
		closeConnection();
		
	}

	private static void removeBook() {
		openConnection();
		transaction.begin();
		
		BookDTO book=findBookById();
		if(book!=null) {
			manager.remove(book);
			System.out.println("book removed");
			
		}else {
			System.out.println("Book not found");
			
		}
		transaction.commit();
		closeConnection();
	}

	private static void addBook() {
		openConnection();
		transaction.begin();
		
		System.out.println("Enter id: ");
		int id=sc.nextInt();
		System.out.println("Enter book name:");
		String bname=sc.next();
		System.out.println("Enter author:");
		String author=sc.next();
		System.out.println("enter book price:");
		double price=sc.nextDouble();
		BookDTO book=new BookDTO(id,"bname","author",price);
		
		manager.persist(book);
		transaction.commit();
		closeConnection();
		
	}
}

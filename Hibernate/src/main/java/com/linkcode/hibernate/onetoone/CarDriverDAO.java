package com.linkcode.hibernate.onetoone;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;

public class CarDriverDAO {

    private static EntityManagerFactory factory;
    private static EntityManager manager;
    private static EntityTransaction transaction;

    public static void openConnection() {
        factory = Persistence.createEntityManagerFactory("Hibernate");
        manager = factory.createEntityManager();
        transaction = manager.getTransaction();
    }

    public static void closeConnection() {

        if (factory != null) {
            factory.close();
        }

        if (manager != null) {
            manager.close();
        }

        if (transaction.isActive()) {
            transaction.rollback();
        }
    }

    public static void main(String[] args) {

        openConnection();

        transaction.begin();

        DriverDTO driver1 = new DriverDTO(1, "rajesh", "pune", 30);
        DriverDTO driver2 = new DriverDTO(2, "suresh", "mumbai", 29);

        manager.persist(driver1);
        manager.persist(driver2);

        CarDTO car1 = new CarDTO(101, "defender", "black", "1500cc", driver2);
        manager.persist(car1);

        transaction.commit();

        closeConnection();
    }
}
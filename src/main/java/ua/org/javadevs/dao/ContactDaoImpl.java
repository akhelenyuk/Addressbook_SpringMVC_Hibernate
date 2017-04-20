package ua.org.javadevs.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ua.org.javadevs.entity.Contact;

import java.util.List;

@Repository
public class ContactDaoImpl implements ContactDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Contact> getContacts() {
        Session session = sessionFactory.getCurrentSession();
        Query<Contact> contactQuery = session.createQuery("From Contact", Contact.class);
        List<Contact> contacts = contactQuery.getResultList();

        return contacts;
    }

    @Override
    public void saveContact(Contact contact) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(contact);
    }

    @Override
    public Contact getContact(int id) {
        Session session = sessionFactory.getCurrentSession();
        Contact contact = session.get(Contact.class, id);
        return contact;
    }

    @Override
    public void deleteContact(int id) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("Delete From Contact where id=:id");
        query.setParameter("id", id);
        query.executeUpdate();
    }


}

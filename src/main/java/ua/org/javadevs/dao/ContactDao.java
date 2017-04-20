package ua.org.javadevs.dao;

import ua.org.javadevs.entity.Contact;

import java.util.List;

/**
 * Created by okhelenyuk on 12.04.2017.
 */
public interface ContactDao {
    List<Contact> getContacts();

    void saveContact(Contact contact);

    Contact getContact(int id);

    void deleteContact(int id);
}

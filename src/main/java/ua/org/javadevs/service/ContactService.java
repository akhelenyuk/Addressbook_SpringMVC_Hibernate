package ua.org.javadevs.service;

import ua.org.javadevs.entity.Contact;

import java.util.List;

/**
 * Created by okhelenyuk on 12.04.2017.
 */
public interface ContactService {
    List<Contact> getContacts();

    void saveContact(Contact contact);

    Contact getContact(int id);

    void deleteContact(int id);
}

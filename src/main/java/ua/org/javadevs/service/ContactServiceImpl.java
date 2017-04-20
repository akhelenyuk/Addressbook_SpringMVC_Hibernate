package ua.org.javadevs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ua.org.javadevs.dao.ContactDao;
import ua.org.javadevs.entity.Contact;

import java.util.List;

@Service
public class ContactServiceImpl implements ContactService {
    @Autowired
    private ContactDao contactDao;

    @Override
    @Transactional // не нужно begin и commit
    public List<Contact> getContacts() {
        return contactDao.getContacts();
    }

    @Override
    @Transactional // не нужно begin и commit
    public void saveContact(Contact contact) {
        contactDao.saveContact(contact);
    }

    @Override
    @Transactional // не нужно begin и commit
    public Contact getContact(int id) {
        return contactDao.getContact(id);
    }

    @Override
    @Transactional // не нужно begin и commit
    public void deleteContact(int id) {
        contactDao.deleteContact(id);
    }
}

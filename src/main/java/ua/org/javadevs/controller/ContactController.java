package ua.org.javadevs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ua.org.javadevs.entity.Contact;
import ua.org.javadevs.service.ContactService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller

public class ContactController {
    @Autowired
    private ContactService contactService;

    @GetMapping("/add")
    public String getAddContactPage(Model model){
        Contact contact = new Contact();
        model.addAttribute("contact", contact);
        return "addContact";
    }

    @PostMapping("save")
    public String saveContact(@ModelAttribute("contact") Contact contact){
        contactService.saveContact(contact);
        return "redirect:/all";
    }

    @RequestMapping("/all")
    public String getAllContacts(Model model){
        List<Contact> contacts = contactService.getContacts();
        model.addAttribute("contacts", contacts);
        return "allContacts";
    }

    @PostMapping(value = "/menu", params = "edit")
    public String editContact(@RequestParam("contactId") int id, Model model){
        Contact contact = contactService.getContact(id);
        model.addAttribute("contact", contact);
        return "addContact";
    }

    @PostMapping(value = "/menu", params = "delete")
    public String deleteContact(@RequestParam("contactId") List<Integer> ids){
        for (int id: ids) {
            contactService.deleteContact(id);
        }
        return "redirect:/all";
    }
}

package com.relationships.contollers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.relationships.models.UserLogin;
import com.relationships.services.ItemService;

@Controller
public class Homepage {

    @Autowired
    private ItemService itemServ;

    @GetMapping("/")
    public String index(Model model, HttpSession session, RedirectAttributes redirect) {
        model.addAttribute("newLogin", new UserLogin());
        model.addAttribute("homePage", "home");
        model.addAttribute("allItems", itemServ.getAllItems());

        model.addAttribute("userLogged", session.getAttribute("userName"));
        session.setAttribute("allPosts", itemServ.getAllItems());
        
        model.addAttribute("allPosts", session.getAttribute("allPosts"));

        return "Index.jsp";
    }
}
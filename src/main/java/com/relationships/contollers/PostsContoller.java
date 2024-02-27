package com.relationships.contollers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.relationships.services.ItemService;

@Controller
public class PostsContoller {

    @Autowired
    private ItemService itemServ;

    @GetMapping("/posts")
    public String todoList(Model model, RedirectAttributes flashMesseging, HttpSession session,
            RedirectAttributes redirect) {

        if (session.getAttribute("userName") == null) {
            redirect.addFlashAttribute("permisstionFailed", "User must login to see Posts page.");
            return "redirect:/";
        }

        model.addAttribute("allPosts", itemServ.getAllItems());

        model.addAttribute("userLogged", session.getAttribute("userName"));

        return "Posts.jsp";
    }

    // @GetMapping("delete-post/{id}")
    // public String getMethodName(@PathVariable(value = "id") int id) {

    //     System.out.println(id);
    //     postServ.deleteById(id);

    //     return "redirect:/posts";
    // }
}

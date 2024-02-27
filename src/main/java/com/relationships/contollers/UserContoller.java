package com.relationships.contollers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.relationships.models.User;
import com.relationships.models.UserLogin;
import com.relationships.repositories.UserRepository;
import com.relationships.services.UserService;



@Controller
public class UserContoller {

    @Autowired
    private UserService userServ;

    @Autowired
    private UserRepository userRepo;

    @GetMapping("/login")
    public String login(Model model, HttpSession session, RedirectAttributes redirect) {
        model.addAttribute("newLogin", new UserLogin());

        return "Login.jsp";
    }

    @PostMapping("/login")
    public String login(@Valid @ModelAttribute("newLogin") UserLogin newLogin, BindingResult result,
            HttpSession session,
            Model model, RedirectAttributes redirect) {

        if (result.hasErrors()) {
            return "Login.jsp";
        }

        User newLogger = userServ.login(newLogin, result);
        if (newLogger == null) {
            model.addAttribute("newUser", new User());
            redirect.addFlashAttribute("invalidCredentials", "Invalid Credentials, Please try again");
            return "redirect:/login";
        }
        session.setAttribute("userName", newLogger.getUserName());
        return "redirect:/posts";
    }

    @GetMapping("/register")
    public String register(Model model) {
        model.addAttribute("newUser", new User());
        return "Register.jsp";
    }

    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User user, BindingResult result, HttpSession session,
            Model model, RedirectAttributes redirect) {

        if (userServ.findByEmail(user.getEmail())) {
            redirect.addFlashAttribute("emailUsed", "Email is already used!");
            return "redirect:/";
        }

        User newUser = userServ.register(user, result);

        if (newUser == null) {
            model.addAttribute("newLogin", new UserLogin());
            return "Register.jsp";
        }
        session.setAttribute("userName", user.getUserName());
        return "redirect:/posts";
    }

    @GetMapping("/users")
    public String allUsers(Model model, HttpSession session, RedirectAttributes redirect) {

        if (session.getAttribute("userName") == null) {
            redirect.addFlashAttribute("permisstionFailed", "User must login to see User's page.");
            return "redirect:/";
        }

        model.addAttribute("allUsers", userRepo.findAll());
        model.addAttribute("userLogged", session.getAttribute("userName"));
        

        return "Users.jsp";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("userName");
        return "redirect:/";
    }
}

package com.relationships.contollers;

import java.io.IOException;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.relationships.models.Items;
import com.relationships.models.UserLogin;
import com.relationships.services.ItemService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class ItemsContoller {

    @Autowired
    private ItemService itemServ;

    @GetMapping("/new-item")
    public String newItem(Model model) {
        model.addAttribute("newItem", new Items());
        model.addAttribute("newLogin", new UserLogin());
        return "NewItem.jsp";
    }

    @PostMapping("/new-item")
    public String submitForm(@Valid @ModelAttribute("newItem") Items newItem,
            BindingResult result,
            @RequestParam("image") MultipartFile file,
            RedirectAttributes redirectAttributes, Model model, HttpSession session) throws IOException {

        if (!result.hasErrors() && !file.isEmpty()) {
            try {
                byte[] imageBytes = file.getBytes();
                newItem.setImage(imageBytes);
            } catch (IOException e) {
                result.rejectValue("image", "error.converting.image", "Error converting image");
            }
            return "redirect:/new-item";
        }
        newItem.setImage(file.getBytes());
        itemServ.saveItem(newItem);
        redirectAttributes.addFlashAttribute("success", "Item created successfully");
        return "redirect:/";
    }

    @GetMapping("/view{id}")
    public String getMethodName(@PathVariable("id") Long id, Model model, HttpSession session) {

        model.addAttribute("newItem", new Items());
        model.addAttribute("newLogin", new UserLogin());
        model.addAttribute("userLogged", session.getAttribute("userName"));

        model.addAttribute("foundPost", itemServ.findById(id));

        return "ViewItem.jsp";
    }
}
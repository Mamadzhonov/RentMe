package com.relationships.services;

import java.util.List;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import com.relationships.models.User;
import com.relationships.models.UserLogin;
import com.relationships.repositories.UserRepository;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepo;

    public User register(User user, BindingResult result) {
        if (!(user.getConfirmPW().equals(user.getPassword()))) {
            result.rejectValue("confirmPW", null, "Passwords do not match");
        }

        if (result.hasErrors()) {
            return null;
        }

        String hashPass = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
        user.setPassword(hashPass);
        return userRepo.save(user);
    }

    public Boolean findByEmail(String email) {
        List<User> opt = userRepo.findAllByEmail(email);
        if (opt.size() > 0) {
            return true;
        }
        return false;
    }

    public User login(UserLogin l, BindingResult result) {
        Optional<User> loggingUser = userRepo.findByEmail(l.getEmail());
        if (loggingUser.isEmpty() || !BCrypt.checkpw(l.getPassword(), loggingUser.get().getPassword())) {
            return null;
        }
        return loggingUser.get();

    }

    public User findById(Long id) {
        Optional<User> optUser = userRepo.findById(id);
        if (optUser.isPresent()) {
            return optUser.get();
        }
        return null;
    }
}

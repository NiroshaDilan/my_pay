package com.example.mypay.resource;

import com.example.mypay.exception.CustomErrorType;
import com.example.mypay.model.User;
import com.example.mypay.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.util.List;

@RestController
@RequestMapping("api")
public class UserRestApiController {

    private static final Logger LOGGER = LoggerFactory.getLogger(UserRestApiController.class);

    private UserService userService;

    public UserRestApiController(UserService userService) {
        this.userService = userService;
    }

//    -------------------- Retrieve All Users --------------------

    @GetMapping("/users")
    public ResponseEntity<List<User>> listAllUsers() {
        List<User> users = userService.findAllUsers();
        if(users.isEmpty()) {
            LOGGER.info("Empty User ........................");
            return new ResponseEntity(HttpStatus.NO_CONTENT);
        }
        LOGGER.info("User returned ........................");
        return new ResponseEntity(users, HttpStatus.OK);
    }

//    --------------------- Retrieve Single User --------------------
    @GetMapping("/user/{id}")
    public ResponseEntity<User> getUser(@PathVariable("id") int id) {
        LOGGER.info("Fetching User with id {}............ ", id);
        User user = userService.findById(id);
        if (user == null) {
            LOGGER.error("User with id {} not found.......", id);
            return new ResponseEntity(new CustomErrorType("User with id " + id
            + " not found"), HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity(user, HttpStatus.OK);
    }

//    ---------------------- Create User -----------------------------

    @PostMapping("/user/")
    public ResponseEntity<User> createUser(@RequestBody User user, UriComponentsBuilder ucBuilder) {
        LOGGER.info("Creating User : {} " + user);
        if (userService.isUserExist(user)) {
            LOGGER.error("Unable to create. A User with name {} already exist ", user.getEmail());
            return new ResponseEntity(new CustomErrorType("Unable to create. A user with name " +
                user.getEmail() + " already exist. "), HttpStatus.CONFLICT);
        }
        userService.saveUser(user);

        HttpHeaders headers = new HttpHeaders();
        headers.setLocation(ucBuilder.path("/api/user/{id}").buildAndExpand(user.getId()).toUri());
        return new ResponseEntity(headers, HttpStatus.CREATED);

    }

//   -------------------------- Update a User ----------------------------

//    @PutMapping("/user/{id}")
//    public ResponseEntity<?> updateUser(@PathVariable("id") int id, @RequestBody User user) {
//        LOGGER.info("Updating User with id {} ", id );
//
//        User currentUser = userService.findById(id);
//
//        if (currentUser == null) {
//            LOGGER.error("Unable to update. User with id {}  not found. ", id);
//            return new ResponseEntity(new CustomErrorType("Unable to upate. User with id " + id + " not found."),
//                    HttpStatus.NOT_FOUND);
//        }
//
//        currentUser.set
//    }

//    --------------------------- Delete a User -----------------------------
    @DeleteMapping("/user/{id}")
    public ResponseEntity<?> deleteUser(@PathVariable("id") int id) {
        LOGGER.info("Fetching & Deleting User with id {} ", id);

        User user = userService.findById(id);
        if (user == null) {
            LOGGER.error("Unable to delete. User with id {} ", id);
            return new ResponseEntity(new CustomErrorType("Unable to delete. User with id " + id + " not"),
                    HttpStatus.NOT_FOUND);
        }
        userService.deleteUserById(id);
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

//    ----------------------------- Delete All Users ---------------------------

    @DeleteMapping("/user/")
    public ResponseEntity<User> deleteAllUsers() {
        LOGGER.info("Delete All Users......................");
        userService.deleteAllUsers();

        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }
}

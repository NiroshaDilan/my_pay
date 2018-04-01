package com.example.mypay.repository;

import com.example.mypay.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Integer> {

    @Query("SELECT new User(id, email, nic, avatarName, firstName, lastName, age, sex, salary) FROM User WHERE id > :id")
    List<User> findAllAffterSpecificId(@Param("id") int id);

    User findByEmail(String email);
}

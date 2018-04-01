package com.example.mypay.repository;

import com.example.mypay.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * @Project my-pay
 * @Author DILAN on 4/1/2018
 */
public interface RoleRepository extends JpaRepository<Role, Integer> {

    @Query("SELECT new Role(id, roleName) FROM Role WHERE id > :id")
    List<Role> findAllAffterSpecificId(@Param("id") int id);
}

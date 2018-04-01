package com.example.mypay.repository;

import com.example.mypay.model.Payment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * @Project my-pay
 * @Author DILAN on 3/31/2018
 */
public interface PaymentRepository extends JpaRepository<Payment, Integer> {

    @Query("SELECT new Payment(id, paidDate, total, downPayment) FROM Payment WHERE id > :id")
    List<Payment> findAllAffterSpecificId(@Param("id") int id);
}

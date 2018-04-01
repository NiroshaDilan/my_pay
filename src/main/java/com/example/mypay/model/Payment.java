package com.example.mypay.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

import static javax.persistence.CascadeType.ALL;
import static javax.persistence.GenerationType.AUTO;

@Entity
@Table(name = "payment", catalog = "MY_PAY")
public class Payment implements Serializable {

    @Id
    @GeneratedValue(strategy = AUTO)
    private int id;
    private Date paidDate;
    private Double total;
    private Double downPayment;

    @OneToOne(cascade = ALL, mappedBy = "payment")
    private Order order;

    public Payment() {
    }

    public Payment(int id, Date paidDate, Double total, Double downPayment) {
        this.id = id;
        this.paidDate = paidDate;
        this.total = total;
        this.downPayment = downPayment;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getPaidDate() {
        return paidDate;
    }

    public void setPaidDate(Date paidDate) {
        this.paidDate = paidDate;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public Double getDownPayment() {
        return downPayment;
    }

    public void setDownPayment(Double downPayment) {
        this.downPayment = downPayment;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

    @Override
    public String toString() {
        return "Payment{" +
                "id=" + id +
                ", paidDate=" + paidDate +
                ", total=" + total +
                ", downPayment=" + downPayment +
                ", order=" + order +
                '}';
    }
}

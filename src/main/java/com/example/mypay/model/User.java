package com.example.mypay.model;

import javax.persistence.*;

import java.io.Serializable;
import java.util.Set;

import static javax.persistence.CascadeType.ALL;
import static javax.persistence.GenerationType.AUTO;

@Entity
@Table(name = "user", catalog = "MY_PAY")
public class User implements Serializable{

    @Id
    @GeneratedValue(strategy = AUTO)
    private int id;
    @Column(unique = true)
    private String email;
    @Column(unique = true)
    private String nic;
    private String avatarName;
    private String firstName;
    private String lastName;
    private int age;
    private String sex;
    private double salary;

    @ManyToMany(cascade = ALL)
    @JoinTable(name = "user_address", joinColumns = @JoinColumn(name = "user_id", referencedColumnName = "id"),
        inverseJoinColumns = @JoinColumn(name = "address_id", referencedColumnName = "id"))
    private Set<Address> addressSet;

    @OneToMany(mappedBy = "user", cascade = ALL)
    private Set<PhoneNumber> phoneNumberSet;

    @OneToOne(mappedBy = "user")
    private UserAccount userAccount;

    public User() {
        // Default constructor for entity creating pur
    }

    public User(int id, String email, String nic, String avatarName, String firstName, String lastName, int age,
                String sex, double salary) {
        this.id = id;
        this.email = email;
        this.nic = nic;
        this.avatarName = avatarName;
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.sex = sex;
        this.salary = salary;
    }

    public User(String email, String nic, String avatarName, String firstName, String lastName, int age,
                String sex, double salary, Set<Address> addressSet,
                Set<PhoneNumber> phoneNumberSet, UserAccount userAccount) {
        this.email = email;
        this.nic = nic;
        this.avatarName = avatarName;
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.sex = sex;
        this.salary = salary;
        this.addressSet = addressSet;
        this.phoneNumberSet = phoneNumberSet;
        this.userAccount = userAccount;
    }

    public User setEmail(String email) {
        this.email = email;
        return this;
    }

    public User setNic(String nic) {
        this.nic = nic;
        return this;
    }

    public User setAvatarName(String avatarName) {
        this.avatarName = avatarName;
        return this;
    }

    public User setFirstName(String firstName) {
        this.firstName = firstName;
        return this;
    }

    public User setLastName(String lastName) {
        this.lastName = lastName;
        return this;
    }

    public User setAge(int age) {
        this.age = age;
        return this;
    }

    public User setSex(String sex) {
        this.sex = sex;
        return this;
    }

    public User setSalary(double salary) {
        this.salary = salary;
        return this;
    }

    public User setAddressSet(Set<Address> addressSet) {
        this.addressSet = addressSet;
        return this;
    }

    public User setPhoneNumberSet(Set<PhoneNumber> phoneNumberSet) {
        this.phoneNumberSet = phoneNumberSet;
        return this;
    }

    public User setUserAccount(UserAccount userAccount) {
        this.userAccount = userAccount;
        return this;
    }

    public int getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    public String getNic() {
        return nic;
    }

    public String getAvatarName() { return  avatarName; }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public int getAge() {
        return age;
    }

    public String getSex() {
        return sex;
    }

    public double getSalary() {
        return salary;
    }

    public Set<Address> getAddressSet() {
        return addressSet;
    }

    public Set<PhoneNumber> getPhoneNumberSet() {
        return phoneNumberSet;
    }

    public UserAccount getUserAccount() {
        return userAccount;
    }

    public User createUser() {
        return new User(email, nic, avatarName, firstName, lastName, age, sex, salary, addressSet,
                phoneNumberSet, userAccount);
    }


}

package com.example.mypay.state;

public enum  LesiPayAccountStatus {

    NOT_SETTLED("NOT_SETTLED"),
    FULLY_SETTLED("FULLY_SETTLED"),
    CANCELLED("CANCELLED");

    String lesipayAccountStatus;

    private LesiPayAccountStatus(String lesipayAccountStatus) {
        this.lesipayAccountStatus = lesipayAccountStatus;
    }

    public String getLesipayAccountStatus() {
        return lesipayAccountStatus;
    }
}

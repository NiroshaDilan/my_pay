package com.example.mypay.state;

public enum PaymentState {
    OUTSTANDING("OUTSTANDING"),
    SETTLED("SETTLED");

    private String paymentState;

    private PaymentState(String paymentState) {
        this.paymentState = paymentState;
    }

    public String getPaymentState() {
        return paymentState;
    }

    @Override
    public String toString() {
        return this.paymentState;
    }

    public String getName() {
        return this.name();
    }
}

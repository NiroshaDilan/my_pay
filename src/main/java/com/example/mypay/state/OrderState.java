package com.example.mypay.state;

public enum OrderState {
    NEW("NEW"),
    HOLD("HOLD"),
    SHIPPED("SHIPPED"),
    DELIVERED("DELIVERED"),
    CLOSED("CLOSED");

    private String orderState;

    private OrderState(String orderState) {
        this.orderState = orderState;
    }

    public String getOrderState() {
        return orderState;
    }

    @Override
    public String toString() {
        return this.orderState;
    }

    public String getName() {
        return this.name();
    }
}

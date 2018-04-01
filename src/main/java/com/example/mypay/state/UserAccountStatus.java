package com.example.mypay.state;

public enum UserAccountStatus {
    NEW("NEW"),
    ACTIVE("ACTIVE"),
    BLOCKED("BLOCKED"),
    BANNED("BANNED");

    private String accountStatus;

    private UserAccountStatus(String accountStatus) {
        this.accountStatus = accountStatus;
    }

    public String getAccountStatus() {
        return accountStatus;
    }

    @Override
    public String toString() {
        return this.accountStatus;
    }

    public String getName() {
        return this.name();
    }
}

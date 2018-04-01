package com.example.mypay.state;

public enum NumberProviderState {

    DIALOG("DIALOG"),
    MOBITEL("MOBITEL"),
    ETISALAT("ETISALAT"),
    AIRTEL("AIRTEL"),
    HUTCH("HUTCH");

    private String numberProviderState;

    private NumberProviderState(final String numberProviderState) {
        this.numberProviderState = numberProviderState;
    }

    public String getNumberProviderState() {
        return numberProviderState;
    }
}

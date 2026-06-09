package com.tourism.model;

import java.io.Serializable;

public class User extends Person {
    private String password;
    private String travelPreference;

    public User() {
        super();
    }

    public User(String firstName, String lastName, String email, String phone, String password) {
        super(firstName, lastName, email, phone);
        this.password = password;
    }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getTravelPreference() { return travelPreference; }
    public void setTravelPreference(String travelPreference) { this.travelPreference = travelPreference; }

    @Override
    public String toString() {
        return firstName + "," + lastName + "," + email + "," + phone + "," + password + "," +
               (dob != null ? dob : "") + "," +
               (address != null ? address : "") + "," +
               (travelPreference != null ? travelPreference : "");
    }
}


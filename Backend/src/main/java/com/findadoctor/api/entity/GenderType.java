package com.findadoctor.api.entity;

public enum GenderType {
    WOMAN("WOMAN"),
    MAN("MAN");

    private String gender;

    GenderType(String gender) {
        this.gender = gender;
    }

    public String getGender() {
        return gender;
    }
}

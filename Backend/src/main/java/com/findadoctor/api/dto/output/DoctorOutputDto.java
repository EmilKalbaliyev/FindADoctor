package com.findadoctor.api.dto.output;

import lombok.Data;

import java.util.List;

@Data
public class DoctorOutputDto {

    private String firstName;
    private String lastName;
    private List<String> specialization;

}

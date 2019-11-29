package com.findadoctor.api.dto.input;

import com.findadoctor.api.entity.GenderType;
import com.findadoctor.api.error.BadRequestException;
import com.findadoctor.api.error.ServiceErrorCode;
import lombok.Data;


@Data
public class PatientInputDto {
    private String firstName;
    private String lastName;
    private String pesel;
    private String gender;

    public void validate() {
        if(!gender.equals(GenderType.MAN.getGender()) && !gender.equals(GenderType.WOMAN.getGender())) {
            throw new BadRequestException(String.format("Gender must be type %s or %s",
                    GenderType.MAN.getGender(), GenderType.WOMAN.getGender()), ServiceErrorCode.INVALID_GENDER_TYPE);
        }
    }
}

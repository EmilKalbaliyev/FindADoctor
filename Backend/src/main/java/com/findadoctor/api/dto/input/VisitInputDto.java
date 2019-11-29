package com.findadoctor.api.dto.input;

import com.findadoctor.api.error.BadRequestException;
import com.findadoctor.api.error.ServiceErrorCode;
import lombok.Data;

import java.time.LocalDate;
import java.time.LocalTime;

@Data
public class VisitInputDto {
    private Long idPatient;
    private Long idDoctor;
    private LocalTime startTime;
    private LocalTime endTime;
    private LocalDate date;

    public void validate(){
        if(startTime.isAfter(endTime)){
            throw  new BadRequestException(String.format("Wrong start time"), ServiceErrorCode.WRONG_TIME);
        }
    }
}

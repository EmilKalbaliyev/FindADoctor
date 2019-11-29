package com.findadoctor.api.error;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ErrorDto {

  private String message;
  private ServiceErrorCode error;
}

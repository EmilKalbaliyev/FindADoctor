package com.findadoctor.api.error;

import org.springframework.http.HttpStatus;

public class NotFoundException extends ServiceException {

  public NotFoundException(String message, ServiceErrorCode serviceErrorCode) {
    super(message, HttpStatus.NOT_FOUND, serviceErrorCode);
  }
}

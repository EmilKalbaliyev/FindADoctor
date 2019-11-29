package com.findadoctor.api.entity;

import com.findadoctor.api.error.BadRequestException;
import com.findadoctor.api.error.ServiceErrorCode;
import lombok.Data;

@Data
public class HourMinute {
  private int hour;
  private int minute;

  public void validate() throws BadRequestException {
    if(hour < 0 || hour > 24 || minute < 0 || minute > 59) {
      throw new BadRequestException("Invalid hour minute syntax", ServiceErrorCode.INVALID_TIME_SYNTAX);
    }
  }
}

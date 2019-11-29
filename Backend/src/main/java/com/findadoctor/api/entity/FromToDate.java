package com.findadoctor.api.entity;

import com.findadoctor.api.error.BadRequestException;
import lombok.Data;

@Data
public class FromToDate {
  private HourMinute from;
  private HourMinute to;

  public void validate() throws BadRequestException {
    from.validate();
    to.validate();
  }
}

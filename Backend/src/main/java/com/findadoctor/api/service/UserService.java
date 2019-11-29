package com.findadoctor.api.service;

import javax.transaction.Transactional;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import com.findadoctor.api.converter.Mapper;
import com.findadoctor.api.dto.input.PatientInputDto;
import com.findadoctor.api.dto.output.PatientOutputDto;
import com.findadoctor.api.entity.UserEntity;
import com.findadoctor.api.error.ConflictException;
import com.findadoctor.api.error.NotFoundException;
import com.findadoctor.api.error.ServiceErrorCode;
import com.findadoctor.api.repository.UserRepository;

@Slf4j
@Service
public class UserService {

  private final UserRepository userRepository;
  private final PatientService patientService;
  private final BCryptPasswordEncoder bCryptPasswordEncoder;
  private final Mapper mapper;

  public UserService(UserRepository userRepository,
      PatientService patientService,
      BCryptPasswordEncoder bCryptPasswordEncoder,
      Mapper mapper) {
    this.userRepository = userRepository;
    this.patientService = patientService;
    this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    this.mapper = mapper;
  }

  @Transactional
  public void saveUser(String username, String password, PatientInputDto patientInputDto) {
    if (userRepository.findByUsername(username).isPresent()) {
      throw new ConflictException(
          String.format("Can not register user, username=%s is existed", username),
          ServiceErrorCode.USER_ALREADY_EXISTED);
    }
    PatientOutputDto patientOutputDto = patientService.savePatient(patientInputDto);
    UserEntity user = new UserEntity(username, password, patientOutputDto.getId());
    user.setPassword(bCryptPasswordEncoder.encode(password));
    userRepository.save(user);
  }

  public UserEntity findUserByUsername(String username) {
    return userRepository.findByUsername(username)
        .orElseThrow(
            () -> new NotFoundException(String.format("User with username=%s not found", username),
                ServiceErrorCode.USER_NOT_FOUND));
  }
}
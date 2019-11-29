package com.findadoctor.api.repository;

import com.findadoctor.api.entity.DoctorEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface DoctorRepository extends JpaRepository<DoctorEntity, Long> {

    Optional<DoctorEntity> findByPesel(String pesel);

    List<DoctorEntity> findAllBySpecializations(List<String> specializations); //TODO


}

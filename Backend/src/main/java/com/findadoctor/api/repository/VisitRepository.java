package com.findadoctor.api.repository;

import com.findadoctor.api.entity.VisitEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Optional;

@Repository
public interface VisitRepository extends JpaRepository<VisitEntity, Long> {
    Optional<VisitEntity> findByIdPatient(Long idPatient);
    Optional<VisitEntity> findByIdDoctor(Long idDoctor);
    Optional<VisitEntity> findByStartTimeAndDate(LocalTime startTime, LocalDate date);
    Optional<VisitEntity> findByEndTimeAndDate(LocalTime endTime, LocalDate date);
}

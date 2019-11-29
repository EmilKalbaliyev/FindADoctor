package com.findadoctor.api.repository;

import com.findadoctor.api.entity.SpecializationEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface SpecializationRepository extends JpaRepository<SpecializationEntity, Long> {

    Optional<SpecializationEntity> findByName(String name);

}
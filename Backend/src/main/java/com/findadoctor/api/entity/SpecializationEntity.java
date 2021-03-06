package com.findadoctor.api.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Data
@Table(name = "specialization")
@Entity
public class SpecializationEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column
    @ManyToMany(mappedBy = "specializations")
    private List<DoctorEntity> doctors = new ArrayList<>();

    @Column
    private String description;

}

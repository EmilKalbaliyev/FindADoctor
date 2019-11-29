package com.findadoctor.api.service;

import org.springframework.stereotype.Service;
import com.findadoctor.api.converter.Mapper;
import com.findadoctor.api.dto.input.VisitInputDto;
import com.findadoctor.api.dto.output.VisitOutputDto;
import com.findadoctor.api.entity.VisitEntity;
import com.findadoctor.api.error.BadRequestException;
import com.findadoctor.api.error.NotFoundException;
import com.findadoctor.api.error.ServiceErrorCode;
import com.findadoctor.api.repository.VisitRepository;

import java.util.List;
import java.util.Optional;

@Service
public class VisitService {
    private VisitRepository visitRepository;
    private Mapper mapper;

    public VisitService(VisitRepository visitRepository, Mapper mapper) {
        this.visitRepository = visitRepository;
        this.mapper = mapper;
    }

    public VisitOutputDto saveVisit(VisitInputDto visitInputDto){
        if((visitRepository.findByStartTimeAndDate(visitInputDto.getStartTime(), visitInputDto.getDate()).isPresent()
                || visitRepository.findByEndTimeAndDate(visitInputDto.getEndTime(), visitInputDto.getDate()).isPresent())
                && visitRepository.findByIdDoctor(visitInputDto.getIdDoctor()).isPresent()){
            throw new BadRequestException(String.format("Visit  has already visit at this time"),
                    ServiceErrorCode.DOCTOR_HAS_ALREADY_VISIT);
        }
        visitInputDto.validate();
        VisitEntity visitEntity = visitRepository.save(mapper.map(visitInputDto, VisitEntity.class));
        return mapper.map(visitEntity, VisitOutputDto.class);
    }

    public VisitOutputDto getVisit(Long id){
        Optional<VisitEntity> visit = visitRepository.findById(id);
        if(!visit.isPresent()) {
            throw new NotFoundException(String.format("Visit with id %s does not exist", id), ServiceErrorCode
                    .PATIENT_NOT_FOUND);
        }
        return mapper.map(visit, VisitOutputDto.class);
    }

    public List<VisitOutputDto> findAll(){
        return mapper.mapToList(visitRepository.findAll(), VisitOutputDto.class);
    }

    public void deleteVisit(Long id){
        if(!visitRepository.findById(id).isPresent()){
            throw new NotFoundException(String.format("Visit with id %s does not exist", id), ServiceErrorCode.VISIT_NOT_FOUND);
        }
        visitRepository.deleteById(id);
    }
}

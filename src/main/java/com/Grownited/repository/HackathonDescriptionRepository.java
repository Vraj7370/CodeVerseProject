package com.Grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.Grownited.entity.HackathonDescriptionEntity;

public interface HackathonDescriptionRepository 
        extends JpaRepository<HackathonDescriptionEntity, Integer> {

}
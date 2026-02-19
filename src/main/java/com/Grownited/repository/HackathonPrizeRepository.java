package com.Grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.Grownited.entity.HackathonPrizeEntity;

public interface HackathonPrizeRepository 
        extends JpaRepository<HackathonPrizeEntity, Long> {

}
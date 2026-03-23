package com.Grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import com.Grownited.entity.HackathonPrizeEntity;

public interface HackathonPrizeRepository 
        extends JpaRepository<HackathonPrizeEntity, Integer> {
	
	List<HackathonPrizeEntity> findByHackathonId(Integer hackathonId);
	List<HackathonPrizeEntity> findByHackathonIdOrderByHackathonPrizeIdAsc(Integer hackathonId);

}
package com.Grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.Grownited.entity.HackathonTeamEntity;

public interface HackathonTeamRepository
        extends JpaRepository<HackathonTeamEntity, Integer> {

}
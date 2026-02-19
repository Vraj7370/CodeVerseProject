package com.Grownited.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "hackathon_description")
public class HackathonDescriptionEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "hackathon_description_id")
    private Integer hackathonDescriptionId;
    private String hackathonDetails;
	
    public Integer getHackathonDescriptionId() {
		return hackathonDescriptionId;
	}
	public void setHackathonDescriptionId(Integer hackathonDescriptionId) {
		this.hackathonDescriptionId = hackathonDescriptionId;
	}
	
	public String getHackathonDetails() {
		return hackathonDetails;
	}
	public void setHackathonDetails(String hackathonDetails) {
		this.hackathonDetails = hackathonDetails;
	}
	
    
	


   
}
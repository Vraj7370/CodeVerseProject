package com.Grownited.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "hackathon_team")
public class HackathonTeamEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer hackathonTeamId;

	private String teamName;

	private String teamStatus;

	// Hackathon FK
	@ManyToOne
	private HackathonEntity hackathon;

	// Team Leader FK (User)
	@ManyToOne
	private UserEntity teamLeader;

	public Integer getHackathonTeamId() {
		return hackathonTeamId;
	}

	public void setHackathonTeamId(Integer hackathonTeamId) {
		this.hackathonTeamId = hackathonTeamId;
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public String getTeamStatus() {
		return teamStatus;
	}

	public void setTeamStatus(String teamStatus) {
		this.teamStatus = teamStatus;
	}

	public HackathonEntity getHackathon() {
		return hackathon;
	}

	public void setHackathon(HackathonEntity hackathon) {
		this.hackathon = hackathon;
	}

	public UserEntity getTeamLeader() {
		return teamLeader;
	}

	public void setTeamLeader(UserEntity teamLeader) {
		this.teamLeader = teamLeader;
	}

}
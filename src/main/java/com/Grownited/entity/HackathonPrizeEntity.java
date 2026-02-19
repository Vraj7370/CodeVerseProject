package com.Grownited.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "hackathon_prize")
public class HackathonPrizeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long hackathonPrizeId;

    private String prizeTitle;

    @Column(length = 2000)
    private String prizeDescription;

    // FK
    @ManyToOne
    private HackathonEntity hackathon;

    public Long getHackathonPrizeId() {
        return hackathonPrizeId;
    }

    public void setHackathonPrizeId(Long hackathonPrizeId) {
        this.hackathonPrizeId = hackathonPrizeId;
    }

    public String getPrizeTitle() {
        return prizeTitle;
    }

    public void setPrizeTitle(String prizeTitle) {
        this.prizeTitle = prizeTitle;
    }

    public String getPrizeDescription() {
        return prizeDescription;
    }

    public void setPrizeDescription(String prizeDescription) {
        this.prizeDescription = prizeDescription;
    }

    public HackathonEntity getHackathon() {
        return hackathon;
    }

    public void setHackathon(HackathonEntity hackathon) {
        this.hackathon = hackathon;
    }
}
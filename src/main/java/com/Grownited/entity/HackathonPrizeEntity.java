package com.Grownited.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "hackathon_prize")
public class HackathonPrizeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer hackathonPrizeId;

    private String prizeTitle;

    @Column(length = 2000)
    private String prizeDescription;

    private Integer hackathonId;   // simple FK

    public Integer getHackathonPrizeId() {
        return hackathonPrizeId;
    }

    public void setHackathonPrizeId(Integer hackathonPrizeId) {
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

    public Integer getHackathonId() {
        return hackathonId;
    }

    public void setHackathonId(Integer hackathonId) {
        this.hackathonId = hackathonId;
    }
}

package com.zking.crm.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;

public class SalPlan implements Serializable {
    private Long plaId;

    private Long plaChcId;

    @JsonFormat(pattern ="yyyy-MM-dd")
    private String plaDate;

    private String plaTodo;

    private String plaResult;

    public SalPlan(Long plaId, Long plaChcId, String plaDate, String plaTodo, String plaResult) {
        this.plaId = plaId;
        this.plaChcId = plaChcId;
        this.plaDate = plaDate;
        this.plaTodo = plaTodo;
        this.plaResult = plaResult;
    }

    public SalPlan(Long plaId, Long plaChcId, String plaDate, String plaTodo) {
        this.plaId = plaId;
        this.plaChcId = plaChcId;
        this.plaDate = plaDate;
        this.plaTodo = plaTodo;
    }

    public SalPlan() {
        super();
    }

    public Long getPlaId() {
        return plaId;
    }

    public void setPlaId(Long plaId) {
        this.plaId = plaId;
    }

    public Long getPlaChcId() {
        return plaChcId;
    }

    public void setPlaChcId(Long plaChcId) {
        this.plaChcId = plaChcId;
    }

    public String getPlaDate() {
        return plaDate;
    }

    public void setPlaDate(String plaDate) {
        this.plaDate = plaDate;
    }

    public String getPlaTodo() {
        return plaTodo;
    }

    public void setPlaTodo(String plaTodo) {
        this.plaTodo = plaTodo;
    }

    public String getPlaResult() {
        return plaResult;
    }

    public void setPlaResult(String plaResult) {
        this.plaResult = plaResult;
    }

    @Override
    public String toString() {
        return "SalPlan{" +
                "plaId=" + plaId +
                ", plaChcId=" + plaChcId +
                ", plaDate=" + plaDate +
                ", plaTodo='" + plaTodo + '\'' +
                ", plaResult='" + plaResult + '\'' +
                '}';
    }
}
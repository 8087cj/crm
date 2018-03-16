package com.zking.crm.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;

public class SalChance implements Serializable {
    private Long chcId;

    private String chcSource;

    private String chcCustName;

    private String chcTitle;

    private Integer chcRate;

    private String chcLinkman;

    private String chcTel;

    private String chcDesc;

    private Long chcCreateId;

    private String chcCreateBy;

    //年月日
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String chcCreateDate;

    private Long chcDueId;

    private String chcDueTo;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String chcDueDate;

    private Integer chcStatus;

    public SalChance(Long chcId, String chcSource, String chcCustName, String chcTitle, Integer chcRate, String chcLinkman, String chcTel, String chcDesc, Long chcCreateId, String chcCreateBy, String chcCreateDate, Long chcDueId, String chcDueTo, String chcDueDate, Integer chcStatus) {
        this.chcId = chcId;
        this.chcSource = chcSource;
        this.chcCustName = chcCustName;
        this.chcTitle = chcTitle;
        this.chcRate = chcRate;
        this.chcLinkman = chcLinkman;
        this.chcTel = chcTel;
        this.chcDesc = chcDesc;
        this.chcCreateId = chcCreateId;
        this.chcCreateBy = chcCreateBy;
        this.chcCreateDate = chcCreateDate;
        this.chcDueId = chcDueId;
        this.chcDueTo = chcDueTo;
        this.chcDueDate = chcDueDate;
        this.chcStatus = chcStatus;
    }

    public SalChance() {
        super();
    }

    public Long getChcId() {
        return chcId;
    }

    public void setChcId(Long chcId) {
        this.chcId = chcId;
    }

    public String getChcSource() {
        return chcSource;
    }

    public void setChcSource(String chcSource) {
        this.chcSource = chcSource;
    }

    public String getChcCustName() {
        return chcCustName;
    }

    public void setChcCustName(String chcCustName) {
        this.chcCustName = chcCustName;
    }

    public String getChcTitle() {
        return chcTitle;
    }

    public void setChcTitle(String chcTitle) {
        this.chcTitle = chcTitle;
    }

    public Integer getChcRate() {
        return chcRate;
    }

    public void setChcRate(Integer chcRate) {
        this.chcRate = chcRate;
    }

    public String getChcLinkman() {
        return chcLinkman;
    }

    public void setChcLinkman(String chcLinkman) {
        this.chcLinkman = chcLinkman;
    }

    public String getChcTel() {
        return chcTel;
    }

    public void setChcTel(String chcTel) {
        this.chcTel = chcTel;
    }

    public String getChcDesc() {
        return chcDesc;
    }

    public void setChcDesc(String chcDesc) {
        this.chcDesc = chcDesc;
    }

    public Long getChcCreateId() {
        return chcCreateId;
    }

    public void setChcCreateId(Long chcCreateId) {
        this.chcCreateId = chcCreateId;
    }

    public String getChcCreateBy() {
        return chcCreateBy;
    }

    public void setChcCreateBy(String chcCreateBy) {
        this.chcCreateBy = chcCreateBy;
    }


    public Long getChcDueId() {
        return chcDueId;
    }

    public void setChcDueId(Long chcDueId) {
        this.chcDueId = chcDueId;
    }

    public String getChcDueTo() {
        return chcDueTo;
    }

    public void setChcDueTo(String chcDueTo) {
        this.chcDueTo = chcDueTo;
    }

    public String getChcCreateDate() {
        return chcCreateDate;
    }

    public void setChcCreateDate(String chcCreateDate) {
        this.chcCreateDate = chcCreateDate;
    }

    public String getChcDueDate() {
        return chcDueDate;
    }

    public void setChcDueDate(String chcDueDate) {
        this.chcDueDate = chcDueDate;
    }

    public Integer getChcStatus() {
        return chcStatus;
    }

    public void setChcStatus(Integer chcStatus) {
        this.chcStatus = chcStatus;
    }

    @Override
    public String toString() {
        return "SalChance{" +
                "chcId=" + chcId +
                ", chcSource='" + chcSource + '\'' +
                ", chcCustName='" + chcCustName + '\'' +
                ", chcTitle='" + chcTitle + '\'' +
                ", chcRate=" + chcRate +
                ", chcLinkman='" + chcLinkman + '\'' +
                ", chcTel='" + chcTel + '\'' +
                ", chcDesc='" + chcDesc + '\'' +
                ", chcCreateId=" + chcCreateId +
                ", chcCreateBy='" + chcCreateBy + '\'' +
                ", chcCreateDate=" + chcCreateDate +
                ", chcDueId=" + chcDueId +
                ", chcDueTo='" + chcDueTo + '\'' +
                ", chcDueDate=" + chcDueDate +
                ", chcStatus=" + chcStatus +
                '}';
    }
}
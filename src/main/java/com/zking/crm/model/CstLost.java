package com.zking.crm.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;

public class CstLost implements Serializable {
    private Long lstId;

    private String lstCustNo;

    private String lstCustName;

    private Long lstCustManagerId;

    private String lstCustManagerName;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String lstLastOrderDate;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private String lstLostDate;

    private String lstDelay;

    private String lstReason;

    private Integer lstStatus;

    public CstLost(Long lstId, String lstCustNo, String lstCustName, Long lstCustManagerId, String lstCustManagerName, String lstLastOrderDate, String lstLostDate, String lstDelay, String lstReason, Integer lstStatus) {
        this.lstId = lstId;
        this.lstCustNo = lstCustNo;
        this.lstCustName = lstCustName;
        this.lstCustManagerId = lstCustManagerId;
        this.lstCustManagerName = lstCustManagerName;
        this.lstLastOrderDate = lstLastOrderDate;
        this.lstLostDate = lstLostDate;
        this.lstDelay = lstDelay;
        this.lstReason = lstReason;
        this.lstStatus = lstStatus;
    }

    public CstLost() {
        super();
    }

    public Long getLstId() {
        return lstId;
    }

    public void setLstId(Long lstId) {
        this.lstId = lstId;
    }

    public String getLstCustNo() {
        return lstCustNo;
    }

    public void setLstCustNo(String lstCustNo) {
        this.lstCustNo = lstCustNo;
    }

    public String getLstCustName() {
        return lstCustName;
    }

    public void setLstCustName(String lstCustName) {
        this.lstCustName = lstCustName;
    }

    public Long getLstCustManagerId() {
        return lstCustManagerId;
    }

    public void setLstCustManagerId(Long lstCustManagerId) {
        this.lstCustManagerId = lstCustManagerId;
    }

    public String getLstCustManagerName() {
        return lstCustManagerName;
    }

    public void setLstCustManagerName(String lstCustManagerName) {
        this.lstCustManagerName = lstCustManagerName;
    }

    public String getLstLastOrderDate() {
        return lstLastOrderDate;
    }

    public void setLstLastOrderDate(String lstLastOrderDate) {
        this.lstLastOrderDate = lstLastOrderDate;
    }

    public String getLstLostDate() {
        return lstLostDate;
    }

    public void setLstLostDate(String lstLostDate) {
        this.lstLostDate = lstLostDate;
    }

    public String getLstDelay() {
        return lstDelay;
    }

    public void setLstDelay(String lstDelay) {
        this.lstDelay = lstDelay;
    }

    public String getLstReason() {
        return lstReason;
    }

    public void setLstReason(String lstReason) {
        this.lstReason = lstReason;
    }

    public Integer getLstStatus() {
        return lstStatus;
    }

    public void setLstStatus(Integer lstStatus) {
        this.lstStatus = lstStatus;
    }

    @Override
    public String toString() {
        return "CstLost{" +
                "lstId=" + lstId +
                ", lstCustNo='" + lstCustNo + '\'' +
                ", lstCustName='" + lstCustName + '\'' +
                ", lstCustManagerId=" + lstCustManagerId +
                ", lstCustManagerName='" + lstCustManagerName + '\'' +
                ", lstLastOrderDate=" + lstLastOrderDate +
                ", lstLostDate=" + lstLostDate +
                ", lstDelay='" + lstDelay + '\'' +
                ", lstReason='" + lstReason + '\'' +
                ", lstStatus=" + lstStatus +
                '}';
    }
}
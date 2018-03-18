package com.zking.crm.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;

public class Orders implements Serializable {

    private Long odrId;

    private String odrCustomer;

    //年月日
    @JsonFormat(pattern = "yyyy年MM月dd日")
    private String odrDate;

    private String odrAddr;

    private Boolean odrStatus;

    private Float sumsProce;

    private String StatusWZ;

    public Orders(Long odrId, String odrCustomer, String odrDate, String odrAddr, Boolean odrStatus) {
        this.odrId = odrId;
        this.odrCustomer = odrCustomer;
        this.odrDate = odrDate;
        this.odrAddr = odrAddr;
        this.odrStatus = odrStatus;
    }

    public Orders() {
        super();
    }


    public Long getOdrId() {
        return odrId;
    }

    public void setOdrId(Long odrId) {
        this.odrId = odrId;
    }

    public String getOdrCustomer() {
        return odrCustomer;
    }

    public void setOdrCustomer(String odrCustomer) {
        this.odrCustomer = odrCustomer;
    }

    public String getOdrDate() {
        return odrDate;
    }

    public void setOdrDate(String odrDate) {
        this.odrDate = odrDate;
    }

    public String getOdrAddr() {
        return odrAddr;
    }

    public void setOdrAddr(String odrAddr) {
        this.odrAddr = odrAddr;
    }

    public Boolean getOdrStatus() {
        return odrStatus;
    }

    public void setOdrStatus(Boolean odrStatus) {
        this.odrStatus = odrStatus;
    }

    public String getStatusWZ() {
        return StatusWZ;
    }

    public void setStatusWZ(String statusWZ) {
        StatusWZ = statusWZ;
    }

    public Float getSumsProce() {
        return sumsProce;
    }

    public void setSumsProce(Float sumsProce) {
        this.sumsProce = sumsProce;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "odrId=" + odrId +
                ", odrCustomer='" + odrCustomer + '\'' +
                ", odrDate='" + odrDate + '\'' +
                ", odrAddr='" + odrAddr + '\'' +
                ", odrStatus=" + odrStatus +
                ", sumsProce=" + sumsProce +
                ", StatusWZ='" + StatusWZ + '\'' +
                '}';
    }
}
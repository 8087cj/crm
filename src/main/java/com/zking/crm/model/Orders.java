package com.zking.crm.model;

import java.io.Serializable;
import java.util.Date;

public class Orders implements Serializable {
    private Long odrId;

    private String odrCustomer;

    private Date odrDate;

    private String odrAddr;

    private Boolean odrStatus;

    public Orders(Long odrId, String odrCustomer, Date odrDate, String odrAddr, Boolean odrStatus) {
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

    public Date getOdrDate() {
        return odrDate;
    }

    public void setOdrDate(Date odrDate) {
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

    @Override
    public String toString() {
        return "Orders{" +
                "odrId=" + odrId +
                ", odrCustomer='" + odrCustomer + '\'' +
                ", odrDate=" + odrDate +
                ", odrAddr='" + odrAddr + '\'' +
                ", odrStatus=" + odrStatus +
                '}';
    }
}
package com.zking.crm.model;

import java.io.Serializable;
import java.util.Date;

public class CstService implements Serializable {
    private Long svrId;

    private String svrType;

    private String svrTitle;

    private String svrCustNo;

    private String svrCustName;

    private Integer svrStatus;

    private String svrRequest;

    private Long svrCreateId;

    private String svrCreateBy;

    private String svrCreateDate;

    private Long svrDueId;

    private String svrDueTo;

    private String svrDueDate;

    private String svrDeal;

    private Long svrDealId;

    private String svrDealBy;

    private String svrDealDate;

    private String svrResult;

    private Integer svrSatisfy;

    public CstService(Long svrId, String svrType, String svrTitle, String svrCustNo, String svrCustName, Integer svrStatus, String svrRequest, Long svrCreateId, String svrCreateBy, String svrCreateDate, Long svrDueId, String svrDueTo, String svrDueDate, String svrDeal, Long svrDealId, String svrDealBy, String svrDealDate, String svrResult, Integer svrSatisfy) {
        this.svrId = svrId;
        this.svrType = svrType;
        this.svrTitle = svrTitle;
        this.svrCustNo = svrCustNo;
        this.svrCustName = svrCustName;
        this.svrStatus = svrStatus;
        this.svrRequest = svrRequest;
        this.svrCreateId = svrCreateId;
        this.svrCreateBy = svrCreateBy;
        this.svrCreateDate = svrCreateDate;
        this.svrDueId = svrDueId;
        this.svrDueTo = svrDueTo;
        this.svrDueDate = svrDueDate;
        this.svrDeal = svrDeal;
        this.svrDealId = svrDealId;
        this.svrDealBy = svrDealBy;
        this.svrDealDate = svrDealDate;
        this.svrResult = svrResult;
        this.svrSatisfy = svrSatisfy;
    }

    public CstService() {
        super();
    }

    public Long getSvrId() {
        return svrId;
    }

    public void setSvrId(Long svrId) {
        this.svrId = svrId;
    }

    public String getSvrType() {
        return svrType;
    }

    public void setSvrType(String svrType) {
        this.svrType = svrType;
    }

    public String getSvrTitle() {
        return svrTitle;
    }

    public void setSvrTitle(String svrTitle) {
        this.svrTitle = svrTitle;
    }

    public String getSvrCustNo() {
        return svrCustNo;
    }

    public void setSvrCustNo(String svrCustNo) {
        this.svrCustNo = svrCustNo;
    }

    public String getSvrCustName() {
        return svrCustName;
    }

    public void setSvrCustName(String svrCustName) {
        this.svrCustName = svrCustName;
    }

    public Integer getSvrStatus() {
        return svrStatus;
    }

    public void setSvrStatus(Integer svrStatus) {
        this.svrStatus = svrStatus;
    }

    public String getSvrRequest() {
        return svrRequest;
    }

    public void setSvrRequest(String svrRequest) {
        this.svrRequest = svrRequest;
    }

    public Long getSvrCreateId() {
        return svrCreateId;
    }

    public void setSvrCreateId(Long svrCreateId) {
        this.svrCreateId = svrCreateId;
    }

    public String getSvrCreateBy() {
        return svrCreateBy;
    }

    public void setSvrCreateBy(String svrCreateBy) {
        this.svrCreateBy = svrCreateBy;
    }

    public String getSvrCreateDate() {
        return svrCreateDate;
    }

    public void setSvrCreateDate(String svrCreateDate) {
        this.svrCreateDate = svrCreateDate;
    }

    public Long getSvrDueId() {
        return svrDueId;
    }

    public void setSvrDueId(Long svrDueId) {
        this.svrDueId = svrDueId;
    }

    public String getSvrDueTo() {
        return svrDueTo;
    }

    public void setSvrDueTo(String svrDueTo) {
        this.svrDueTo = svrDueTo;
    }

    public String getSvrDueDate() {
        return svrDueDate;
    }

    public void setSvrDueDate(String svrDueDate) {
        this.svrDueDate = svrDueDate;
    }

    public String getSvrDeal() {
        return svrDeal;
    }

    public void setSvrDeal(String svrDeal) {
        this.svrDeal = svrDeal;
    }

    public Long getSvrDealId() {
        return svrDealId;
    }

    public void setSvrDealId(Long svrDealId) {
        this.svrDealId = svrDealId;
    }

    public String getSvrDealBy() {
        return svrDealBy;
    }

    public void setSvrDealBy(String svrDealBy) {
        this.svrDealBy = svrDealBy;
    }

    public String getSvrDealDate() {
        return svrDealDate;
    }

    public void setSvrDealDate(String svrDealDate) {
        this.svrDealDate = svrDealDate;
    }

    public String getSvrResult() {
        return svrResult;
    }

    public void setSvrResult(String svrResult) {
        this.svrResult = svrResult;
    }

    public Integer getSvrSatisfy() {
        return svrSatisfy;
    }

    public void setSvrSatisfy(Integer svrSatisfy) {
        this.svrSatisfy = svrSatisfy;
    }

    @Override
    public String toString() {
        return "CstService{" +
                "svrId=" + svrId +
                ", svrType='" + svrType + '\'' +
                ", svrTitle='" + svrTitle + '\'' +
                ", svrCustNo='" + svrCustNo + '\'' +
                ", svrCustName='" + svrCustName + '\'' +
                ", svrStatus=" + svrStatus +
                ", svrRequest='" + svrRequest + '\'' +
                ", svrCreateId=" + svrCreateId +
                ", svrCreateBy='" + svrCreateBy + '\'' +
                ", svrCreateDate=" + svrCreateDate +
                ", svrDueId=" + svrDueId +
                ", svrDueTo='" + svrDueTo + '\'' +
                ", svrDueDate=" + svrDueDate +
                ", svrDeal='" + svrDeal + '\'' +
                ", svrDealId=" + svrDealId +
                ", svrDealBy='" + svrDealBy + '\'' +
                ", svrDealDate=" + svrDealDate +
                ", svrResult='" + svrResult + '\'' +
                ", svrSatisfy=" + svrSatisfy +
                '}';
    }
}
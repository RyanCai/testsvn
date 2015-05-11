package com.cyl.bean.pojo;

import java.util.Date;

import org.apache.ibatis.type.Alias;
/**
 * 用户试用记录
 * @author Administrator
 *
 */
@Alias("UserTryLog")
public class UserTryLog {
    private Integer id;

    private Integer userid;

    private Integer applyproductid;

    private Integer applystate;

    private Integer applyresult;

    private Date applytime;

    private String applyreport;

    private Integer isillegal;

    private String reportimg1;

    private String reportimg2;

    private String reportimg3;

    private String reportimg4;

    private String reportimg5;

    private String reportimg6;

    private String orderno;

    private Double paymoney;

    private Double returnmoney;

    private Double redpacketmoney;

    private String tryaccount;

    private String logisticsno;

    private Integer state;

    private Integer sysState;

    private Double sysRate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getApplyproductid() {
        return applyproductid;
    }

    public void setApplyproductid(Integer applyproductid) {
        this.applyproductid = applyproductid;
    }

    public Integer getApplystate() {
        return applystate;
    }

    public void setApplystate(Integer applystate) {
        this.applystate = applystate;
    }

    public Integer getApplyresult() {
        return applyresult;
    }

    public void setApplyresult(Integer applyresult) {
        this.applyresult = applyresult;
    }

    public Date getApplytime() {
        return applytime;
    }

    public void setApplytime(Date applytime) {
        this.applytime = applytime;
    }

    public String getApplyreport() {
        return applyreport;
    }

    public void setApplyreport(String applyreport) {
        this.applyreport = applyreport == null ? null : applyreport.trim();
    }

    public Integer getIsillegal() {
        return isillegal;
    }

    public void setIsillegal(Integer isillegal) {
        this.isillegal = isillegal;
    }

    public String getReportimg1() {
        return reportimg1;
    }

    public void setReportimg1(String reportimg1) {
        this.reportimg1 = reportimg1 == null ? null : reportimg1.trim();
    }

    public String getReportimg2() {
        return reportimg2;
    }

    public void setReportimg2(String reportimg2) {
        this.reportimg2 = reportimg2 == null ? null : reportimg2.trim();
    }

    public String getReportimg3() {
        return reportimg3;
    }

    public void setReportimg3(String reportimg3) {
        this.reportimg3 = reportimg3 == null ? null : reportimg3.trim();
    }

    public String getReportimg4() {
        return reportimg4;
    }

    public void setReportimg4(String reportimg4) {
        this.reportimg4 = reportimg4 == null ? null : reportimg4.trim();
    }

    public String getReportimg5() {
        return reportimg5;
    }

    public void setReportimg5(String reportimg5) {
        this.reportimg5 = reportimg5 == null ? null : reportimg5.trim();
    }

    public String getReportimg6() {
        return reportimg6;
    }

    public void setReportimg6(String reportimg6) {
        this.reportimg6 = reportimg6 == null ? null : reportimg6.trim();
    }

    public String getOrderno() {
        return orderno;
    }

    public void setOrderno(String orderno) {
        this.orderno = orderno == null ? null : orderno.trim();
    }

    public Double getPaymoney() {
        return paymoney;
    }

    public void setPaymoney(Double paymoney) {
        this.paymoney = paymoney;
    }

    public Double getReturnmoney() {
        return returnmoney;
    }

    public void setReturnmoney(Double returnmoney) {
        this.returnmoney = returnmoney;
    }

    public Double getRedpacketmoney() {
        return redpacketmoney;
    }

    public void setRedpacketmoney(Double redpacketmoney) {
        this.redpacketmoney = redpacketmoney;
    }

    public String getTryaccount() {
        return tryaccount;
    }

    public void setTryaccount(String tryaccount) {
        this.tryaccount = tryaccount == null ? null : tryaccount.trim();
    }

    public String getLogisticsno() {
        return logisticsno;
    }

    public void setLogisticsno(String logisticsno) {
        this.logisticsno = logisticsno == null ? null : logisticsno.trim();
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getSysState() {
        return sysState;
    }

    public void setSysState(Integer sysState) {
        this.sysState = sysState;
    }

    public Double getSysRate() {
        return sysRate;
    }

    public void setSysRate(Double sysRate) {
        this.sysRate = sysRate;
    }
}
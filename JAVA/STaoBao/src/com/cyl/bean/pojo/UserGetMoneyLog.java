package com.cyl.bean.pojo;

import java.util.Date;

import org.apache.ibatis.type.Alias;
/**
 * 用户取现记录
 * @author Administrator
 *
 */
@Alias("UserGetMoneyLog")
public class UserGetMoneyLog {
    private Integer id;

    private Integer userid;

    private Date applydate;

    private Double applymoney;

    private String applytoaccount;

    private Integer state;

    private String remark;

    private String sysOperuser;

    private Integer operstate;

    private Date sysOperdate;

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

    public Date getApplydate() {
        return applydate;
    }

    public void setApplydate(Date applydate) {
        this.applydate = applydate;
    }

    public Double getApplymoney() {
        return applymoney;
    }

    public void setApplymoney(Double applymoney) {
        this.applymoney = applymoney;
    }

    public String getApplytoaccount() {
        return applytoaccount;
    }

    public void setApplytoaccount(String applytoaccount) {
        this.applytoaccount = applytoaccount == null ? null : applytoaccount.trim();
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getSysOperuser() {
        return sysOperuser;
    }

    public void setSysOperuser(String sysOperuser) {
        this.sysOperuser = sysOperuser == null ? null : sysOperuser.trim();
    }

    public Integer getOperstate() {
        return operstate;
    }

    public void setOperstate(Integer operstate) {
        this.operstate = operstate;
    }

    public Date getSysOperdate() {
        return sysOperdate;
    }

    public void setSysOperdate(Date sysOperdate) {
        this.sysOperdate = sysOperdate;
    }
}
package com.cyl.bean.pojo;

import java.util.Date;

import org.apache.ibatis.type.Alias;
/**
 * 用户充值
 * @author Administrator
 *
 */
@Alias("UserRecharge")
public class UserRecharge {
    private Integer id;

    private Integer userid;

    private Date chargedate;

    private Double chargemoney;

    private String chargetoaccount;

    private Integer state;

    private String remark;

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

    public Date getChargedate() {
        return chargedate;
    }

    public void setChargedate(Date chargedate) {
        this.chargedate = chargedate;
    }

    public Double getChargemoney() {
        return chargemoney;
    }

    public void setChargemoney(Double chargemoney) {
        this.chargemoney = chargemoney;
    }

    public String getChargetoaccount() {
        return chargetoaccount;
    }

    public void setChargetoaccount(String chargetoaccount) {
        this.chargetoaccount = chargetoaccount == null ? null : chargetoaccount.trim();
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
}
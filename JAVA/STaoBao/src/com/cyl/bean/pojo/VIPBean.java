package com.cyl.bean.pojo;

import org.apache.ibatis.type.Alias;
/**
 * 
 *@category：VIP实体类
 * @author RyanCai
 * @日期：2015年5月4日 下午1:20:31
 */
@Alias("VIPBean")
public class VIPBean {
	
    private int id;

    private String vipname;

    private int isfee;

    private int feetype;

    private int viptype;

    private Double charge;

    private String remark;

    private String sysExefeerule;

    private int sysSdcount;

    private int sysCountingperiod;

    private Double sysUsertxmin;

    private Double sysMerchantsdrate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getVipname() {
        return vipname;
    }

    public void setVipname(String vipname) {
        this.vipname = vipname == null ? null : vipname.trim();
    }

    public int getIsfee() {
        return isfee;
    }

    public void setIsfee(int isfee) {
        this.isfee = isfee;
    }

    public int getFeetype() {
        return feetype;
    }

    public void setFeetype(int feetype) {
        this.feetype = feetype;
    }

    public int getViptype() {
        return viptype;
    }

    public void setViptype(int viptype) {
        this.viptype = viptype;
    }

    public Double getCharge() {
        return charge;
    }

    public void setCharge(Double charge) {
        this.charge = charge;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getSysExefeerule() {
        return sysExefeerule;
    }

    public void setSysExefeerule(String sysExefeerule) {
        this.sysExefeerule = sysExefeerule == null ? null : sysExefeerule.trim();
    }

    public int getSysSdcount() {
        return sysSdcount;
    }

    public void setSysSdcount(int sysSdcount) {
        this.sysSdcount = sysSdcount;
    }

    public int getSysCountingperiod() {
        return sysCountingperiod;
    }

    public void setSysCountingperiod(int sysCountingperiod) {
        this.sysCountingperiod = sysCountingperiod;
    }

    public Double getSysUsertxmin() {
        return sysUsertxmin;
    }

    public void setSysUsertxmin(Double sysUsertxmin) {
        this.sysUsertxmin = sysUsertxmin;
    }

    public Double getSysMerchantsdrate() {
        return sysMerchantsdrate;
    }

    public void setSysMerchantsdrate(Double sysMerchantsdrate) {
        this.sysMerchantsdrate = sysMerchantsdrate;
    }
}
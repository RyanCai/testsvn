package com.cyl.bean.pojo;

import org.apache.ibatis.type.Alias;

/**
 * 购物网站账号
 * @author Administrator
 *
 */
@Alias("ShopWebsiteAccount")
public class ShopWebsiteAccount {
    private Integer id;

    private Integer userid;

    private String swaname;

    private String swaaccount;

    private Integer auditstate;

    private Integer state;

    private Integer systate;

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

    public String getSwaname() {
        return swaname;
    }

    public void setSwaname(String swaname) {
        this.swaname = swaname == null ? null : swaname.trim();
    }

    public String getSwaaccount() {
        return swaaccount;
    }

    public void setSwaaccount(String swaaccount) {
        this.swaaccount = swaaccount == null ? null : swaaccount.trim();
    }

    public Integer getAuditstate() {
        return auditstate;
    }

    public void setAuditstate(Integer auditstate) {
        this.auditstate = auditstate;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getSystate() {
        return systate;
    }

    public void setSystate(Integer systate) {
        this.systate = systate;
    }
}
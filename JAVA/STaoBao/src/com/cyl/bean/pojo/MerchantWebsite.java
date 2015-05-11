package com.cyl.bean.pojo;

import org.apache.ibatis.type.Alias;

/**
 * 商户网站
 * @author Administrator
 *
 */
@Alias("MerchantWebsite")
public class MerchantWebsite {
    private Integer id;

    private Integer merchantid;

    private String sitename;

    private String siteurl;

    private Integer state;

    private Integer sysstate;

    private String remark;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMerchantid() {
        return merchantid;
    }

    public void setMerchantid(Integer merchantid) {
        this.merchantid = merchantid;
    }

    public String getSitename() {
        return sitename;
    }

    public void setSitename(String sitename) {
        this.sitename = sitename == null ? null : sitename.trim();
    }

    public String getSiteurl() {
        return siteurl;
    }

    public void setSiteurl(String siteurl) {
        this.siteurl = siteurl == null ? null : siteurl.trim();
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getSysstate() {
        return sysstate;
    }

    public void setSysstate(Integer sysstate) {
        this.sysstate = sysstate;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}
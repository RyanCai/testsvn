package com.cyl.bean.pojo;

import java.math.BigDecimal;
import java.util.Date;

import org.apache.ibatis.type.Alias;

/**
 * 
 * @category：试用商品实体类
 * @author RyanCai
 * @日期：2015年5月4日 下午1:20:07
 */

@Alias("Product")
public class Product {

	private int id;

	private int merchantid;

	private String shopname;

	private String productname;

	private String productdes;

	private String productposition;

	private BigDecimal oldprice;

	private String productimg;

	private String productkeyword;

	private int count;

	private int testtype;

	private int tryplatform;

	private String producturl;

	private int isdeliver;

	private String bonusamount;//红包金额

	private Double xiadanprice;

	private String secretsignal;

	private int phoneorpc;

	private Double fanliprice;

	private Date starttime;

	private Date endtime;

	private int isfeeensure;

	private Double deposit;

	private Double sysRate;

	private String remark;

	private int applynumber;

	private int getapplynumber;

	private int getproduct;

	private int xiaordertype;

	private String xiaorderrequirement;

	private int state;

	private int sysState;
	
    //分页参数
    private int offset;
    
    private int pageSize;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getMerchantid() {
		return merchantid;
	}

	public void setMerchantid(int merchantid) {
		this.merchantid = merchantid;
	}

	public String getShopname() {
		return shopname;
	}

	public void setShopname(String shopname) {
		this.shopname = shopname == null ? null : shopname.trim();
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname == null ? null : productname.trim();
	}

	public String getProductdes() {
		return productdes;
	}

	public void setProductdes(String productdes) {
		this.productdes = productdes == null ? null : productdes.trim();
	}

	public String getProductposition() {
		return productposition;
	}

	public void setProductposition(String productposition) {
		this.productposition = productposition == null ? null : productposition
				.trim();
	}

	public BigDecimal getOldprice() {
		return oldprice;
	}

	public void setOldprice(BigDecimal oldprice) {
		this.oldprice = oldprice;
	}

	public String getProductimg() {
		return productimg;
	}

	public void setProductimg(String productimg) {
		this.productimg = productimg == null ? null : productimg.trim();
	}

	public String getProductkeyword() {
		return productkeyword;
	}

	public void setProductkeyword(String productkeyword) {
		this.productkeyword = productkeyword == null ? null : productkeyword
				.trim();
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getTesttype() {
		return testtype;
	}

	public void setTesttype(int testtype) {
		this.testtype = testtype;
	}

	public int getTryplatform() {
		return tryplatform;
	}

	public void setTryplatform(int tryplatform) {
		this.tryplatform = tryplatform;
	}

	public String getProducturl() {
		return producturl;
	}

	public void setProducturl(String producturl) {
		this.producturl = producturl == null ? null : producturl.trim();
	}

	public int getIsdeliver() {
		return isdeliver;
	}

	public void setIsdeliver(int isdeliver) {
		this.isdeliver = isdeliver;
	}

	public String getBonusamount() {
		return bonusamount;
	}

	public void setBonusamount(String bonusamount) {
		this.bonusamount = bonusamount == null ? null : bonusamount.trim();
	}

	public Double getXiadanprice() {
		return xiadanprice;
	}

	public void setXiadanprice(Double xiadanprice) {
		this.xiadanprice = xiadanprice;
	}

	public String getSecretsignal() {
		return secretsignal;
	}

	public void setSecretsignal(String secretsignal) {
		this.secretsignal = secretsignal == null ? null : secretsignal.trim();
	}

	public int getPhoneorpc() {
		return phoneorpc;
	}

	public void setPhoneorpc(int phoneorpc) {
		this.phoneorpc = phoneorpc;
	}

	public Double getFanliprice() {
		return fanliprice;
	}

	public void setFanliprice(Double fanliprice) {
		this.fanliprice = fanliprice;
	}

	public Date getStarttime() {
		return starttime;
	}

	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}

	public Date getEndtime() {
		return endtime;
	}

	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}

	public int getIsfeeensure() {
		return isfeeensure;
	}

	public void setIsfeeensure(int isfeeensure) {
		this.isfeeensure = isfeeensure;
	}

	public Double getDeposit() {
		return deposit;
	}

	public void setDeposit(Double deposit) {
		this.deposit = deposit;
	}

	public Double getSysRate() {
		return sysRate;
	}

	public void setSysRate(Double sysRate) {
		this.sysRate = sysRate;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark == null ? null : remark.trim();
	}

	public int getApplynumber() {
		return applynumber;
	}

	public void setApplynumber(int applynumber) {
		this.applynumber = applynumber;
	}

	public int getGetapplynumber() {
		return getapplynumber;
	}

	public void setGetapplynumber(int getapplynumber) {
		this.getapplynumber = getapplynumber;
	}

	public int getGetproduct() {
		return getproduct;
	}

	public void setGetproduct(int getproduct) {
		this.getproduct = getproduct;
	}

	public int getXiaordertype() {
		return xiaordertype;
	}

	public void setXiaordertype(int xiaordertype) {
		this.xiaordertype = xiaordertype;
	}

	public String getXiaorderrequirement() {
		return xiaorderrequirement;
	}

	public void setXiaorderrequirement(String xiaorderrequirement) {
		this.xiaorderrequirement = xiaorderrequirement == null ? null
				: xiaorderrequirement.trim();
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public int getSysState() {
		return sysState;
	}

	public void setSysState(int sysState) {
		this.sysState = sysState;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
}
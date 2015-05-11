package com.cyl.bean.pojo;

import org.apache.ibatis.type.Alias;

/**
 * 
 *@category：用户实体类 
 * @author RyanCai
 * @日期：2015年4月15日 下午2:16:43
 */
@Alias("SysUser")
public class SysUser {
	
    private int id;

    private String username;
    
    private String loginpassword;

    private String getcashpassword;

    private int usertype;//用户类型：1是用户，2是商户，3是管理员

    private int isvip;

    private String idcauditstate;

    private int vipid;

    private int sex;

    private String mail;

    private int recommenduserid;

    private String qq;

    private String phone;

    private String tell;

    private String name;

    private int age;

    private String idcardno;

    private String personimg;

    private String idcardimg1;

    private String idcardimg2;

    private Double availableaccount;

    private Double frozenaccount;

    private Double presentexpaccount;

    private String remark;

    private int state;

    private int sysState;
    
    //分页参数
    private int offset;
    
    private int pageSize;
    
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


    public String getLoginpassword() {
        return loginpassword;
    }

    public void setLoginpassword(String loginpassword) {
        this.loginpassword = loginpassword == null ? null : loginpassword.trim();
    }

    public String getGetcashpassword() {
        return getcashpassword;
    }

    public void setGetcashpassword(String getcashpassword) {
        this.getcashpassword = getcashpassword == null ? null : getcashpassword.trim();
    }

    public Integer getUsertype() {
        return usertype;
    }

    public void setUsertype(Integer usertype) {
        this.usertype = usertype;
    }

    public Integer getIsvip() {
        return isvip;
    }

    public void setIsvip(Integer isvip) {
        this.isvip = isvip;
    }

    public String getIdcauditstate() {
        return idcauditstate;
    }

    public void setIdcauditstate(String idcauditstate) {
        this.idcauditstate = idcauditstate == null ? null : idcauditstate.trim();
    }

    public Integer getVipid() {
        return vipid;
    }

    public void setVipid(Integer vipid) {
        this.vipid = vipid;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail == null ? null : mail.trim();
    }

    public Integer getRecommenduserid() {
        return recommenduserid;
    }

    public void setRecommenduserid(Integer recommenduserid) {
        this.recommenduserid = recommenduserid;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq == null ? null : qq.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getTell() {
        return tell;
    }

    public void setTell(String tell) {
        this.tell = tell == null ? null : tell.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getIdcardno() {
        return idcardno;
    }

    public void setIdcardno(String idcardno) {
        this.idcardno = idcardno == null ? null : idcardno.trim();
    }

    public String getPersonimg() {
        return personimg;
    }

    public void setPersonimg(String personimg) {
        this.personimg = personimg == null ? null : personimg.trim();
    }

    public String getIdcardimg1() {
        return idcardimg1;
    }

    public void setIdcardimg1(String idcardimg1) {
        this.idcardimg1 = idcardimg1 == null ? null : idcardimg1.trim();
    }

    public String getIdcardimg2() {
        return idcardimg2;
    }

    public void setIdcardimg2(String idcardimg2) {
        this.idcardimg2 = idcardimg2 == null ? null : idcardimg2.trim();
    }

    public Double getAvailableaccount() {
        return availableaccount;
    }

    public void setAvailableaccount(Double availableaccount) {
        this.availableaccount = availableaccount;
    }

    public Double getFrozenaccount() {
        return frozenaccount;
    }

    public void setFrozenaccount(Double frozenaccount) {
        this.frozenaccount = frozenaccount;
    }

    public Double getPresentexpaccount() {
        return presentexpaccount;
    }

    public void setPresentexpaccount(Double presentexpaccount) {
        this.presentexpaccount = presentexpaccount;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
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

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setUsertype(int usertype) {
		this.usertype = usertype;
	}

	public void setIsvip(int isvip) {
		this.isvip = isvip;
	}

	public void setVipid(int vipid) {
		this.vipid = vipid;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public void setRecommenduserid(int recommenduserid) {
		this.recommenduserid = recommenduserid;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public void setState(int state) {
		this.state = state;
	}

	public void setSysState(int sysState) {
		this.sysState = sysState;
	}
}
package com.cyl.bean.pojo;

import org.apache.ibatis.type.Alias;

/**
 * 系统所有资金
 * @author Administrator
 *
 */
@Alias("SysAllMoney")
public class SysAllMoney {
    private Double inputmoney;

    private Double outputmoney;

    private Double allmoney;

    public Double getInputmoney() {
        return inputmoney;
    }

    public void setInputmoney(Double inputmoney) {
        this.inputmoney = inputmoney;
    }

    public Double getOutputmoney() {
        return outputmoney;
    }

    public void setOutputmoney(Double outputmoney) {
        this.outputmoney = outputmoney;
    }

    public Double getAllmoney() {
        return allmoney;
    }

    public void setAllmoney(Double allmoney) {
        this.allmoney = allmoney;
    }
}
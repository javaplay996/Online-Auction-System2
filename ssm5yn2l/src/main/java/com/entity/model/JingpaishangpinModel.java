package com.entity.model;

import com.entity.JingpaishangpinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 竞拍商品
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-03-20 12:57:51
 */
public class JingpaishangpinModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 数量
	 */
	
	private Integer shuliang;
		
	/**
	 * 起拍价
	 */
	
	private String qipaijia;
		
	/**
	 * 商品描述
	 */
	
	private String shangpinmiaoshu;
		
	/**
	 * 发布日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date faburiqi;
		
	/**
	 * 拍卖账号
	 */
	
	private String paimaizhanghao;
		
	/**
	 * 姓名
	 */
	
	private String xingming;
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
				
	
	/**
	 * 设置：数量
	 */
	 
	public void setShuliang(Integer shuliang) {
		this.shuliang = shuliang;
	}
	
	/**
	 * 获取：数量
	 */
	public Integer getShuliang() {
		return shuliang;
	}
				
	
	/**
	 * 设置：起拍价
	 */
	 
	public void setQipaijia(String qipaijia) {
		this.qipaijia = qipaijia;
	}
	
	/**
	 * 获取：起拍价
	 */
	public String getQipaijia() {
		return qipaijia;
	}
				
	
	/**
	 * 设置：商品描述
	 */
	 
	public void setShangpinmiaoshu(String shangpinmiaoshu) {
		this.shangpinmiaoshu = shangpinmiaoshu;
	}
	
	/**
	 * 获取：商品描述
	 */
	public String getShangpinmiaoshu() {
		return shangpinmiaoshu;
	}
				
	
	/**
	 * 设置：发布日期
	 */
	 
	public void setFaburiqi(Date faburiqi) {
		this.faburiqi = faburiqi;
	}
	
	/**
	 * 获取：发布日期
	 */
	public Date getFaburiqi() {
		return faburiqi;
	}
				
	
	/**
	 * 设置：拍卖账号
	 */
	 
	public void setPaimaizhanghao(String paimaizhanghao) {
		this.paimaizhanghao = paimaizhanghao;
	}
	
	/**
	 * 获取：拍卖账号
	 */
	public String getPaimaizhanghao() {
		return paimaizhanghao;
	}
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
			
}

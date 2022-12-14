package com.sjy.buisness.camp.vo;

import java.security.Timestamp;
import java.sql.Date;

public class BsCampZoneVo {

	private String zoneNo ; //구역번호
	private String zoneStayMax ; //최대숙박인원
	private String zonePrice ; //가격
	private String zoneName ; //구역이름
	private String zoneNor ; //일별예약가능수
	private String zoneImg ; //구역이미지
	
	public BsCampZoneVo() {}

	
	
	public BsCampZoneVo(String zoneNo, String zoneStayMax, String zonePrice, String zoneName, String zoneNor, String zoneImg) {
		super();
		this.zoneNo = zoneNo;
		this.zoneStayMax = zoneStayMax;
		this.zonePrice = zonePrice;
		this.zoneName = zoneName;
		this.zoneNor = zoneNor;
		this.zoneImg = zoneImg;
	}



	public String getZoneNo() {
		return zoneNo;
	}

	public void setZoneNo(String zoneNo) {
		this.zoneNo = zoneNo;
	}

	public String getZoneStayMax() {
		return zoneStayMax;
	}

	public void setZoneStayMax(String zoneStayMax) {
		this.zoneStayMax = zoneStayMax;
	}

	public String getZonePrice() {
		return zonePrice;
	}

	public void setZonePrice(String zonePrice) {
		this.zonePrice = zonePrice;
	}

	public String getZoneName() {
		return zoneName;
	}

	public void setZoneName(String zoneName) {
		this.zoneName = zoneName;
	}

	public String getZoneNor() {
		return zoneNor;
	}

	public void setZoneNor(String zoneNor) {
		this.zoneNor = zoneNor;
	}
	
	
	public String getZoneImg() {
		return zoneImg;
	}



	public void setZoneImg(String zoneImg) {
		this.zoneImg = zoneImg;
	}






	@Override
	public String toString() {
		return "BsCampZoneVo [zoneNo=" + zoneNo + ", zoneStayMax=" + zoneStayMax + ", zonePrice=" + zonePrice
				+ ", zoneName=" + zoneName + ", zoneNor=" + zoneNor + ", zoneImg=" + zoneImg 
				+ "]";
	}

	
	


	
	
	
	
}

package zhuanli.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

public class SaleGood {
	private long patentId;
	private String patentName;
	private int price;
	private FirstColumn firstColumn ;
	private SecondColumn secondColumn ;
	private int status;
	private int transactionType;
	private Date addDate;
	private Date transactionDate;
	private User user ;
	private int recommendStatus;
	private String transferor;
	private String patentImageUrl;
	private String appNo;
	private String appPerson;
	@DateTimeFormat(iso=ISO.DATE_TIME,pattern="yyyy-MM-dd")
	private Date appDate;
	private PatentType patentType;
	@DateTimeFormat(iso=ISO.DATE_TIME,pattern="yyyy-MM-dd")
	private Date publishDate;
	
	public String getAppNo() {
		return appNo;
	}
	public void setAppNo(String appNo) {
		this.appNo = appNo;
	}
	public String getAppPerson() {
		return appPerson;
	}
	public void setAppPerson(String appPerson) {
		this.appPerson = appPerson;
	}
	public Date getAppDate() {
		return appDate;
	}
	public void setAppDate(Date appDate) {
		this.appDate = appDate;
	}
	public PatentType getPatentType() {
		return patentType;
	}
	public void setPatentType(PatentType patentType) {
		this.patentType = patentType;
	}
	public Date getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}
	public long getPatentId() {
		return patentId;
	}
	public void setPatentId(long patentId) {
		this.patentId = patentId;
	}
	public String getPatentName() {
		return patentName;
	}
	public void setPatentName(String patentName) {
		this.patentName = patentName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public FirstColumn getFirstColumn() {
		return firstColumn;
	}
	public void setFirstColumn(FirstColumn firstColumn) {
		this.firstColumn = firstColumn;
	}
	public SecondColumn getSecondColumn() {
		return secondColumn;
	}
	public void setSecondColumn(SecondColumn secondColumn) {
		this.secondColumn = secondColumn;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getTransactionType() {
		return transactionType;
	}
	public void setTransactionType(int transactionType) {
		this.transactionType = transactionType;
	}
	public Date getAddDate() {
		return addDate;
	}
	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}
	public Date getTransactionDate() {
		return transactionDate;
	}
	public void setTransactionDate(Date transactionDate) {
		this.transactionDate = transactionDate;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getRecommendStatus() {
		return recommendStatus;
	}
	public void setRecommendStatus(int recommendStatus) {
		this.recommendStatus = recommendStatus;
	}
	public String getTransferor() {
		return transferor;
	}
	public void setTransferor(String transferor) {
		this.transferor = transferor;
	}
	public String getPatentImageUrl() {
		return patentImageUrl;
	}
	public void setPatentImageUrl(String patentImageUrl) {
		this.patentImageUrl = patentImageUrl;
	}
	
}

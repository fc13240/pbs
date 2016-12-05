package zhuanli.domain;

import java.util.Date;

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

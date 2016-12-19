package zhuanli.domain;

import java.util.Date;

import org.bson.types.ObjectId;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

public class MongoPatent {
	private ObjectId id;
	private String appNo;
	private String publishNo;
	private String patentName;
	private String patentType;
	@DateTimeFormat(iso = ISO.DATE_TIME, pattern = "yyyy-MM-dd")
	private Date publishDate;
	@DateTimeFormat(iso = ISO.DATE_TIME, pattern = "yyyy-MM-dd")
	private Date appDate;
	private String appPerson;
	private String inventPerson;
	private String address;
	private String patentAbstract;
	private String proxyOrg;
	private String proxyPerson;
	private String ipc;
	private String priority;
	private String appType;
	private String status;
	private double appScore;
	private int appScoreCount;
	private String personLink;
	private String proxyOrgLink;
	private String storeLink;
	private String patentPic;
	public double getAppScore() {
		return appScore;
	}

	public void setAppScore(double appScore) {
		this.appScore = appScore;
	}

	public int getAppScoreCount() {
		return appScoreCount;
	}

	public void setAppScoreCount(int appScoreCount) {
		this.appScoreCount = appScoreCount;
	}
	
	public double getAvgScore() {
//		if(appScore==0){
//			return 
//		}
		return appScore / appScoreCount;
	}

	public ObjectId getId() {
		return id;
	}

	public void setId(ObjectId id) {
		this.id = id;
	}

	public String getAppNo() {
		return appNo;
	}

	public void setAppNo(String appNo) {
		this.appNo = appNo;
	}

	public String getPublishNo() {
		return publishNo;
	}

	public void setPublishNo(String publishNo) {
		this.publishNo = publishNo;
	}

	public String getPatentName() {
		return patentName;
	}

	public void setPatentName(String patentName) {
		this.patentName = patentName;
	}

	public String getPatentType() {
		return patentType;
	}

	public void setPatentType(String patentType) {
		this.patentType = patentType;
	}

	public Date getPublishDate() {
		return publishDate;
	}

	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}

	public Date getAppDate() {
		return appDate;
	}

	public void setAppDate(Date appDate) {
		this.appDate = appDate;
	}

	public String getAppPerson() {
		return appPerson;
	}
	
	public String[] getAppPersonArray() {
		if(appPerson!=null){
			return appPerson.split(";");
		}
		
		return new String[]{};
		
	}

	public void setAppPerson(String appPerson) {
		this.appPerson = appPerson;
	}

	public String getInventPerson() {
		return inventPerson;
	}
	
	public String[] getInventPersonArray() {
		if(inventPerson!=null){
			return inventPerson.split(";");
		}
		
		return new String[]{};
		
	}

	public void setInventPerson(String inventPerson) {
		this.inventPerson = inventPerson;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPatentAbstract() {
		return patentAbstract;
	}

	public void setPatentAbstract(String patentAbstract) {
		this.patentAbstract = patentAbstract;
	}

	public String getProxyOrg() {
		return proxyOrg;
	}

	public void setProxyOrg(String proxyOrg) {
		this.proxyOrg = proxyOrg;
	}

	public String getProxyPerson() {
		return proxyPerson;
	}
	public String[] getProxyPersonArray() {
		if(proxyPerson!=null){
			return proxyPerson.split(";");
		}
		return new String[]{};
	}
	public void setProxyPerson(String proxyPerson) {
		this.proxyPerson = proxyPerson;
	}

	public String getIpc() {
		if(ipc!=null){
			return ipc.split(";")[0];
			
		}
		return ipc;
	}

	public void setIpc(String ipc) {
		this.ipc = ipc;
	}

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	public String getAppType() {
		return appType;
	}

	public void setAppType(String appType) {
		this.appType = appType;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	

	public String getPersonLink() {
		return personLink;
	}

	public void setPersonLink(String personLink) {
		this.personLink = personLink;
	}

	public String getProxyOrgLink() {
		return proxyOrgLink;
	}

	public void setProxyOrgLink(String proxyOrgLink) {
		this.proxyOrgLink = proxyOrgLink;
	}

	public String getStoreLink() {
		return storeLink;
	}

	public void setStoreLink(String storeLink) {
		this.storeLink = storeLink;
	}

	public String getPatentPic() {
		return patentPic;
	}

	public void setPatentPic(String patentPic) {
		this.patentPic = patentPic;
	}

	@Override
	public String toString() {
		return "Patent [id=" + id + ", appNo=" + appNo + ", publishNo=" + publishNo + ", patentName=" + patentName
				+ ", patentType=" + patentType + ", publishDate=" + publishDate + ", appDate=" + appDate
				+ ", appPerson=" + appPerson + ", inventPerson=" + inventPerson + ", address=" + address
				+ ", patentAbstract=" + patentAbstract + ", proxyOrg=" + proxyOrg + ", proxyPerson=" + proxyPerson
				+ ", ipc=" + ipc + ", priority=" + priority + ", appType=" + appType + ", status=" + status
				+ ", personLink=" + personLink + ", proxyOrgLink=" + proxyOrgLink +", storeLink= "+ storeLink+", patentPic= "+ patentPic+"]";
	}
	
	
}

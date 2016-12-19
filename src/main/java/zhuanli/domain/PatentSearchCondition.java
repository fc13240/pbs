package zhuanli.domain;



public class PatentSearchCondition {

	private String keyword;
	private Page page;
	private int userId;
	private Integer secondColumnId;
	private String appNo;
	
	
	public Integer getSecondColumnId() {
		return secondColumnId;
	}
	public void setSecondColumnId(Integer secondColumnId) {
		this.secondColumnId = secondColumnId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	
	
	public String getAppNo() {
		return appNo;
	}
	public void setAppNo(String appNo) {
		this.appNo = appNo;
	}
	
	@Override
	public String toString() {
		String keywordStr = keyword == null ? "" : keyword;
		Integer secondColumnIdStr =secondColumnId== null ? 1:secondColumnId;
		String appNoStr=appNo == null? "":appNo;
		
		return "&keyword=" + keywordStr +"&secondColumnId="+secondColumnIdStr+"&appNo="+appNoStr;
	}
}

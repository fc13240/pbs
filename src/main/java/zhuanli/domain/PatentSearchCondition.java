package zhuanli.domain;



public class PatentSearchCondition {

	private String keyword;
	private Page page;
	private int userId;
	private Integer secondColumnId;
	
	
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
	
	@Override
	public String toString() {
		String keywordStr = keyword == null ? "" : keyword;
		Integer secondColumnIdStr =secondColumnId== null ? 1:secondColumnId;
		
		return "&keyword=" + keywordStr +"&secondColumnId="+secondColumnIdStr;
	}
}

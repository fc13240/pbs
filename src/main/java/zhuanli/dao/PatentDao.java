package zhuanli.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import zhuanli.domain.ColumnCount;
import zhuanli.domain.FirstColumn;
import zhuanli.domain.GoodsDetail;
import zhuanli.domain.Notice;
import zhuanli.domain.Page;
import zhuanli.domain.Patent;
import zhuanli.domain.PatentSearchCondition;
import zhuanli.domain.SaleGood;



public interface PatentDao {

	List<Patent> getSecoundColumn(int  patent_column_id);
	
	List<Patent> getSecoundColumnPage(Page  page);
	
	Patent getPatentById(long patent_id);

	List<Patent> getSonList(int i);

	int getSonListCount(int j);

	List<FirstColumn> selectAllColumns();

	List<Patent> getSecoundPatent(int  patent_second_column);
	
	List<Patent> getSecoundPatentPage(Page  page);

	List<ColumnCount> getColumnCount();

	List<FirstColumn> selectAllPatents();

	int getFirstId(int patent_second_column_id);

	String getCurrentTypeName(int patent_second_column_id);
	
	List<Patent> searchPatents(PatentSearchCondition patentSearchCondition);
	
	int searchPatentsCount(PatentSearchCondition patentSearchCondition);

	List<Notice> getNoticeByPatentno(long patent_id);

	Notice getNoticeById(int noticeId);

	List<Patent> getAllPatents();

	List<Patent> getPatents();
	
	List<Patent> getPatentsByShopType(int shopType,Page page);
	
	int getPatentsByShopTypeCount(int shopType);
	
	List<GoodsDetail> getPatentByFirstColumn(int id);
	
	List<SaleGood> getAlreadySalePatent(Page page);
	
	int getAlreadySalePatentCount();
	
	List<SaleGood> getSearchAlreadySalePatent(PatentSearchCondition patentSearchCondition);
	
	int getSearchAlreadySalePatentCount(PatentSearchCondition patentSearchCondition);
	
	SaleGood getAlreadSalePatentDetail(long patentId);
	
	List<GoodsDetail> selectRecommendPatents();
	
	List<SaleGood> getPatentListBySecondColumnId(int secondColumnId,Page page);
	
	int getPatentListBySecondColumnIdCount(int secondColumnId);
	
	List<SaleGood> getSearchPatentListBySecondColumnId(PatentSearchCondition patentSearchCondition);
	
	int getSearchPatentListBySecondColumnIdCount(PatentSearchCondition patentSearchCondition);
}

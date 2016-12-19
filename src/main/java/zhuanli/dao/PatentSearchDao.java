package zhuanli.dao;

import zhuanli.domain.MongoPatent;

public interface PatentSearchDao {
	
	MongoPatent findMongoPatentByAppNo(String appNO);
	
}
	
package zhuanli.dao.imp;
import static com.mongodb.client.model.Filters.eq;

import java.util.ArrayList;

import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

import zhuanli.dao.PatentSearchDao;
import zhuanli.domain.MongoPatent;

public class PatentSearchDaoImpl implements PatentSearchDao{
//	private static final int DEFAULT_SLOP = 5;
//	private static final int DEFAULT_EXACT_MATCH_MIN_LENGTH = 3;
	private MongoClient mongoClient;

	public PatentSearchDaoImpl(MongoClient mongoClient) {
		this.mongoClient = mongoClient;
	}
	
	@Override
	public  MongoPatent findMongoPatentByAppNo(String appNo){	
		MongoDatabase db = mongoClient.getDatabase("sopatent");
		MongoCollection<Document> collection = db.getCollection("patent");
//		Document doc= collection.find(in("appNo", appNo)).first();
		Document doc= collection.find(eq("appNo",appNo)).first();
		if(doc != null){
		return convertDocToMongoPatent(doc);
		}else{
			return null;
		}
	}
	
	private MongoPatent convertDocToMongoPatent(Document doc) {
		MongoPatent MongoPatent = new MongoPatent();
		MongoPatent.setId(doc.getObjectId("_id"));
		MongoPatent.setAppNo(doc.getString("appNo"));
		MongoPatent.setPublishNo(doc.getString("publishNo"));
		MongoPatent.setPatentName(doc.getString("patentName"));
		MongoPatent.setPatentType(doc.getString("patentType"));
		MongoPatent.setPublishDate(doc.getDate("publishDate"));
		MongoPatent.setAppDate(doc.getDate("appDate"));
		MongoPatent.setAppPerson(array2Str(doc, "appPerson"));
		MongoPatent.setInventPerson(array2Str(doc, "inventPerson"));
		MongoPatent.setAddress(getSubField(doc, "address", "fullAddress"));
		MongoPatent.setPatentAbstract(doc.getString("abstract"));
		MongoPatent.setProxyOrg(doc.getString("proxyOrg"));
		MongoPatent.setProxyPerson(array2Str(doc, "proxyPerson"));
		MongoPatent.setIpc(getSubField(doc, "ipc", "fullIpc"));
		MongoPatent.setPriority(doc.getString("priority"));
		MongoPatent.setAppType(doc.getString("appType"));
		MongoPatent.setStatus(doc.getString("status"));
		System.out.println(MongoPatent.getPatentAbstract());
		if(doc.getInteger("appScoreCount")==null){
			MongoPatent.setAppScoreCount(1);
		}else {
			MongoPatent.setAppScoreCount(doc.getInteger("appScoreCount"));
		}
		if(doc.getDouble("appScore")==null){
			MongoPatent.setAppScore(5);
		}else {
			MongoPatent.setAppScore(doc.getDouble("appScore"));
		}
		return MongoPatent;
	}
	
	@SuppressWarnings("unchecked")
	private String array2Str(Document doc, String fieldName) {
		ArrayList<String> values = doc.get(fieldName, ArrayList.class);
		if (values != null && !values.isEmpty()) {
			return String.join(";", values);
		}
		return null;
	}
	
	private String getSubField(Document doc, String parentField, String subField) {
		Document subDoc = doc.get(parentField, Document.class);
		if (subDoc == null) {
			return null;
		}
		return subDoc.getString(subField);
	}

	
}	

  
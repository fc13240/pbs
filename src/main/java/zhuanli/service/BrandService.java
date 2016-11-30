package zhuanli.service;

import zhuanli.domain.Brand;
import zhuanli.domain.BrandCategory;
import zhuanli.domain.BrandSearchCondition;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import zhuanli.domain.Page;

public interface BrandService {

	int getBrandsCountByCategory(int categoryId);

	List<Brand> getBrandsByCategory(int categoryId, Page page);

	Brand getbrandDetail(int brandId);

	BrandCategory getBrandCategoryById(int categoryId);

	String generateBrandsExportExcel(int categoryId, String exportExcelName) throws IOException;

	List<Brand> getRecommendBrands(int brandId);

	int getAllBrandsCount();

	List<Brand> getAllBrandsList(Page page);

	Map<String, List<Brand>> getIndexRecommendBrands();
	
	List<Brand> getSearchBrandsList(BrandSearchCondition brandSearchCondition);
	
	int getSearchBrandsCount(BrandSearchCondition brandSearchCondition);

	List<Brand> getIndexSlideBrands();


}

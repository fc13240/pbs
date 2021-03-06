package zhuanli.dao;

import java.util.List;

import zhuanli.domain.Brand;
import zhuanli.domain.BrandCategory;
import zhuanli.domain.BrandSearchCondition;
import zhuanli.domain.Page;

public interface BrandDao {

	int getBrandsCountByCategory(int categoryId);

	List<Brand> getBrandsByCategory(int categoryId, Page page);

	Brand getbrandDetail(int brandId);

	BrandCategory getBrandCategoryById(int categoryId);

	List<Brand> getAllBrandsByCategory(int categoryId);

	List<Brand> getRecommendBrands(int brandId);

	int getAllBrandsCount();

	List<Brand> getAllBrandsList(Page page);

	List<Brand> getIndexRecommendBrands();
	
	List<Brand> getSearchBrandsList(BrandSearchCondition brandSearchCondition);
	
	int getSearchBrandsCount(BrandSearchCondition brandSearchCondition);

	List<Brand> getIndexSlideBrands();

	List<Brand> getAllBrands();
	
	List<Brand> getAlreadySaleBrands(Page page);
	
	int getAlreadyBrandsCount();

	List<Brand> getSearchAlreadySaleBrands(BrandSearchCondition brandSearchCondition);
	
	int getSearchAlreadySaleBrandsCount(BrandSearchCondition brandSearchCondition);

	int getBrandsCountBetweenRange(int startIndex);

	List<Brand> getBrandsBetweenRange(int startIndex, Page page);

}
